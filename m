Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792426234;
	b=iyM6y0kVTus865IT34QUS/5Hfdc7d7ja4FoTx8Zvhs0v0d+WNqpaXR0qwFDO80PNVu1s
	 55XNca4eb5flHoTlImF6Viw/ZKUsaZMV6R7zsDplBS/DdHzy1IAOsI/AKvofxxY96N8r7
	 5Ye0fVFQJd+g4K/5yVu3twVRTJ/olEuBLy4rbe1fSm4o2YG9eMyW6VXjwLpQ3TPV2yXWN
	 uJmBdiUZlBwiHxjg8HdFc+o8XyGGA7RUqelD6A/bXvj/qkFY1vOZGDgTYrKt4IyxpoHtd
	 kKw21kUmZcpKGzsHtdtcG1LNGxaXcRAaDZNxbON45CEIJGYueQDanH+5+NdBGuh8WIA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792426234;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=c6or+fCfJfH1+fXDMidT4ILSKlX072m1MRP8lDHO1bc=;
	b=DVk+25WCL49t9AJ3cozg7FgZeTebN3YOV5lm4XoJ7kQxfzvtBPgh8llHA/xuQolOCbje
	 RGpqWw9YGcFQKyL8AO3ThYGKCSuQzRu+0Nd1YZixksTYFXGr4ODxvgRmec8oORW/Yb6xt
	 hjxrUZNRqQ1VjOQddjoGqRzpAuFLptAYc46CGifU2sDspcc4Yy8rk262WWvKiXdfn/oqD
	 Ugs4fPIT2PAosNjNhFk3pKRhX6dfm7Boxc8CJ2ImZT6ZP5gnTFkwCIoTipKpJFx/Vd1a5
	 OBFw5556NHkBjVutoHjB9N/kYAM5uYyDSzleouza3ZIxzmaHd2IneZ/aeLyr9ENfP5w==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ORlK3U7p;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56E0606A31C
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ORlK3U7p
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916BC25771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792426234; cv=none; b=kf4u87Xri94BbbbKO2E+j9sW6xNC3dw6jQ49wNCVrQuuDPE7cbzjV2TzD/AbosCOiTXeBVZcDIUFodOf4NH+SEmqpEvp8lSo68Id0DFaL/ONe2SSIiMGuNVapGHcq/ernQ+Mf8imczTSD/hEG8PlE18Dge6N7NRxXBEuZvCv/jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792426234; c=relaxed/simple;
	bh=c6or+fCfJfH1+fXDMidT4ILSKlX072m1MRP8lDHO1bc=;
	h=To:Subject:From:Message-Id:Date; b=RP8TV36spUjFuMEvMN1gDg+A9vM/3XkwYIVIRANe26tjuEergxf1zW82t96ZJbqFfWLK9M17LFD49AKfDNm8s1Xe7zKUuLRyu4I8sEe0U/pB+UGzny3qZgb0uMYWdpKl4521L/tNttq0OqStBl03JPQvh8C6BjGYjpMFSFrYZDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORlK3U7p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ADFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792426233;
	bh=c6or+fCfJfH1+fXDMidT4ILSKlX072m1MRP8lDHO1bc=;
	h=To:Subject:From:Date:From;
	b=ORlK3U7pp/HImCZ9ZmlvTZsZAH+JzuFsqJDnMBHJfl/dsKtcuKnrgYvLGxC1Hg4b8
	 DPU+29amTaKy/d9R4H+Fs8UluHx4QWhbTKZZ1Rt+8ULbZ97/T6pqYA61mOUhNTpmGd
	 fGdoJaCQZRnk9Rlubct/V2qhc5HhwxXI6TuNBDIh4kezGigx/5upoGr1ZqPhfZX+QR
	 9x8SI9yY6QGX1Udm1LoqMjpX7GaYjvNv3IcRv6Z/+XRSfxszDDYSJ55PxS1oTtP1UJ
	 mMVaXO7OZxZMklyU86gbxHNULfrJHp9b/v1OVXJsl6EEybN56HszKHm8YICl7BV2dd
	 zrAqrswt47Zhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5570CCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242623373.20684.18421771667646874889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2de24686f3705d9be6d4808acd1ccaf2a198c98c0cffeea7c959a10ea15556d
Date: Mon, 19 Oct 2026 16:10:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792426233
