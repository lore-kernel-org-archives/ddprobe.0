Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADA5E546
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712407096; cv=none; b=crVKrlAfA/0O3d5f/Imj1WS0wqY/Y8zjwfhj+15D9Gw+iUx4RPysufhn6aDacd08nEsKfZUGA45feUTjZJo1Mw3S67AdML8yakD8Ym/kJDdtCsP3ckW0B/0ZLJLRL8TUENumGijYw/Tv4qNvT38FQZIBEE9hO2ZMGl4FEsr4HNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712407096; c=relaxed/simple;
	bh=CUGf8TngMPIrvjqoEZh1AkvKOImisNkQ++DL76Qv7eg=;
	h=To:Subject:From:Message-Id:Date; b=AIUqluCYsBuMEezwfpq2lZcgOkbdrX2n/O0b+3mYmFYemw2AtinOxU1KXLtZgKzKJ/WvFPELQ69NMOjwFMAJ94WLuNa8Ygv/lLdceZMbUVTcwbKCbhQyL5dNDuyEH478ymUgUjld+K8GSyBGrlP1jKWIzflpB6OArgdma1vbF5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNTfVeYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNTfVeYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A7EC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712407096;
	bh=CUGf8TngMPIrvjqoEZh1AkvKOImisNkQ++DL76Qv7eg=;
	h=To:Subject:From:Date:From;
	b=cNTfVeYRXYC7tPCdJJEEmBBCGL7JIdSkPteBZjuChkzGtyfOm9MonMLMdFZh9AjjU
	 YO9e41/KMd5EhJ4g76vVbFraHjltQRSEYoZshjWcMqARFxiY9Gz3vg66WCBrsYVg0d
	 TAEOTKxeyUvgrso9nZ0eErWXukJ2x7xj7P2RqW9qk67+miZJo5I4vLebUGvOxrRw06
	 lFv/bAGKP+8EnObEfnoRSbTS6kTj8foZT38oGaX50Fe1JGv5yrcH3u89sQ0pH6g61e
	 h4bSpZgRvvJXwOV2h0aqcb3k+aewqcieEvOb3613/YsLyUtrDUyBVQ0wcvYElsRIL3
	 2YUWV6VsatJFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6826AC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240709639.1923.10321027905831196977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee9c9b2668dfba86d331a624f0eadf7bb387c5fb1db0aa5a1acf5766d11ec3a
Date: Sat, 06 Apr 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712407096
