import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          title: const Center(child: Text('Programa Layout')),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Dimensões baseadas no tamanho da tela
            final double containerHeight = constraints.maxHeight * 0.5;
            final double containerWidth = constraints.maxWidth * 0.6;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: constraints.maxHeight * 0.02), // Espaço relativo
                Center(
                  child: Container(
                    height: containerHeight, // Altura relativa
                    width: containerWidth, // Largura relativa
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 121, 79, 173),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10,
                          offset: Offset(
                            constraints.maxWidth * 0.01,
                            constraints.maxHeight * 0.01,
                          ), // Sombra relativa
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Meu Aplicativo',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.02), // Espaço relativo
                const Text(
                  'Layout Inferior',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
