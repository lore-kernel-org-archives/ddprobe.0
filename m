Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD0D227B9F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760756994; cv=none; b=cMQDvVgFQLHvqZYyxpBbu9X9sfEvlhja/THM1wHckIs48YhlYb8nJ9JJtS+e1mEY4Qt+mgizU7Ai/SrA/RB0NUSPsW7EwLYApT8/25KMNa3NV00d7X0R7pMdYpiXZT5ab7cR9YxWcwuaYnE4C2MKx9B/lq8PJ2p6wp8YM2w6dMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760756994; c=relaxed/simple;
	bh=V/zkpl7obv121/1GKxtd50V5iWSxr60k4h1s8tm1Mp8=;
	h=To:Subject:From:Message-Id:Date; b=FNec7t3xQi1Sw4l28mnq58ufv/J+eHlSh5u9eNEY2l5V9eq+I7BukYYdt0olthbLj6/zGNx25xOoJWCWskA5fFfw1e6D0IZOWsKvwoJ09ZdBR2uAtwtZR6hhi65J6cGOHCgdSCsMlXYFwt05X6dqBsDbJzTD/i1VGtE7uPP/OIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMMqCmu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMMqCmu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A3EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760756993;
	bh=V/zkpl7obv121/1GKxtd50V5iWSxr60k4h1s8tm1Mp8=;
	h=To:Subject:From:Date:From;
	b=UMMqCmu1bb7xqIAMyZ/0nrDWG0jZtRI8F2GK+ABbMKKua/uDESCw59YHMEYR0HbRC
	 aPDGb8t/lkecMx8KLgjOW2AbHTm8x5sX78D9zRsaML2ltgoXag7gRoxwPu9AZcdUia
	 FM8Yu7cH9yh05mqmzd1tKEccoTDrLIYSAWjjbYKm45m9Z4yKn29HfcuqlwGd7XMg7X
	 LixuwSjsyXM/ajLpu3gkxU6RmfaIYelXJlK7+mk0zxU2dJtwY3KCW1awjR0+A2BRiZ
	 k2TcwJtsn34XQQI73wzGJqmj4K0KB9dfdoKzgUlc99SvQM1i+dJ6Yre9z0s0XceRCT
	 srIsZ/+VU5zXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B1DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075699358.19000.18109162132903332291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae2e303cfcb10fc1823ee12f0e0696f09b73cd252491151648e759147ce4d15
Date: Sat, 18 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760756993
