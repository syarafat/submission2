import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 140,
                width: 140,
              ),
            ),
            SizedBox(width: 10.0),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan logika untuk menangani pencarian
            },
          ),
          TextButton(
            onPressed: () {
              // Tambahkan logika untuk tombol login
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              // Tambahkan logika untuk tombol signup
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Hero(
                  tag: 'hero',
                  child: Image.asset(
                    'assets/images/hero.jpg',
                    fit: BoxFit.cover,
                    height: 400,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt '
                'mollit anim id est laborum.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Text(
                  'Judul Trending',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: ImageWithTitleAndDescription(
                      title: 'Gambar 1',
                      description: 'Deskripsi Gambar 1',
                      imagePath: 'assets/images/hero.jpg',
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: ImageWithTitleAndDescription(
                      title: 'Gambar 2',
                      description: 'Deskripsi Gambar 2',
                      imagePath: 'assets/images/hero.jpg',
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: ImageWithTitleAndDescription(
                      title: 'Gambar 3',
                      description: 'Deskripsi Gambar 3',
                      imagePath: 'assets/images/hero.jpg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk tombol "Selengkapnya"
                },
                child: Text('Selengkapnya'),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Trending'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Wisata'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWithTitleAndDescription extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  ImageWithTitleAndDescription({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          height: 100,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.0),
        Text(description),
      ],
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'hero',
            child: Image.asset(
              'assets/images/hero.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
