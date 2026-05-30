Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E53B1427A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780168474; cv=none; b=M/Tfdb7AJgDwY4xoWb+QvOrc/klstsP/gq+AlCOHdp8CpEmQ9h+n2Cn0R5iZwQNZIrlBGLqx8vjHPY9UpTu3d0Cn/0Y7cT5+ApAOIXno0guX02h8AdxFufVU6Ev07Rgk4UF5X8kOy+6+irhzIc4kBaIkjZSQ294YZlKtHDCY5l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780168474; c=relaxed/simple;
	bh=Cs9IXSWtPx3+Q2F9ial8n+hMaiMPFNWE7atl59YsXAo=;
	h=To:Subject:From:Message-Id:Date; b=Ep6a3LplGILSo5IdGCnlbL11n00/85f+NuI1nEd5dg2t+SM2WwndaK4zML8Ptby+3K5acTK0ywQpwtRVrg0P0iS/kccKV2sIuFiQ7HmIW8PuzkC4c0Xaqa2DUZuEkSjozMzi6qf+Kz14h1U8L43nh5UfpLOGk4aecbNL+snvcnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfKzeGLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfKzeGLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C661FC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780168473;
	bh=Cs9IXSWtPx3+Q2F9ial8n+hMaiMPFNWE7atl59YsXAo=;
	h=To:Subject:From:Date:From;
	b=IfKzeGLO7bxCfKhjBmxOjznn0AVq407wPoDUPA8IbDTulEClEek+HiLizNcSJl9kv
	 sg2WtaSTo9teHEo9I9DqBu8IETQfnE4eeyk1gnwmK0DROmvE250DQwJoViCX2pdKd0
	 yMCl2qwFq54qo4OMvPio1xF24FmZ4Zwq1Yf7arDpENgzcw0wRdezoi0CVax+GP3J4K
	 SFxwMiwIQ9dbnPvB7DbNjo3YaIguQUp4iCyT3Ck0rgA8hRnYi6YH6y0wJuao3phKPe
	 3DnBH+LmEs8Lh0HgWHbXJxN4j3YjotiuMaFbCew02zfinRBFfZyr8er/yfFKgGD3Ae
	 kyiVF+ZPl88AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1CECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016847368.6084.6041939680860149969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e2e54d367bdb99fa75f780ed85890220c2a56cba67a01963122e0154b1bdad
Date: Sat, 30 May 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780168473
