Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AA554704A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791418234; cv=none; b=uJq8CAc1KYLw0XYgh1v/ftVYBBtDLHGQEwAQd0y7qgWedyyeZZR61zyRH0bcHyIqGj4bHjjc2XF10BWp1JZOIR/WB+glyw7Ec9TSGRE/mgSOEOUCnXKynj84Rb1FI2jLIaPyuB7InBDICZJ8h3t+0RPmH03jCoQ0FGSPPhXO40M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791418234; c=relaxed/simple;
	bh=gBoJlZsg4sZMG8hrZBUU2UUV3We+EZoeT227S5Dcajc=;
	h=To:Subject:From:Message-Id:Date; b=jMAhMQjCgqRhUxrUxvwVhFE/BYlDb9ulINEx2sExn7jnwH/mE+npFqO5GnCRQbOVhCzQGw6APThhiGOGYrh/QzDeQycN0haZNqF+6ywg22LCeDWx6fxGtVrHd9O4u8frFmyoZrFLFWNQXQQUprBVVe4Ng06vWCkUuKdNalFtwhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARmFzPp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARmFzPp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98D1C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791418233;
	bh=gBoJlZsg4sZMG8hrZBUU2UUV3We+EZoeT227S5Dcajc=;
	h=To:Subject:From:Date:From;
	b=ARmFzPp3Yv4zocPdVTJJAHoiH2lwS7g5+BMzl/+27SChROGDVNjxhqWDsJuh3OSyG
	 FVX4qdc25g1th7OD7W0Lz5gmcTcI6FuBqoj8i3PXKfaGyCnaAtQ2Y11J9p5rem4j0E
	 1pYYkkgNfY3LLsy8AL51MUVM9QYXnQy1qh0Qoit/OjDiEcBPyyh5D/5xB5snwMTU2b
	 aWRWedfS3BzlafAb/Dm/vgob3lIrmTR3NOD4AnKqvuN2kjMcL5ACKa0gfY1ZHzC+X+
	 Z8EcE9ZXPNfmWzKg5oDR6ui2cyV19vy86R9Ed3XrVCIzvkPbR0x3Po+2AxfWQZhb5A
	 EvqPjhFEmxFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1430CA6009
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141823369.11035.2378276796396735019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b72cb315e33225b0be1677969d1e8288d7173c493605396bef817a37a762329
Date: Thu, 08 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791418233
