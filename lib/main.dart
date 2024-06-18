import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Dicee",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 4;
  int rightDiceNumber = 1;

  void changeDice(){

    setState(() {
      leftDiceNumber = (Random().nextInt(6)) + 1;
      rightDiceNumber = (Random().nextInt(6)) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                      changeDice();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png")
              )
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                    changeDice();
                },
                child: Image.asset("images/dice$rightDiceNumber.png")
            ),
          )
        ],
      ),
    );
  }
}






