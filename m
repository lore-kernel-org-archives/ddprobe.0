Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3270E1AFB36
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737447954; cv=none; b=hS6CqdylTi8GzoqCtXIPCPp6OwOlm9saNWaU+Q9o5i8CDtP/WG22CCPjw0Es3cx5+Bw9/NVeFWHGtrjEP/pZK1jX/VlbmaPTFjTDVtVKJJqm+SZlGWZ3YvHlFLPN/L4y54Bfy0Zyys5Dv/wvK8SXHtQIwOHv/dz2ZakHI219K6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737447954; c=relaxed/simple;
	bh=vIQ8iBRpPqALhAlvTS8ArmPIdoQrDRSYdFeIvGGbODQ=;
	h=To:Subject:From:Message-Id:Date; b=UM3S4/wn1z3M3sU93qRJPEY9HMPLstYdf2PI34cUn0y50pHEYRlW4X68He1WoUngnNQrLcDrjmy0kBoBNaMwCQl0ZV24dvWb2Ncgo2Z5FeVe6/Lrp9nSAhhYLK7L2O4l1Yh4xrw2eAuYyIZj4a40AnylXh2sFOFT9Q7OEdKASbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeZTjTqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeZTjTqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C5C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737447953;
	bh=vIQ8iBRpPqALhAlvTS8ArmPIdoQrDRSYdFeIvGGbODQ=;
	h=To:Subject:From:Date:From;
	b=VeZTjTqRid541zGnL8EvBmseJnxVY14kHQXM6lcaxW/XcZ5/7Wfvt8jEI5+at1mHY
	 hNW4YH4k+dWV9Mp5vBWi3kOSI+j3OUOs6XkEISwIx0tvyEIwgFBc63CFF6tdGGEuWt
	 mtf9DBQmouwkoIFpMF9xuQy8h8D+iYAl3xgZCrTUO2BGD83miWtSUSJEz/b1g6PTqL
	 2psfB3YUTJi05BfEE0kgwTJKSztgDSoW/bQLZI7Zk5Rzyc/NqcRXqYkcdtJVZ29z9u
	 fNfMsA9SrROpf/aWZGmj5oalIfXjwHEzz2uTEggLbYndYWvVHuBKZ9v0IOKX0pEU7c
	 MiI+8hBJ/C4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C82C02185
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744795359.28326.9550895782840984894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14275c799ed5dee95ec6086335b06a48a72bbda4b36da796506ec53a2dfda2ca
Date: Tue, 21 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737447953
