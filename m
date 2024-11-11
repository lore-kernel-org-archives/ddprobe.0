Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA5F1474B9
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731322554; cv=none; b=dngkfcROHoNxKUw84tnBMhNbJLovJATpqITDkZunRATL3V0pLVYVoth3kw8dSA24vt0wHLWHudYQvKF/iqmC6D6QV0WMcrUqd9HXpfBcVAOmJXsccmTifQM0BgeatnCPcCK1jc/1lQS2NdUGFS/ZqO0zeR0VkG19EdjHRr4SFKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731322554; c=relaxed/simple;
	bh=vsVb0inHAVqD6IVIslrFdvYtBKt2AzunnP7L4rl1Idc=;
	h=To:Subject:From:Message-Id:Date; b=lCgUMmI4V+PO9FctBaab6jauIVcrN6vnU0AnAcq6fGfZxdo8/C5jgbDYqF4946+NB+Zfan1+HmWxzRfFADYOmSOptkIwO0rUH+lNAxFaXGEtuWhmKRhQxd00bNjLk/WSEH+Kq6E/y68X+xgr+n+v/uVZnyyVkjMzYUIAnuSsH7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldOpFPbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldOpFPbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB3C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731322553;
	bh=vsVb0inHAVqD6IVIslrFdvYtBKt2AzunnP7L4rl1Idc=;
	h=To:Subject:From:Date:From;
	b=ldOpFPbqFiTC8Go3Uv6b3j1CJrFj1fGUCvkyCzWrA1MI/x2u+gcNTirG1jc1nieyX
	 uBBxVxt9J2ATsVnWep/pD+Jz5cDhFzhufv2KcRKaHk90OL+qGHbGZW69/WdbHfBIk3
	 duxmjOd54f7ZWt2ZitTMS4jYT6tcuqHsGwWxdE4C2L1O3OHmRvIfx6HRA32rtCDH16
	 MIeoPKdW8Gp+yWXCaE0Hk+dqPTvV/WJv/bAvK2AB3ZTQR1zgw1EGYe2QBRGmdXkxtB
	 nTJj4fkEWH4jhKgjncldeX04DZR64dITSxe0v/vy619tKKEMRdQBMiskdLB5RL1aCq
	 WsSkBScpLiKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA6D2E9D8
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173132255359.11656.11708006148483239637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87051ba1340101bbf4605addef8e43d5db61df93530094bfa517c1419ca97145
Date: Mon, 11 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731322553
