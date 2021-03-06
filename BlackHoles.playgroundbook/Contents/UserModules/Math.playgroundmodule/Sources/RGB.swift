import UIKit
extension UIColor {
    public func rgb() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = fRed
            let iGreen = fGreen
            let iBlue = fBlue
            let iAlpha = fAlpha
            
            return (red: iRed, green: iGreen, blue: iBlue, alpha: iAlpha)
        } else {
            // Could not extract RGBA components:
            return nil
        }
    }
}
