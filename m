Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7501FF1C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790458834; cv=none; b=b2oD5O9Tbl95tlnke8cZbeC+rhqifdsLozP3cEycRdRO6TEOoYoJh4wjZD5VfM7brxOOSKgvheNv+F+l+2jgNWFNY2r98/yf35r5RYzDgZRDUY4PfUd/hF4cREI5xM2zCv/FIZeQhF1i4X+rnZAacbUr6IMXSCQVOeeC8Bj/lHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790458834; c=relaxed/simple;
	bh=wojDNG2I1F2aDo+F2GerLjBVUwuNrklW+uXgeQ5leMs=;
	h=To:Subject:From:Message-Id:Date; b=bsozwJr081O+j9KfKnyPr9CK0kKPfgvBtRL+xMRdFRc981qgcC2h1w1tBT0vIMYh6qFgianKU1IVmCeEwpfjpFR14fWi6XCll+eiVcv9hpd2ClwDzmwZlBbGDevL/5GuwbzrMbUWBmk9lqivtgeJPEiPh4BvTzS4gPUAw4lHkwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrMxdxPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrMxdxPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4551C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790458833;
	bh=wojDNG2I1F2aDo+F2GerLjBVUwuNrklW+uXgeQ5leMs=;
	h=To:Subject:From:Date:From;
	b=VrMxdxPsvBSQnJvMzzv729dDziPKaJQOj/cegaGXGN4r7EkEKOAtieBp2iKiASwzN
	 lNeU8AseBCVZX8d6IDffzrr3HY+yxQjAbZFjOwLZG4aBUgcCBJ/jy+4R9+P06cZOr6
	 /rSAfpg/fWpyHJwAgQV2dD/Y59n4+SETIg9MM0WA+iDLAGaeFZqoYIzrcD1X/YoIkU
	 +3a3scBJqyb38LmNSkVNB4oNhQV/MWRX5mnm3XfS35NvgzJ7AIVVckLcMZ1E0sr3Oz
	 il0C7a+NAy2FulFrGSPxnPP5j1sJ4Fj8mESKsdpYIHOnKnbPGcPzNW9e9nGCy3cIRA
	 4Z9+tGLPl4FQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF35FC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045883369.2266.15989131264227246356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dea99ab9143b5782bf1bf5d3ff17ad194578a775e4a7af6c7f5f7eb2e6a15f
Date: Sat, 26 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790458833
