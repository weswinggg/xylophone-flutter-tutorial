import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, color: Colors.red),
              buildKey(num: 2, color: Colors.orange),
              buildKey(num: 3, color: Colors.yellow),
              buildKey(num: 4, color: Colors.lightGreen),
              buildKey(num: 5, color: Colors.green),
              buildKey(num: 6, color: Colors.blue),
              buildKey(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
