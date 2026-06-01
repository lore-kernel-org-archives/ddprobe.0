Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBF13DD53E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780335274; cv=none; b=EIWsuqbhBz2eAYIqR9WHeGMXkV0CfROZM4JovsPlZ7q9/5W78Ih4GXtccoglynWkTuLZyJfRDNp02RKB+FH8cUOjHJtByLnZ8jsX1jamyAOjyWnkb7HyH7xZkAfx0GaApTrb/1FYzyKTI/p9ZPS+0rSalF042IfjOlzGRllF/Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780335274; c=relaxed/simple;
	bh=sY0gFzWLgcc7EbdCNFk4pPuTm1FhbVT6okb5nJFM5Ao=;
	h=To:Subject:From:Message-Id:Date; b=N3XbtY7PHAymyrt47vMdGOn5XpWJfyjShgxSzmErOH2QgYoqydLkwtelMDQdRSxXomEK668+SQ7oyVR5d9bk9KTAlB8A+CNUnQISS/WRpVOjyI8JMug0Xc7O2ofcdVsoW4zFebAUA5P3/FFvG7cREAIi7T+FsE/Ad+fyBqKHRRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ddwmvz1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ddwmvz1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EB4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780335273;
	bh=sY0gFzWLgcc7EbdCNFk4pPuTm1FhbVT6okb5nJFM5Ao=;
	h=To:Subject:From:Date:From;
	b=Ddwmvz1VV1KPR25O1uz8yPNR0k94p/SgYjur/vFbrX6PLjIeSJXuC7TKEaDAKglBt
	 M6eApnYe5ughQZ5p3Fn3TRew26dmz+Tb9WaLUz98bEzbYbee9x2HsqHuEM39zylRGn
	 pIiUjzHSyiQaeYh4m2AOlFRLoLygEn+gPeNdF8Un5HYKccYAHK60g4vxvDtJ71hJ5E
	 XyYmwb3Hj7t4JDPopmF+I8nE2bss8A5oLhX/Z3i08LBsy17vrNphs5hHgM92tcte0T
	 E2dOVKdrH3idf7QGmeA2JIwFasYcj5d6DPHsW/6rhUETq7Y0pA4HPtsfWdRyyxSAZQ
	 v8k1Bmqq9QaKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6854CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033527373.28544.8247792772610545986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245123aac0749cae4394cd6f009d8d96fa92f668761f6081f6b90850aab75672
Date: Mon, 01 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780335273
