Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A6314B73
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175234; cv=none; b=B/+etB7opoKZFbpYAw18TJvdYoIGFmIfyOWDS8VDdhLUPqfoa/wujelrmC63lVOgxRnthu0GU3QZl9Km8MXRvYbRXTUGNj/Q8tPS84eCqqkw3wScheaPdRJWQgv7rJdvemf9mW1gdleA1LgfucjrTnrWM8RGWl4s3HDDtzahXCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175234; c=relaxed/simple;
	bh=B57iTNKD1zkqHvzHCJSyTheZHtaQGa/Xl3iRLX6IxKU=;
	h=To:Subject:From:Message-Id:Date; b=bWcgxX3Yn2Wai6GMWCOzUbZ1SA9JzgnkjTO1mNdUCGHPyv2vmb4a4Y7WPv623UO63sFcEZl2Rgo5BSvaoQ++BgD3KWvRJK16UHTmBjFpp29AO8SFywfJOfsk1mr3CF1cFOoujDXLHADaOrc8xQu6mdAgCCI4/OjXh+feJ0RFxl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCxoaA5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCxoaA5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8538C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769175233;
	bh=B57iTNKD1zkqHvzHCJSyTheZHtaQGa/Xl3iRLX6IxKU=;
	h=To:Subject:From:Date:From;
	b=PCxoaA5QD4ZUH1utMPaIqU8D49aqTIxY9zxM1qkQhRx8c5NeA7HoKSIi6jxQ0+itD
	 Bq+MPo5llJzkdrTPzZURnnXHr7sprovUDKSQIQUicVVxjtLYC+rWuAP9WX0cI+2DzU
	 Ff200hqr4//61QP3D0YL1l5eI+X8Mv0a7D9MkxvxfPENzauLNvFS7T8bLiIHjAu+fl
	 k25i8LXT72qpETZ6ntfMwBXi7I0iHps2hqJjpQRCVd6+GE3PDTF46XHAtCN0OdkXnd
	 9J6nY6AsSPg+Wc3fhUO/ISVT46+S0diLfEJuO8uPNpCGlPeqTyxT/jKvohiu/y1Y4/
	 P7xj8X1fcVXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D58D74ECF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917523359.28007.14374144650669417441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ded960b638d6e8c65f21c0b1a464daa80292a096c18451f79db61181205e9
Date: Fri, 23 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769175233
