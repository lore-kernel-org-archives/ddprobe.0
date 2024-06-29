Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802DE6FB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719648263; cv=none; b=E4KoS/7jLSSxaF26JmTzk8ZAIee2KX7kuHXD1VNyF48izdpMBN/vCYgDEECgBgl1+oo86QJFkTCmoNrzbS6XcJTvvuUPZkDZQFmBo+8KBBzw0xpxl1zhB5Jwejpz7SidDBjierLj2sXsh7bzAj5sccrPxHaAxAtmsWGLTnxQewA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719648263; c=relaxed/simple;
	bh=My1D13acLiHHvqlKy9ueeh+kJ9yTk5vEEISt8332A5s=;
	h=To:Subject:From:Message-Id:Date; b=RMEYvN7SF9ULUhOqdvnj7BKtdFBRBGArLhrDP/Xwc+Y+cBPjz4bqgWT85xdQaatZZS/390abPOgIZ8N9X4FldMlNmhZYN4izihrb4ChW7/kd47MoOBknK7sK2y+ypenIzVTH4i0cNLFGAawDFQHn6tb5ih2OU0/p8ieabGAJQXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsCM36c9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsCM36c9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AD20C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719648263;
	bh=My1D13acLiHHvqlKy9ueeh+kJ9yTk5vEEISt8332A5s=;
	h=To:Subject:From:Date:From;
	b=tsCM36c9DekNe/yfWHXEKS95pnab5AK8/bXRykc2tqx/iZR0jSnyVx2rCBgBB5ADI
	 VM6baas57U9PYPVqTT++EUiGFHM0Iyl4f72hDJtH5VCNvUtgMHP3j18h0A/0ywzNuw
	 JYX3KcOD+CS29qBi6zUNK1I5ZqcM2KzeLNtmn+0ZoOoFW4sRqCjuJFx0PhvwcgyzCw
	 ZZO3g7bG4QyZ/G37I8/iOa+MvFaoKWC1aWAiE+skCf33rx75Dk4cfVBBu/qY6dZrdS
	 GMFN8uA/W+T1Ou2K/V+30yIrmmNX9/8Xo9nIQpV4DvuhPPNIHUEMzx4ga7eT2BgOoD
	 87zMoiL4PYQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E784BC30658
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964826288.11728.13073609102066558644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d197eb18d435fcf8c2988be4e4d54563851425f2d966c14e8ab7025a53cb1a
Date: Sat, 29 Jun 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719648262
