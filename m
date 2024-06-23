Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610402F24
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719179543; cv=none; b=UZVtzdO+Lh10K1uv8/Urohjdn1GQhAyux1CA6Nda90hOMP4rVR8SVLxhCFqzBYIfaYYZuf0Cmq/tuwO8tKkZuSe3QMrd+5w0Rkc1WuTMmcGJNpH5L5UwiuvspHIjg5QScWcfsxdfjsjhTSQ5rdqH2GDsVqO6so63Gw2olauqo04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719179543; c=relaxed/simple;
	bh=XgXO4tVVp4y6PnxWQPpdauBghhw+hwBZ/ikLXa8DExc=;
	h=To:Subject:From:Message-Id:Date; b=JlBDLxONFNfMCyo17XIVXRmAhUlq7gfKohkt8tXErJSgss54W0Bxtx02wxyvlCsrX2IUOstd2walUAY+qPuVvaGkxPOCH/6UvMztC8Qd14OGpHZK3IjzI2ccy2WYfSy4hzdFuUtsAXzw/QHG693bFp+XmxoB0ECzhn2snxxmFKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtyhSOOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtyhSOOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B03C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719179542;
	bh=XgXO4tVVp4y6PnxWQPpdauBghhw+hwBZ/ikLXa8DExc=;
	h=To:Subject:From:Date:From;
	b=YtyhSOOXK1z51OCZacz8uVfLwdmnBf9eWYbAJpWBeZSD70V6+Vwmyay8Ri+h8fY40
	 Yvk241nMw07v1Uxb+Bn+uVlyPr2mOmEsBp+cm4Endx2+DpNfEUYC90TBFh+ZoDeW32
	 GaGlnBIXgWQ+kuubR0bj0SUlx107sEMxPJkA8KDQE/8Pw4I3qfYo5RU/0IGT4tvKNe
	 FJfzYQfpD61vC8bhl+UjLEqDXS9QlSVsG/nICjG5VMunVjMWnBzClzBQ06KUIRrd7w
	 kht1pDCvCg7B2M5PB1cGr+8QJjVwBe6q/ZxbIpxOvPGMuY8UBR3bzc7hTeJU86/YfZ
	 MDYeH8xkXXG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CF2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917954278.31614.7547216539809810782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7471a023050668146268e403735d5d40b44baf74f885a2291f29ececd9ff2bb
Date: Sun, 23 Jun 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719179542
