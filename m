Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57D7146A66
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757432393; cv=none; b=iNJ5CvJ5J1HLGaxjpeipznMpxjlbLAXRITrU4v9qnTywzYu2eQC5hMbUiirT+TeOwpv9tf+xG573ibPfijVmXMaPRAxM/5l7lef1dnkzYikkAugKfLr4pzR7lLcUwxw6sD0baqKmaF3W0pKMp4vRmJIeFasWi+bbD5RTZQroVuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757432393; c=relaxed/simple;
	bh=74ctXl1Z9yl+LqxtLC/2Yon1CSr4jtPYxB4QWYuzniM=;
	h=To:Subject:From:Message-Id:Date; b=Hrq0fq+/sT7gafdRniBPVu/MRqfYQBLbku1ciznPRKCnfnIq3f6HSZkheFBDNjxesvlhcJJhsLdYVA+kC6RhkgTpApDm3Jre4XnhQycXeBgOKeYFC9z3Tf453YS9si9pHMeXFEppE8OyyVGtU0+cKzzm/Bq9HCgIX0TrYrHIrsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLyPwDhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLyPwDhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E25C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757432393;
	bh=74ctXl1Z9yl+LqxtLC/2Yon1CSr4jtPYxB4QWYuzniM=;
	h=To:Subject:From:Date:From;
	b=PLyPwDhTL9SGJMJQ86gH0UCxo01qQISkefcQrFgVDQGNMqTGcrEF1rMREPHFMHj/N
	 fBbZZ3FgzPvJjGJ75IhjZls4kLx0fG9kMMeS0UrEpG9dSBZ81/aVNaLeDi5LfIIiyr
	 l8ituOF1ur3RcRcLMRFvPxNA4+c0vvIw11HramcN4pA7Z5S4Ni88dUmmCOgY4jKLCp
	 N2PjhVUgdD4bDDTM/Dw+eDQBb4Pj5hK4xlivSALpExhtsuSet1hxttLIseXVv+SAjt
	 2eSDqYXJKwLWZwRsRmsUu34cOJ+pEdY30yWRbBYQE6pNa7SpDowi7ib/gy6WwDDVE6
	 7SeUho8U0axsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E0CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743239358.24287.14694228073652115219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02782d8f8638cd1e0f7bbf5383bd142463303a71c3b3f8f666bee02e8d36f982
Date: Tue, 09 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757432393
