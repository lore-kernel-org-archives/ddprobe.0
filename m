Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDA25258
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740881334; cv=none; b=E34auPWOSeuVk30gSlasrMed4Wa9S+KJSpnet6Jb7WGqA7iz+mIM/YoYfQ+SbpKMTDT2H44FB4LTiHvm0pVTiNoYunX/GyxFDEqm1pyqziUTlGUQBhB/l2sOfwevcgPQ0ZW7QsixF2LHkHZO09xobWvqTcNcVCoUSg1yZEKhc3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740881334; c=relaxed/simple;
	bh=DPsLRvD/WUdZgfOJDhUmVMjceYitGSX4txBft0tWsYg=;
	h=To:Subject:From:Message-Id:Date; b=qdvQYU4sgdoyf7aVaswMQUjLL898lqx3T+pUrnT70wiHWijmQRG07P71yZ+HhKdcwjrAA5pZC0sysfo7M1EiWq3uIvL1x+UlsZz9HiDwZCity5MIz3Zt2Z4/u/nHnnJgdmetsjweRUMdaL/1/urEYQfM5Jf7tT38UePgQ1yOShg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcClcpAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcClcpAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6333C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740881333;
	bh=DPsLRvD/WUdZgfOJDhUmVMjceYitGSX4txBft0tWsYg=;
	h=To:Subject:From:Date:From;
	b=kcClcpARRDetaHg1OjiEWgptUSXYtHsUv2Br/PsIpEkioZUITmYu5DVEUeDmyYFYW
	 FZ47NYmliZmXFIXBTnOtUnYbXpC/421lSMPID96Kn+y8tT4utCSpF4kHGCUTnBNwlc
	 ef1FO3k3wWu05e5nRsCngGW2D6j2enJ9nBO6OUBDDzJyMgfvLL3tJCLmA7WaSeELfO
	 GfAcWlw4O0ArV3nVWJG5lAJc4mH/vVC7uzsIIfLKWUJAoMKS5cPW+Pf6LjqpqRi6er
	 4HYIpppCfFjcqZuJKvHnn7xxRXo56K7Y8QTdyqiVNsCl1XCbHZgzPA6OLOv86u2Gbe
	 YgLhkPLSnW+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0168C021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088133363.29509.11943181774432887258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766fc61cf402ac252f9584ccfac11698d332174bd277035a9f9f9943223c646b
Date: Sun, 02 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740881333
