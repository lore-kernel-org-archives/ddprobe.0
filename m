Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C490176FB1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770822294; cv=none; b=Y2J3+R0yrkzUgXDVbeftrFV+zDbOGxPAQ1wRIr85Mmy5mLYtsK3e19eHNGESurp2jbbCLu3E+42T+qSz9lNbRr7z9meMuKfiXwl2uKyWdimgyGfBTrZiVPwhymwUf7jH4cSyHCEO/bdYH+RFrl7Q/3KlIdZ8oCImCMxi9UqwFeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770822294; c=relaxed/simple;
	bh=Q3ywJb3cYSAIyjj5hGNNFrcHLLIhjHSr/+xAM88H7/k=;
	h=To:Subject:From:Message-Id:Date; b=pD+j96PluU0o1JWrIMJ+9PSPzsdLafPtpuGuXBBuD1yy63bE+5r7PTM2G8y43oghf5EzHPCZ9BDmUKOWGjfeT9anFXvSQjYlsatpCWqEBPehWXzZJG8Eqs60CIBHT7im8nuT04e8hfp67KuyMdKq57jMAtH/SnAS39vknpSDH/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiPcO74X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiPcO74X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D8AC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770822293;
	bh=Q3ywJb3cYSAIyjj5hGNNFrcHLLIhjHSr/+xAM88H7/k=;
	h=To:Subject:From:Date:From;
	b=kiPcO74XSehbQKNfXdlEiOBkqOg1TmkRQNSwIZGYqSSyEZaM8VNBgf7IHxUS30eXw
	 TuQrbfMj27MeOmDYNz3wqG+wZTe3fTUcBEeRapORWTT6ghObNRTuCTRff3R0UR/ekA
	 5HwOj7RXGMmaCMvBTSrp2I9cHurPgRa/Cpt7PNOvZWPYrDWfLFjev0JGW1q0gHR+ri
	 3hW/24ubBVPowuBPv4THWK7hh2gEY+nzzt5ymZx27VPIXAZw78788mAe58vj5hxiHA
	 EfqvmlEJaSejwkBjdwUdCFcyDFllOMaIvOsULgANjPsuISL2mMNUGeVC7xOtEPJODj
	 kfJBuOBX+dq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A73E9E31B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082229370.30867.8530131079268973502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12a37f4a145c6f4792a691ee108299fd2dea5ddc1079faf9f28670e65fbaae3
Date: Wed, 11 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770822293
