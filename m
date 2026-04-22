Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258CC35CB7B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776872854; cv=none; b=rqvoOaXPrMjVZrAADEfgC55py6FUi1Wpdws6pseiaqPYhcBVE9Gd9qgaLkylqAPUsCjlDgDOZAMcctl9ctNgMWWYP3+kjErLmCJaa5vspcnVM07kNKfCLLrKZeujn9HOAsQZSBA/nai0RuJ5brhYT711hEe0aF440EQ0Cp0f5hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776872854; c=relaxed/simple;
	bh=iOnJAS6KINiZcigompJmYzShWi7NYtrCL4Gic3j6p/U=;
	h=To:Subject:From:Message-Id:Date; b=Ja/iiGi0QaQoaRYAlWfW9s0zdZEE3I0hEDg0puHPNj77S0Flp20VQLHarrHQq4TRmxPKYQX4b7j0z54XJwl8q/n+BsklnZHcvb/3y4KrYdwHFGvliHMfWR1SfvT84hpH0SMO1gXwyJEqB/3FQa+uz/thfR4iwk4I5Qzrrr2ITjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJb1suMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJb1suMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABF7C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776872853;
	bh=iOnJAS6KINiZcigompJmYzShWi7NYtrCL4Gic3j6p/U=;
	h=To:Subject:From:Date:From;
	b=gJb1suMrCvYyV6MBo4UHbFlQKVmdLE1c24514r4atS5HS/SaoZKQ+uPy85PkN3oIv
	 EcgRHQWsb1TPQixL2pBNLbtpNc57LOK2XjCfR6ndJEnDU4GcV+Ekhpe2ijS1si8Yvj
	 iSvwbzovKpxQ7+HKDL2bvM60AWkacmr88a1p23tcElTgRkLnvlFcn278x6qz7tg9Sp
	 EwksqhRsgPVwINWynFBeBCnaxYlBdlHLnYG7hksj21QMgkJ81ezt1YysJvh91L//oQ
	 K99AST5mVJwrL1unRsuUWnWreC1AAKH1/9YbLT9NtCUCjYvpbnfHbOPW9Zck2HMuBg
	 0iVqAsGhB4Zpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D92FA1FC9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687285368.26729.10986817739995428201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd376581d574dc3d8aca72a4da6dcf76f957d453da21ddd77df227fec4d25228
Date: Wed, 22 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776872853
