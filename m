Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1438A1F4C8E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750714; cv=none; b=gLwTb4ekYSJKjWUlsLsp44Qzbfy6XhWr6U32qeYoQl2gkApAZFW7dwYOMqRRo+/tWA6ODq//3KnBPodSnkkQCRYg6XowyytodGNVjR7GtM+85Q6SViZJp+CSkH7Ak/Zczvv2j2QIm3SEQFMNd0MiRiul9+cGHc2vp+f4c+0N3/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750714; c=relaxed/simple;
	bh=28PAv1C+Awk4NSlwD2N1viK2feEAcdDM6InnD34LmaY=;
	h=To:Subject:From:Message-Id:Date; b=TJl4OycmWiBxn8r/wq7Lyyz/P+1Knwc2yDExNY3BS8HpGVt1edToBA6DlnNoWXDleGeL46l6VEWDgMJ50Qzaij8pdR4Jp2U14jBwrB4bnwiFu/7dK99gf6adNtoZj3oXjZ2I34O0NM14IG/rWYkBavi2zIg8zmxJKRjzFx6DsyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqeLnCiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqeLnCiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB77CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783750713;
	bh=28PAv1C+Awk4NSlwD2N1viK2feEAcdDM6InnD34LmaY=;
	h=To:Subject:From:Date:From;
	b=OqeLnCiD/w7fFAyUPo9sb3cBLLSkbB42tr3CJKRxz4sACPu4E9lzEHf1pGoWMVV2D
	 oJMAf26Jdhav6udqiA+bdy/9FhOCqWqSZbtBjyfPMBGt6UbLi5ySdkneyYpaOECBX+
	 SHl35Z+tnR7NDylR9+iREkfmbrkR3UZwfDvrQ+qeO+dqHlGHDFHlePQdFZ/Dva3BNZ
	 TKZ249exEV8nfD3Ctx1yWOezsyFQIUFSHV57VAb+dHrGpsm3/LSlbDceeeoy9qRxhK
	 2D1IdIBHJxLodnzPuHDNqj4RRlKK2lpFclZevyBnh9IGXWoK1B8HUUZlrdWyeNmbZZ
	 dcSFaoVxlCh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83C7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375071368.21471.11820583018553104015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faabfdabdb33f87d79574299b3c2d4ac6310ee765ae0bd9db04d066a735f6bb3
Date: Sat, 11 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783750713
