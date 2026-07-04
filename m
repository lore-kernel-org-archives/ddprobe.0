Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF361EB5E3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783142914; cv=none; b=U0Uf5NyIX5w7PYlQgb+oKFb0Z9KBSI3XutG13oaa2EIfQCJZmDO4g4MkP5qW1u/p6wi8X98pyrg8vzZ1z2+MGXZmIMJNNzbIeX63zHw9eX9UECgJJXjup5xLsPEhYuePqm9AgY8mi30OyplmjUL2Zxic/Jx4eGygcYGFbmLPL8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783142914; c=relaxed/simple;
	bh=OIKCo8bAi5b8cfNegia2DXvwNUj0naOnID9LzkoVZhY=;
	h=To:Subject:From:Message-Id:Date; b=PL0gNnSCP+rPXLbQzq2sXX9GXYEgWgR1vf2PGBJtPcbg75kesPAjXSyOZPp4HfngbaDSptt6OfOSdlws7nX+AF+PRYS8m8VvJvBEQM6U06+LhsOLL+HRwba1IG7kXtRdCSqejzbwXy2qkRq9AFnDqtSIjlV4ljOMdbkNi4mpERg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL5T6oTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL5T6oTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D1C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783142913;
	bh=OIKCo8bAi5b8cfNegia2DXvwNUj0naOnID9LzkoVZhY=;
	h=To:Subject:From:Date:From;
	b=KL5T6oTOfQ6VsLL3LvtbzJhiL5tNbu+p4bfEPdyd8MdAPm+9yHDfhbrhdryNfq4nf
	 vvX7K90UmgouO6Xbd9WyT/qnufDrHMUNjEmFZTG6oDeMMDxwyBO8zejuq68hNueasJ
	 wpFc/OMGMb9b9RuRE//ZjJovP9uSf9daHitrR7kDzv1TOgv/jymyAx8MXDvypEtD2c
	 Yyiac72BjKEkabjWNNUJrtmSXvTYa3PxHVNyoMlyP1ZCyJ/L2KqaQVdFoeaOuYF9ks
	 N3mePfJiAFDDhbm7/GjQ/hdx9Yju3nr0jzkSGGis4qe1J7z82IUMoCj9rrRj5IEeqw
	 5kRgYh0ouWQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08F4C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314291369.13056.11802111395250832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b5a6e0acde4d8979544ac0aca0d90464e4d68a84665b2db162d63ad6b63c29
Date: Sat, 04 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783142913
