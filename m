Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249673A544D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775045134; cv=none; b=Sep9o2ng8P2YNgEIjF1BU28Y/+KwhUk1N+GlHmilPsLOcYagGUn/a1yhKEl83SoE7RcMVYsxDNmktD8RRykVfbGoTGuwB9geAg2Ydhl1ndNyqXE5CsGquK5Zj5CBxEAdggz+9574X69iEtpRap9xqAsiw79GvIFVJtUSqYv5glo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775045134; c=relaxed/simple;
	bh=M/afipZD8JVrCNUxHLnnF5TkOTmaI7kdpzLJPeO1O8c=;
	h=To:Subject:From:Message-Id:Date; b=drqtGBiNzHF0/70UoRSt7JL1H1q5X8HxUgq3H1Wu9cI+C9DKlHRwzbZbg1iGCn6fPtBAggkC9ipY+oeVIILX9OjCxk2qKVv65J3PgH+sSSTqnP40fXWUdRlsQLPlV2bPDsWAr/pQ28/k02xvYq2wjx6rr8Ac7ySt/I44movpQWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI9SziwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI9SziwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5D1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775045133;
	bh=M/afipZD8JVrCNUxHLnnF5TkOTmaI7kdpzLJPeO1O8c=;
	h=To:Subject:From:Date:From;
	b=SI9SziwNMJnhLmbUb8Gjg6Ck519ReZnmurb1bnTO/Rt+vOizRiuS8zzbcRpy8ER1Q
	 CkrsfZrxW/paxozWcxBQfKiBBiEAWfdillDPdiFwPJsy+2/58KsaDQUBjo74uwl1Me
	 M1pOIyk3fZwXIfn5fvHj8mChfCWuM71/XKv51cLXrLDFil1pZFWAiSs0rq5no4nZ/O
	 OHqJRPuk5TMupT5z/GqVSk4zjRxV2GqXLE8FPVNcLD0+/tiQWcL0bdxOAlptH5GggY
	 blWsd9PEQXw4d47c/f3HTyb7/NwjfLE5x3G1cywSTyW65/hfBda1+XU6rwW8uxSOV6
	 k0J/L00ZBVJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D7D35179
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504513369.1682.12808411768647170623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238beec914f5c5eb13b1255f8702dbf32fa75b038ba72f1900bd5c1931fff223
Date: Wed, 01 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775045133
