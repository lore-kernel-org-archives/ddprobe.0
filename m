Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4988D456299
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790069434; cv=none; b=Z1gxDQ09RK0PTp1p7OOz4ThyX75nwbY3YZULsRRBFpKZegM9aZbaRS7Yc2zi1G2ZHT1g0WUgy+KfJ7uGMWUGc+SdCbjgoJx98rWsOEpG3Kj2AGCHgKYBcJgJYDNQoc4dYO7LAU2MAAkPxM/wZIS+ZKoCjX1l4+UzZpF1j32k0zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790069434; c=relaxed/simple;
	bh=E3w9msqgzkCSD8ek/PSIJH8nfhicPbJWIVt7lc4C/BA=;
	h=To:Subject:From:Message-Id:Date; b=YyOrbhqs5SHyLhBOdQY++vtd3ytcz5bD8QuM5bUrS9LdjYaL1kqalb/EUap9/BrrbwmD0ZZragO8Oen7T8AeZQ5g0P/95vXW9WLubwnsaaYcx5mjQQ+vNW9iDpnVi3Z76qcwMZ3PvpuHSBDB3IUxaSVOEUwXCs7ZQhVWLCPLvwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciXFs9LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciXFs9LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF745C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790069433;
	bh=E3w9msqgzkCSD8ek/PSIJH8nfhicPbJWIVt7lc4C/BA=;
	h=To:Subject:From:Date:From;
	b=ciXFs9LPjabTFeNEDpuRex/5lFPWjQ6zriik1TX+THvpNTd9/TajOnilHHPD+Pmq3
	 ynMJ7nPq+uwl9dFundT/R7boqq10uWEsY6uGCOYDz5oBFWItdMaaqBO70bVEFt53yX
	 qQ1HmGMDyUp3Z81wCdOyY6rBLHsk2vFv7odI2Y8462sHhoQRsi7/lda+Fo7rkLKrGO
	 xhxWVsYe5FLUJYAadOCDyuTGRvqBteQqavt5A+e7IH9f/dctFk/FE/Ry0flTSSKia1
	 aJyrqJro1S1Ud0zchGkuDZHzpe9lZ3kouVlb/S72bHcXPgatgQPKUPa4DbOCPxesCU
	 blbmNWzMABn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEBFC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006943369.31836.12451764662909769060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7eb3e8c91ce53eb6fdc48216a531b1475c975971003cab37c8865a2ccad49a
Date: Tue, 22 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790069433
