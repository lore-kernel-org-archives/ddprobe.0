Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB7921767D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780803874; cv=none; b=gPiKSV9r9qgoIbqd33KJjm6aocxtO0PVfrXzymJYlxVS0SGq86mlMQPvNgQfds/3DQgX7HNs72k+MxaVKa00mqvAY69dhyeUm1QsWhu2f8D6Ggol/0BQw2iILU001P5VGAHu9UZqbkSubdqzMA3FlJZw4+qIi5V9w3HW53mSBLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780803874; c=relaxed/simple;
	bh=5plwI4U6TlWGTaL56stB8CcSeylQ0aREpRjOxPQxOy4=;
	h=To:Subject:From:Message-Id:Date; b=nQtboAsrNkKnAav6DrmgC6EKZgToGzQX63Ki2cOk/kVlIXadyGc5vU/axfJ+obxRsbefkiWvLS2Sv2RkLUsbmYea41bYXOEb5jKutrKoUcXAq1HOArXLvfuPfuLnre7dwix8eJ0lgJWOwJoyDcl93mV8CDCGbJp43zbFGuHn3YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLvYr34c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLvYr34c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C317FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780803873;
	bh=5plwI4U6TlWGTaL56stB8CcSeylQ0aREpRjOxPQxOy4=;
	h=To:Subject:From:Date:From;
	b=dLvYr34cJIayYnoTwaGYCCN9HPWjbkxHBxI3PZ+oMFcovx0NfmVW5bDdsF2Iu86pR
	 JkHsm0R5PfQy+9Xpn+c16K7VJ3ovVn5E7TdsW+SFiK5b7AbDn84lj3eOGNIVZyEvWr
	 QyDb7OJsAY9ccsqWxnkRU9zBisgWh6DP3Tx6i0iGkSyI2yir7+t+zKT9Hb6gVjXTfO
	 a2PRNHXGbJBG4QCCKVLi/l9+hHg8CQ/KTDoXbcLrY0Ag1CDYXAcCbTXLzObi/FXtiO
	 hy87dtHKN1Ev3teTENTrWY7mrdDwgErTq99p2A8/XRdgnCMC5oVYzbdD1A+FONWgEm
	 U8/iYgvDJrI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E5CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080387368.28870.6112408567513341027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2709682d7a5d87234f8ec88e3fac52b32c2c7e6d7d85e7496f45e9251def32f8
Date: Sun, 07 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780803873
