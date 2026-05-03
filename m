Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13D91A0728
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777798054; cv=none; b=UNTLdYCGLQU4UXmHSRtBQbNR4dVdADQXkD3puU5WJXZHU6SKKiGRW6yjV2rn1iRmugUTy2EKbj4piVrVsy5OkE5YO0mQwSEWUzu6AIMn3oQLX0ZBUauYmwDcz1frVnLlHVC5SDxZO3k5lHPiCBBPhUGJkFmSECwf91heUbs7RbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777798054; c=relaxed/simple;
	bh=DM06E0YcTCA6COIerK29k1dZ0/kbtIp91d+3F3mu8Fs=;
	h=To:Subject:From:Message-Id:Date; b=UoVgp/4mYY/sxaLjGmk9D3fE18AaZD+m6R2bxMWX+wHFDb3l7wf/dtSE7UPdmBLS9i87Sd44CByCzdXUPTap1noTsuPhpykyvIdrXPImlmKqJjjn6Oa1qgrijh1gm1vtQ3foRvvo9RNHrOlXkBC0CSU025SbUiSaV6nxyXupEhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPy8WCxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPy8WCxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA573C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777798053;
	bh=DM06E0YcTCA6COIerK29k1dZ0/kbtIp91d+3F3mu8Fs=;
	h=To:Subject:From:Date:From;
	b=MPy8WCxqPcXIgj8vOqHWcEkqinBwGy9XgDC5U1MF5m/Y05fSwMiIbNPTCQTUjD/pc
	 WxG28T5BcEB4Jf6C7JmM6NETq6I+V71QHXXUpPic9v8HaVDhee7vcMao9D6BU4Zu/K
	 4UKV1CHxybFkeDhKKB2Hr7S9c5reGOOouzAJfl59/j8CpeNHfHXxILtoRUxEZrWSGc
	 PXjv53Oh6KwVa4aHM+p8ZkJbYcgWMd8JXZXiJL6zWLE3+uydR+5iGFRk0VIsBvCzuV
	 C4U4N5sfryNjQsP8lOOQhuIdsX3XfiqZby9etbCVCicqZlfRMCJd3hSnt0puYqe+T1
	 Ro/ZrG5PgNGow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEAFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779805368.26204.14303752231164421621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560c47f521a8b471fd7172b6c06c656e033b93da365a6cc640b5f7d22633ae04
Date: Sun, 03 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777798053
