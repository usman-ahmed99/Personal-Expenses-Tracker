import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
              width: double.infinity,
              child: Column(
                  children: transactions.map((transaction) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )
                      ),  
                      padding: EdgeInsets.all(10),
                      child: 
                      Text(transaction.amount.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple
                      )),),
                      Column(
                        children: [
                          Text(transaction.title),
                          Text(transaction.date.toString())
                        ],
                      )
                    ],
                  ),
                );
                // return Card(child: Text(transaction.title));
              }).toList())),
        ],
      ),
    );
  }
}
