import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundName) {
    final player = AudioCache();
    player.play('note$soundName.wav');
  }

  Expanded soundButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                soundButton(color: Colors.red, soundNumber: 1),
                soundButton(color: Colors.orange, soundNumber: 2),
                soundButton(color: Colors.yellow, soundNumber: 3),
                soundButton(color: Colors.lightGreen, soundNumber: 4),
                soundButton(color: Colors.teal, soundNumber: 5),
                soundButton(color: Colors.blue, soundNumber: 6),
                soundButton(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
