Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62032437852
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789707034; cv=none; b=LuV/V3Npy8Agb520w/R1genJtU/1xxNNwnSvqy+pXXPEv3MxnBOv0cDEOUXXawKhExcX0x3VhW3R5MbsIxJuzjTYJOMxVk6VlPEUyHp1aM0x/2kT47AIwCbr4fRjhDd6vE0cvNGd6HZVy9dexb0rZEOD4co0NgvjRYo6EohqiEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789707034; c=relaxed/simple;
	bh=79/9c64YeWuPiv2LtoEPt/uBNTiO5i6v4/4v6H81z6w=;
	h=To:Subject:From:Message-Id:Date; b=EQboZ5LVC+3StmvwPxyLNARL1gUpS2LWWDP6HhTHCczz72HY+RVmz7fTZ9I9TNqXrWG98Gr7/Jw9EUA08ijTNBQmB7n8IFdr2tiU7i67BEtyBBYXXEbcqF0vCrQ6uaQjdq481PqkhaYRydHla2txKj4v3jXybULLEX27fujVVUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFJRwYa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFJRwYa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3178C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789707033;
	bh=79/9c64YeWuPiv2LtoEPt/uBNTiO5i6v4/4v6H81z6w=;
	h=To:Subject:From:Date:From;
	b=JFJRwYa6g6VFDMyomct5lGQEaK743msmX7DLxE/vMk2zCPi4tN6zGVrk1Jo7Tyb7U
	 IL0IPKKRjt+Y1I1pgNOI1ksW2V6mjbvD72I2TWDjmfG6+PRvsAszGPoSrKOymZAXyt
	 UIoJKGVer4xYy2IM9PDY2NqY1l4iQDtUByeXjPgHPn/N2dtjuqqPvKgZtNcV0sH32T
	 4Wt0r3w1CMfJYCWm4mukG4XOawFbjjdonKajtHmuvjOWwy0pJUW3bIcNVLuQTOvXgR
	 yhIOVtT2nWK+0AuiUPvYMQaGrzaZgoxPkEwOpbR2eVsj/dab6Q1VNdj0f2bfQmx2TK
	 oeO0u/3NYPCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1ABC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970703369.18954.1665226321648773145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1646831a526fde8490c154aee077d66f744e00e184cec11db7724791e3bb2916
Date: Fri, 18 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789707033
