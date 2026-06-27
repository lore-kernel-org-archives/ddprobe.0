Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D0D331EC6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782528514; cv=none; b=keIKvMOOGJBk3/Ioep6iJaRRhzkx3cBhijkWaCAXXuCxDAlt8TZPxnmBQ1033IHjymubj9C/6u1aDVAUXJ8/1ciVfL+wRVFlBGSJEV5AGXh5N1NWHakqv4dMT5q4fxJzQkhuhZ2Gg+AvqvjYlbgiaDkLRSxboiMRjds535xMoGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782528514; c=relaxed/simple;
	bh=fDaJL7fjnJfXiZb81js+kGlSRFniRl/UXwYDCyqtDRE=;
	h=To:Subject:From:Message-Id:Date; b=eib1lMEmhYmp4BrUmYQIAiZ6EPCJ6N8LHHDiX+Za9j9MV7BIXiZQzu6uMgn5BC1vKHHWj6NK+DpcXiE31+pWIIroVsZrkWlbqvs29SWokQZ5s9BSKzANMOnklF3tixWK8EcrsPeiOttO8FC3HQTvNtZhEhXct5mUTpOFD2PZ2YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK8anVYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK8anVYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA564C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782528513;
	bh=fDaJL7fjnJfXiZb81js+kGlSRFniRl/UXwYDCyqtDRE=;
	h=To:Subject:From:Date:From;
	b=UK8anVYPck3ce9wUNPRHBTMfUbj7pG4mcBAt8sqTnDqS5jUVpp6/1cvD4T5Ik7pcK
	 rLO9UXDtik7+wEAxCyWZnVOL3LvYcnihX1P3NOtv8wFa7BjbHt+wi4gdns3ypfTeOh
	 auxfP+vXJcR3TDrp2oyciemin6fCkqeiE+Tdbt6tztrEjn7Rze0Les4ccSuKTko7H4
	 e3TOxYv72QbaYz39ii+VYYFBZElB3MBo3/OqPFWJsmVYDGAcgaUodGWK/PP8eHxaNB
	 uVgU83gGL3EZu5Ip1jOTDabpXf1ZLr2rPMLuCfjM7ZS8vZKsLBlzTD8rAdm7kgrJ0v
	 rsCwvrg2qPyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE5FC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252851370.20033.16359647840337444284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1621349e30b6820774b7329b30dae1adb7d9b846db355b2135d761f21ac9e4
Date: Sat, 27 Jun 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782528513
