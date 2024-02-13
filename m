Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16685F573
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707836296; cv=none; b=PPxtwwpARcNuAqAnlms98wIl7w7L4IXeVetUEnRAI6lazcHNykcXs7PQSQpY7DjyyDh0OpH/+rIQ0bPvTHdTdJuP+mzjlTYSyOUWjidnNWEFb/NmOG63zS443I+UhMomV+B/QKgJj3C5EHTzRq9uLS9C0R5815XN52Nb7Zne+44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707836296; c=relaxed/simple;
	bh=A9zyJEqOAfnXDk3k5CmyL5qsOq9c/pO0cm7iJy2BFtc=;
	h=To:Subject:From:Message-Id:Date; b=f5nHp4ymNDZ/eNtP0fQleMdorKREsF8Ke4qRO82sSaEwJwH+19uGtHvyI3RrSvUtqMhnqOUnFqGKN1mKfdj0zkqvU2lqM9IGhhBBQ+H+1IWt5QJVgbmDb+JfGnEVch7r/SPZR+MQGv+ZGifQoxqgzL2DdiA67ux3kcZ1Wcfpio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWwEK3SX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWwEK3SX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755C8C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707836296;
	bh=A9zyJEqOAfnXDk3k5CmyL5qsOq9c/pO0cm7iJy2BFtc=;
	h=To:Subject:From:Date:From;
	b=mWwEK3SX93Xgsfv/NhJbUAqZXl/X/e3d8fDD5tiA/dLZIqCXJl9K3lLlLY5StB1Vv
	 QN4DLmIcGKhfpDtvR1/ix5PMTWG3ngCuqIiNV/EA62mlGrNVKWodTGFeHXfO8sJi1j
	 LLyuS0bFBZfxure143c0rVW19pvRQcfzXhTAgoeYhbMOKR2gNplepqeQXPCxlSmVPT
	 Lbio8NMCKjjQot0uRSlEAGm07Jt5IOliO0SbOAkY2B9RBZ7xpEhz6tdq3t3v5Xohlb
	 bZovPbzNBMhu73c9yjwiZtfl20dbBZpt0gbngO6PfA1WD39dvx5ftbo6O92GW1asVE
	 Yn8EmVuIdG+BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60191C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783629638.32641.4173607777184135148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642f8282c529fb6e9792ae1125914918d3e1365b3c71d3a882ca05627ddf1cf1
Date: Tue, 13 Feb 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707836296
