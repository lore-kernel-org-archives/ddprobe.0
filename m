Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748E9372675
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778225254; cv=none; b=MbxQ8tCYDlVbmJYfzIQleYI1ohLnagx2OB2HQcoFF0g6u8FHCkw7QI/1edQyXX8LjlLxcjgw+MazSbu8sBGku1Nmt7aFT0pufEd1h86gGy12SHs4cFqxP7gj7oZPUeJnCsiNSTRWe2vr8mUHCGchw+/V3sDiRCLZZ1VulUsdAuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778225254; c=relaxed/simple;
	bh=28LHWvr7cpCkGOCAl1iNnvmNXmQs2E4q3/gbiQMiy3o=;
	h=To:Subject:From:Message-Id:Date; b=af6HM8Lt60C2OPJ/rLgI+LVNDelLDgfonVkp40bbmd2TtZfHTaHh4GpT/2+S8crO4j1TCdalIMG/BlYggCkLxB+p76w9Bx5UCkXfuYM66iEhq+tZL6cW5s8cfr0JXdb4DvBw8zqKUWcfDbBFPFOIHwDLG1RuaOy8Yh5P+mq+9LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg7xMhYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg7xMhYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A59C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778225253;
	bh=28LHWvr7cpCkGOCAl1iNnvmNXmQs2E4q3/gbiQMiy3o=;
	h=To:Subject:From:Date:From;
	b=fg7xMhYLCkZ9KmYcQFIHLmgaljMGw7JcH1eE58LpkW7DJpN0bMeQQ+u5+jGaJFvd3
	 +/otY8RCv+Eq09slCl0bqWzlid6waTyjbltAulU5F2EPkK9K6T+Gy3MOvs2TlH0KC5
	 PoFPxytZlRpBcjoNcf/kgx0W+PdZHgd4l+12izswh0Tpj2m/Xd/WQukpDqd0R/JWXR
	 naWuJ84SBa1myLvOG7Y9T3xuzcjyc46Vp2/wcSiwY6TVAYDbnmtMKD0T2ZJabHRR1y
	 BPflKlMbLCim+rpsToL4Bh+WfV8IC7xcEbwZz0rFlOShJQMnUDs288gdJMfsldNUmr
	 lta74nlbsLXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB30BCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822525369.13064.10713041782402298959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39581f2d8f57846d6410a658ec384de940ef824211f34e82664b3719ec26c7cb
Date: Fri, 08 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778225253
