Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B56F06B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759794594; cv=none; b=kmDT+09+pT1p3E1a3bwBrZQH2ncye1e1rqjUI21D89peV2b9hfgxassr8i4P3eCPmhtNi8pVCMrHmX0e6J7yv2LYUUz0ffBbjlRwwTG3Ee2R3mP2/RwuR0Eda6aVgd1SXVoJKSGA3AYsZcTADvr9+kQZI7HLhxC6GLuB0RxutIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759794594; c=relaxed/simple;
	bh=doqlDtmOHAPHLpTXm4I0iCOH/mk6/lE5mnDQ4VY2uNQ=;
	h=To:Subject:From:Message-Id:Date; b=odmPKn56I07z5gPUTX/XQTw3diQvtohNug4Me26rn6vv1+QAIbhMT0sXsQWOUj5xFTmovNJiFhEKqtsSlfcs86D/OZCgHWYNTPXFBFHamBncA0dMA4GpSD8DphjelZ5DVxq9/f/aevL1sLozTOPTW5z31rEtFhXYrxHPvraOa5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIZbH9Kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIZbH9Kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5436C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759794593;
	bh=doqlDtmOHAPHLpTXm4I0iCOH/mk6/lE5mnDQ4VY2uNQ=;
	h=To:Subject:From:Date:From;
	b=SIZbH9KlP31VMivmJtm3QSQNW35tK9R89D/SppEc/NqiNZWRmCZCsZYbo6BR7Zx/v
	 p3aDNI9E/Wh1nTf9xg68UQWwb74Wg+KrSYxlRSV6GbAIC6VzIO/Bgvw0uHEDEbljPU
	 nC9nmi8m923GsmL414ISglT3R9WE3EI2wL1fcZoupGOrkvWHg+xhlHpg1f0qi46Nas
	 Ng3GpXBNvFEj3ul7O3owOcNReK0yWBH4cspPA86giPpT84bEc2vpBk/b+Cn79bG4wl
	 070eQx7qfiI2GqRC/uuQQExvWtC4/KYj6j5xArPnwOs69dl0VXu59zk9xdwuy4dpmX
	 a0/uhdecO8fxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95750CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979459358.27818.12023322310267364797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99d8a864098b408a1c73709485172c61261b80219e497db17f76f106abb1181
Date: Mon, 06 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759794593
