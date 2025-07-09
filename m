Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EF68633F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752104393; cv=none; b=DtMUUnWX9snDrQfmwolupqA7W++KQn3IrNyLH3GCJtVejUV0tx4ZUFbKTxTZ130R+8NSkwZawkRdCviA8xQ31ba8hfI2snnUN1I8NGuRpcyT28a2lItTBUNqci8e6cFdgeLFlgsB5YYgrhCNYjGOgD/nBBVeQ5rXoRYNVt5U06M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752104393; c=relaxed/simple;
	bh=PfQBl3g0Vsxm94iwunI80vo/v+iOtR86wSpNOl/2BWE=;
	h=To:Subject:From:Message-Id:Date; b=pyp/p+sQTE/cxXkaKOpRvtmp1gOaRJ83nM0ZyUBR0ea4O7MK3x5ZExZnPBe0fJ62gYm1zxlgkkUya0QVWJZYZMKAcnEEjqzv0X/lZGyR+k3A19e15QoGXP9HSGpuFgBq1uqj92LJqhNkvwAf3S3bZZ9PsQgeuIChOpGz0fVadaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFJf/XZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFJf/XZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFDDC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752104393;
	bh=PfQBl3g0Vsxm94iwunI80vo/v+iOtR86wSpNOl/2BWE=;
	h=To:Subject:From:Date:From;
	b=DFJf/XZsoHreKwLxu2bpGPXDZqRN8pDXzFiZhXSDEc4YJgj0fJmAat3NQ2+m77yhX
	 8BC6tETz52MTrVEIcjpghdYUG6VdLeYbcygRJpMDkcsK3feZFIKjtENO2GN2bT2Ws3
	 N8te1wOPTCu4LVklk9lZ7VJiX2cjcOmHcc5+m44GdmuRc5voq5bR4Od7AcDFa0WhOy
	 OhQiPMOnSym805L17CYaSooHUWCmHskLaC8Fj1XgIW8FFZqLAMlUO5jY+4RMSuqE5N
	 Nc1Ij1QVqQxQkudPj9Lr+1sgWmFu8suA5a2hH53k5ZDhp0+VUbxgm/ryunLL8bT9Gm
	 es4smwbvEe3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F1C83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210439357.26840.278111126942122180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9715da5c4000eda461e1b278e35e6f2eea70d65b916f538f114b5d57050dd6bd
Date: Wed, 09 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752104393
