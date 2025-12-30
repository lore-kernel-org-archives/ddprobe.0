Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51042FE044
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767083033; cv=none; b=t3ARFFroDsbD6ydVsnrh+9XhCGnwdRg6uv9keD53E+C+wsdBagX8iNhz8lYDpBaqS/8Vl93o9KQgm3fHdpLYsDr3aUo16YZBA3UK3tYCifUqBi5jffQiNetCbTDkPGGMFIIJhbY/KF0DbvT9BEWZv6TrjQRO9jQXZ7OIHZvHRMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767083033; c=relaxed/simple;
	bh=IWIGk+oL13Of47TmCQjGG17exRlDIeIj1pFZMGWSi4E=;
	h=To:Subject:From:Message-Id:Date; b=ITCECtUyzRXTCYRGUISf7ITlHkeWXF/LpWNcwxPm0BL/buTGn1e4ou72TSlSkZ41GFHtJlj6dKTr123wQy2mBaQrbiujSRezlPG0MrfpkSCRLEK6xCtFJGTV580cJZo1BSVI9uQ7mRuuAO+KoKjw+9J4v5sssBZLt9ANWzV11AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZW0RI8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZW0RI8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF0C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767083033;
	bh=IWIGk+oL13Of47TmCQjGG17exRlDIeIj1pFZMGWSi4E=;
	h=To:Subject:From:Date:From;
	b=pZW0RI8BoHkfuos0kPmzKFmMKAj3zvm/ovjPE/nJ2zZ5w/EqJD9RgBjm9eCDRH4HL
	 Q0nCVGZ+b3U+RO4z6zTSE3nSyvuZ5uQjLOqib3kPcz5Oj7+saPtTLAsMrml7H8J78j
	 rfbva8G1pjnkbhTRM5Q2PitfNdMfXCdDjO7SWnKWyt1hU6CryrjWFWRwVvMpt+N7eC
	 3D4sxDjVu/wbJFPqQOp1vRNMXZPNOihlL3NoAu2g1gfLeH7FR7X/nwtUETDidFxalK
	 dmKrVX1LYm6kunw/6u3nj7t73FeUP1ehsR1YgnpbwTAGtfMYChAaLCiZ7d+6ZVSZEk
	 zPvWT95fBzkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC2E94109
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708303359.10591.13606050182753283563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e54717437d3b4d0ad057c0333929a74782468d7217dfe0330cc37dee4df396
Date: Tue, 30 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767083033
