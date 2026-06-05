Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0034A799
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780694674; cv=none; b=nizAbMGenS7/gfk8BiQSq5YPtFlwQLRthMyChtOxapR32VwgmFwFUw9H2xdakuKNYLfpoPLk/FUCmmT43FeGfH0o25wBzpWi0r41NOqGMhv2wydVhejjUdKqrLiYPT2Ixi23q79U7gkL2X+QJDYE1Uz3pyqPnw7/SE4SZqvmevY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780694674; c=relaxed/simple;
	bh=gEEyRKJMOseGy/YbPHzHCLeC2bodpqFNtLmM1mdBZYY=;
	h=To:Subject:From:Message-Id:Date; b=onUDXBFDbCLPXXmVG8KrKuS5KG2A0/FO85jbu9sAdVeKfQkwSMeHefKXAfq66kv/t8JbqUeqP726JPRwGwLNCyLRjPdBP3AHYbEC18JqgOMOgYIdqF0xaDhTHMBzTdRecO7MmZosMAT7khwrZ5IBSlYPZDHqkK3xvBhqRsNip4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsCA3q1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsCA3q1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5048C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780694673;
	bh=gEEyRKJMOseGy/YbPHzHCLeC2bodpqFNtLmM1mdBZYY=;
	h=To:Subject:From:Date:From;
	b=FsCA3q1+bBPOIeLc0mmmii5L19aCYgnQ/YkJrvUYX25GOm5/aiHQ6FkMGV2waoyGd
	 jTDjdHBs4PV7cDBWDJ0VA0+UcR801975zJ46b0CplRMR6aY6BO0oXjOJUoqCFrsROl
	 nkY4B2JK8FC3+Ft+K3cSkENy7UhQnk8QiqnG6fue7S8Rp/CttzmnG8AD1vSEPgCbz3
	 ZvCm3nZOWE9sQeHCr4PhrtJvXeKwxOW4QZvsgHpp2W3GGC2wtt/IgfrzXBPxD0h3Cq
	 lFILQJWaOYXp5BZJNTjTOQz5EbnLqPVsGERrEiEHsklKmEiePk9znwMPHKsHoieKgJ
	 BweFYpCGMlDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE6DCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069467368.26150.5842444203882715050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e298f3e844bdbbb5961c0bdf5302f2a2fb69a4b9452a700f1ebd079812021f50
Date: Fri, 05 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780694673
