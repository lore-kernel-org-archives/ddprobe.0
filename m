Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6D918C322
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748078394; cv=none; b=XYN6/0UvYxJ9i40I5Nd2wrNjMMzq0nt2kqt/vN1F5OXGo/bFl8jSzVZPTURk+pk3z5ZBd3TlLUDqwSYNxlLdpv7OPZUiJRSsQlnd8M29PD2s2ok77o/RKQUGma1UKiCchOk4gR2nRGpAZjGAVq55z63iStE+kPthsmaDm7TnWSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748078394; c=relaxed/simple;
	bh=L7mQgWJVVuQ5ZP0BjMyU3aRX3WE21OtjepcIxtYmBRI=;
	h=To:Subject:From:Message-Id:Date; b=RZIwIBM0XvTiq70nQyN7DK1TCYBKJq9PgiMip82dUG/jWE22AqTNNNvjm0cPJbQzMruKtyjeP39RaD+5qr2fd99mxkDpsbk7Kdj1shwghQEwIL5XaQBqViwDbU1aLBbhdMlrZvNcq7JMbp+tVI6iLPu6ZV9xTRVWH82OVOscM1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch5Sr/zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch5Sr/zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99967C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748078393;
	bh=L7mQgWJVVuQ5ZP0BjMyU3aRX3WE21OtjepcIxtYmBRI=;
	h=To:Subject:From:Date:From;
	b=Ch5Sr/zB1B8Yw6jQrtQmtfkcShHQDp4oHrz12i850MIwAwD1ITeDpS/qfdNZkZ605
	 TCL3dbda/UwZ0jCt80SsVAEBGT6ZFrDZrwLViEXtqmMet/CDufT2wIhvZXGtNeapI6
	 EBqQ0/BXXT7HJ9aeQ7YUZiUk78hG8UUCX3uY5O1jQzS64kIA2ibWEyIzlk1HEGWHs7
	 xLYkmkXhTevg5U9C4asOGydAojaCiwZEnKQxf/aBmRJhwmPyGRGsbb4ECzWMdRJrcM
	 PM2WbszXkJypzzrYjDhOwjTG2HpKM9HQfGKhh/WkgICIuitbFxkMxBtrnZNdSymNCV
	 M+xhQDr+OG/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90688C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807839358.18261.7522845653870406657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9ea5d4017ac3f80556f1f057d294f0f94ea7c5b4f54e709395abeeb1f57fb8
Date: Sat, 24 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748078393
