Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8935B125
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776813454; cv=none; b=N2TN1WO0fPo+hN1X6sGV4PEZOII/VPF/A+NKjedZSt8k+/i7BkjLJAGln7C0hx1M6PKhUVI1NpVltEm+3UzjVcjBP8zhfm6QcMVMLginJZZNReyPR82/7Qy66KxzJHB1DecFehdP17BQ90jl5GrRNKM5s1ZyId/YngbRXUBhKho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776813454; c=relaxed/simple;
	bh=dJ+4aelDSclfCfDnqhkcRAgM0p2qvuAeQM0+kvywgzs=;
	h=To:Subject:From:Message-Id:Date; b=JCrWNpL+kOdJL2ubjvXYlOAfgNzQo5GJbx7tqb49cFMgdrtUbJ63mS2dE1moQjfDNQ90b9ZMOvUyakPcMr9TuZGKESKJZziTTfYo4/20Nlr40e+keeWsFuL9BMS5bh8n43zDwO+TGG2dlOa7/XT76o7JhwQkZYoRR/fZJvC9Fhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI1dZ4y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI1dZ4y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6221C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776813453;
	bh=dJ+4aelDSclfCfDnqhkcRAgM0p2qvuAeQM0+kvywgzs=;
	h=To:Subject:From:Date:From;
	b=SI1dZ4y7HPKaWegTtxKrmddaFJZMcN70dEt2Y93wE48gDCqFbLlsblHeD4HHLAMom
	 Tb4duXCZBtGdgl6Tj4HTnq7L4aDaYuuUA9GUHL4S3dpYTAh6ZGVQ4D1WC3ho6As4dA
	 /MUi2g1/BgpOaM05c5NM9BdAkduWsH+jnQJJViAptYiHbM4im4ai2HgLaQHAoDE8vg
	 J5LiZlNJJx34E32DAHha+hFX748P7+A0mAWJ8p9xr8NS9/pTTncVDLP+qob4DJXPiE
	 4GW7vulAuF+r08saQ6QX/qpJturE0OXrmChMh+UxVvdhV+SWuQx1QmGvSNJ10sGIii
	 uIriE1pOqpEig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F55F94CB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681345368.27459.14711974349388091236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecac78b89c64c4211b67579df2525b392d04931f2a8afa672a7c55290cb674b
Date: Tue, 21 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776813453
