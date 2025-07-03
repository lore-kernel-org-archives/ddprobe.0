Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6428A726
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751515794; cv=none; b=qSDfYueaOhRr8EGlBTPNbx3raXMEOcccMV5ao67NalHjjiBXsFSpAT8kVKNbqVqNMD96hJGFwUYJj/oe88f53F/VPSf8SW3gbTcRGgSFUBVId/U3OsbYYCdtprJlgBiVZf5xKKVhQ05xRG3q1DSXaSaejdUFTGxu1d50ucHVsMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751515794; c=relaxed/simple;
	bh=6bOGXnSll3d98QOH2awn2T71AYSwYn0F+NjJDK6Nccc=;
	h=To:Subject:From:Message-Id:Date; b=mlGjfffTjskSWQqdsfpPNJYUsdxOmEA4Yab/+SN42J/UDYbvQ3syUDsPZa4BnhdxuYpRxNjlGN0xQDzEkSrN8QAOA/ewqo/hZq8T+3HdV0zV44Cvy2riYucndFLnfDZ+gDMcI80SxpdXxzDH3dI6CQIrDm5yvXwDdETHa7PyO3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4QgdfD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4QgdfD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCDFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751515793;
	bh=6bOGXnSll3d98QOH2awn2T71AYSwYn0F+NjJDK6Nccc=;
	h=To:Subject:From:Date:From;
	b=F4QgdfD3Zq6fU9BVmPTRZ5idq0r7vy8LC75q+vGttldCY9g4vFsmBgaphO2ahaeEz
	 +OE5H5esB62fWGKL2XapohaI4qWco5JH8BCz0k+qf2aZk5W7zKgniBpVNxZB9DbCWo
	 uFNXIVYFdP8Pln+8ZsYknMPigoSdplJNJwcnBp4ZvpJHew13OsmkfrjiLynbAXLbPs
	 /H7TeuIAzPjwN9hcBLVnpoURw7/9PP+wcIfKLEyRxbuvAmzDugxV7XnA0bdplb4Cw1
	 RH4GRPc+wW7+2mwcFTP+PIHn9d9h5g9Z5lq569KHowCne0KzNWeittdfDwe5S6Cuho
	 62RF6T+T5H4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE84C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151579357.30633.3777995912863227112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b035c343ebbb697020d64bc5eec254ef195cf6349628d19e019abef56a089919
Date: Thu, 03 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751515793
