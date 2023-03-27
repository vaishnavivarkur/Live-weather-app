import 'package:clima/screens/loading_screen.dart';
import 'package:geolocator/geolocator.dart';

class Location extends LoadingScreen {
  double lat;
  double lon;

  Future<void> getCurrentLocation() async {
    try {
      //LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lon = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
