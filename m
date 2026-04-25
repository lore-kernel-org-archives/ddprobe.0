Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25298282F39
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777087054; cv=none; b=tMwvRu6EwROPamWIj3xFCqGndmDN2Q2yQEI6gGdufa65fXniV4poCt7JTN4eEb9/e5M9gDXafdsvMPQWJjZNXDV72dYMiAO68hBTTsCfcNOSIjcYUKjthpM6OthC8sc4IEdfRCM9//99aCoXcsvNOSZ+Ar34ehT/bYiUBB1wV5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777087054; c=relaxed/simple;
	bh=yUrVqkDiQvSot2bt+y5c8ix5lyCGINLMX08X2tJhYus=;
	h=To:Subject:From:Message-Id:Date; b=Iase+rjaLLPVTDdjNqGRW/xxcFeQuRHD5x8KtejqNNoNC/pt6s+lScviqQwILgzUFP3oei36W592CvR7V+i7I2N/gIuPsAUmyIEDEPHAEZRQ4Tv2YMVbuWcPEWWLPhZHPtQUmpM1H/QvvWjpu663Ww92XAo17NTtvIgEVUF5NaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdt0dIRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdt0dIRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1620C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777087053;
	bh=yUrVqkDiQvSot2bt+y5c8ix5lyCGINLMX08X2tJhYus=;
	h=To:Subject:From:Date:From;
	b=Zdt0dIRK0Na5BlNoes5dYdlrQBCohWKV4o4xXRCRxqn+pvLk02rN+IDvQJmK8+4J5
	 QjjuaRPhg3vSZgNChQQxnrtXXP+kQRy3LXMjLL14CQnYWqJh4fkkUpAZJe515nGhcx
	 GrmoRtOaqwR8C1qgl+R+MLJH6lcdVv+hsChwJ0KDbEOaeJKcRfX9/AQq6qEOTBsdJS
	 oV7Vp7RF/B6hX2/i9B6LzEe/q2DDHj6IvSbzOZElv25Zpn8BRulSJtezsuSb2D1Xm7
	 OoXr7cm+qgL2bkotGockatJSv0IwkBB/Yiu9073y6hspn+frjCzSH5rd1XzSmARPB5
	 8etRj0PNANDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5C4FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708705368.4733.15913003487480110037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e2cd02d9f16d3bdb116ec4f3a4c93d87dbdfbb938d3c76236d9f596e744371
Date: Sat, 25 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777087053
