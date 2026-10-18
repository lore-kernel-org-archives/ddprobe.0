Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068B255F2C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792360834; cv=none; b=kNGsJxRK/SqWCshhSL9twuqE//CyZBHaXBm2BNBBEN3xs6yVexro95o1RTf207Jls0/UaxTMoZAs8XaDJfebm6G5SfdAyl1oKFkZ/w2RD8VEGJxhUBT7OYLiPyFUawN9FSMii1SBbplBoJraC26R5u+Q7C84tYhjzbz8ZfirA5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792360834; c=relaxed/simple;
	bh=JTYe1oPwZ7n0sf6lf9rLdzujl/5Fq3X/xc9nRBQaeU4=;
	h=To:Subject:From:Message-Id:Date; b=kSoZkzCTuF3qu08h1pDt1oO61CwE1P5ZFesibOA4LHzFKH+kuedv6wSpA/vvJQmOP9COV2GgfKcN0AztHZSemyBjEz49ZZSnpJzrwzBQujCh5WW4EkmhFQXb5/9K8VuR9g1VoyJqP/NwHrKfBcAm/3RoPhOtscoQp+l9eFAxWOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EihiAOy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EihiAOy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67C0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792360833;
	bh=JTYe1oPwZ7n0sf6lf9rLdzujl/5Fq3X/xc9nRBQaeU4=;
	h=To:Subject:From:Date:From;
	b=EihiAOy/PNGjs9K5qCDfkvXF3Gab/0FNVLQuaEMI7zh78fWEdTsHmTaauA1+QMZFY
	 cw7pVppO1h/wFX90aLXmY9rjCzv5fqeVPA/6WiNwttptcv55B8OOOFWsQAuHD8CtLT
	 lBpYu0PX5oD/uYJjMIemqaw2bb00exEpubeuS4eqcwDySdsjIwkPTRNE/d3+2h/P+A
	 KDPVpVPGRf33WLF7m05y5/RcxGCOh1bBXZhCc/SKaECnPFRh+z1X/1nnZIlRM6MXnL
	 f2umZOc5ovksPVjW636i1G+OFMqrwaqEIGHfp6qKCuylVeu3ET1/h3WCQVTcpB0Ojc
	 gebdAxExuVnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1AECCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236083368.25256.5374337690587401128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e99e27a881476952ed94172c86be2c423d88419d9c67fbe856b6f0e43adc4f
Date: Sun, 18 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792360833
