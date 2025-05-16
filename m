Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFCF46BF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747369795; cv=none; b=o4qwqCGyHKlYQRYyM/BBkpTBbVBvdwB9F22sSqaf+zAT7na/pE3hw07A0n59C8m76BZTsH9eUf+LfKdXV36ucDgrmZfjSJ8HgOaWoZfrmp0nkbRKBDWK93eY0bCckZehBKLanD2EIhn+F5IwslLmbslqv1+9HBd87J3Xlul8Bc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747369795; c=relaxed/simple;
	bh=X+4sbCSMcR4Bu3nSQpChQzV6IaLlLrVI+ppPzbNSTAk=;
	h=To:Subject:From:Message-Id:Date; b=eAOrRTZd9qTz8BOKPiooCKnYe1I6gx+IWRsG01K3/SMNPWLioAYT0Q99Qxrsc+QwCA6aXjY57NeNK/tGFP/HHwQxemVVPzTgQfKFPSC37uJki2vTMmIbIBHKTAqoQPBw8NOfaGnfJaH71qlBHudUDLhf5RdJkYzfrKHM8Ztv8fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPFSlc4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPFSlc4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7371C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747369793;
	bh=X+4sbCSMcR4Bu3nSQpChQzV6IaLlLrVI+ppPzbNSTAk=;
	h=To:Subject:From:Date:From;
	b=BPFSlc4bEv8yrBRytp53KxuiZptKrQn5gMgJgzMhzlCXs+/AcnviCNJWUIbpI4DU6
	 0s3Me9V5rRnLZSOGcCK2pRJEsP8GormBaO7uaCIVpUwtPjdnAjH/bwYVgGowhgRGx/
	 FUWJd2Rgwu38sE6vSd5l5F55+7KOxLVq7BwxFCPsiWwdaVC2Kp+dJWuccX04u1t+uu
	 QECHJR2KwNE+MCz5yATDEXv0OGJMLOJO2v162yvUBsFgIcYyV2rfIFyUwJJtlcCtd4
	 LIUzLAAWpzXml/fKwHlGS2pJxa3PgadD8T6O1P6/zCCIg9A/Thh5GJnikpb1xYlxMC
	 wan5GBlsL6PhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93575C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736979358.26184.14772291451045266162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37585de2efac12afc0abfe007f1b7ab29f74b2ea083018206cbedc29d3685e9
Date: Fri, 16 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747369793
