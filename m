Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B821B532F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751699994; cv=none; b=fizMKa6oAYGlKx64DsRTPde8wUY50Jx5cFZB6vCzFhOTI4isUmZpRuCgkUAFWa1btVUqmpRdUF+7ShWfG/tJ4WGOVWf3ugPu3QmtAtFNnsykJLS24c38nAhh3/NaxY3ek13To7WlLSFip2xiSqnJf0Z3rAoCg88oR+V54YR+hsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751699994; c=relaxed/simple;
	bh=gFXfGsFCM2qtKLCezH4lRGAtkWMHGU6Fby17hBifCOw=;
	h=To:Subject:From:Message-Id:Date; b=QBY1Y2ALai2VD11nsgjnotDuQa7n57Z+p5XjJ2cVfRKPN74NGHz0lYkaErCdDnMLlM65lX7Xyc3OLln2xO3lu4u2aMz+HtzZ69n3y9n2H2N5PCNBRSGvTf5kgsv51i3Qlwa8fSK4/OOBGa2S3Y9PXL6CPwcDWRLkLVozJFyO8NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAvow+0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAvow+0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751699993;
	bh=gFXfGsFCM2qtKLCezH4lRGAtkWMHGU6Fby17hBifCOw=;
	h=To:Subject:From:Date:From;
	b=FAvow+0stykeE7BeLX/PKrEdU79IqPwxJy+8MqjRp/gH8e8ssGu5cpS93+LV7p/uu
	 EwHPcT1KtJYQkP6jjHQRi7qwzaru1y151enjdrB/EZA+mMEKkTu2x0TpA+syVHlBD8
	 iifgJ6KFr5Q5wJn1BNp9B1qrVMD7TTgQ/STPrK3kOUTiu+YfrSVkTRAWrgCGl5d7WM
	 /uI5nBHwnCBybjL5xG0P1YBiOVIeCO9QoWtBSL+TTAqEsb0K9f0u+m8kAgNyZ2bwY2
	 Syx7unFwHW+OHB7ZzZXMhvxNY8+R/mgmYzKM7Mowrp3ApF4YPhPGbEsqiwjJWiUz+4
	 al3zCldTzikgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB1C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169999357.5604.8489696050225187948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886d4f435ccf026e542acce1d2358435262f2ddf69369e042e9f17d9e5ee345a
Date: Sat, 05 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751699993
