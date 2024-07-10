Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F70115CB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720590983; cv=none; b=pr7u5/hWMjSnzxFXT3LufXt1FPSagsK15/IY9I4Nxa3wthST4/MzbPrf3E3/M5isU9HhmnztS/gcGy7ELGABUlThBtq8XcDfaGzgEqfK+2op6EzEfpsPV36tYzYWOeuLzUimW05bHm40qVGB/TmQw5y7iaR0eTrzU+HLtkJsvfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720590983; c=relaxed/simple;
	bh=h4zfdDn+uhErlrFKUD0y13LuS3Nyj8lmtiwkpaeTxqs=;
	h=To:Subject:From:Message-Id:Date; b=cHr74zmlUY+cwqQxY+TP+3bfxOYxfYZac45i4Y0mWOW54WB+duPxiUKWzO472RUHYvDuRoF4XKazfGlnopxaHKrk7wb2jWfJ19cAw1i8CsXMvN3H3hYi3nIHABTChDF9uwe53pFXrBFEtSK6x2GsoAdFdjkSz1VqJCyrNWz7oYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxqcO2Bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxqcO2Bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7781C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720590982;
	bh=h4zfdDn+uhErlrFKUD0y13LuS3Nyj8lmtiwkpaeTxqs=;
	h=To:Subject:From:Date:From;
	b=PxqcO2BpbKfil3omUpn+go2R1lP2wYssPRvEEdY3uoXFMJ0MMSNyi86qzW3WCt4LX
	 /jlVhH/3aFQPdqQcXxlh4SfIIpYrnsdHHtkZPfjBWIz9UaZbPkOQgOU9XOPo472vnR
	 dmPzYraa9kIMOd+/9ks9qnXiMtBL7GlM3sZUC4b7AEmLN8jwTkT86lAe9ju48KzPKJ
	 jy1BYfNESCM4K3bEN0nqRvZHEYW/Jo80EsBeWu3kOQt6lf4heiDhafDiRnWRt7tRwm
	 nMAwapUG/HlERtJl/Hcvaj19cf4WMmxTzdEmqjFWfyqp0MQB+AO6vi2NoLCmdgfTIx
	 YnQ95Rcbz5vcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8357C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059098280.1895.11972228595012823016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4911bbde390b65d3f7bd2dfcb90a6a3bcc632f2bb0e0acecdfd9ccc40898daf7
Date: Wed, 10 Jul 2024 05:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720590982
