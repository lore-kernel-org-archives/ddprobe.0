Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698138F77
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716731063; cv=none; b=TcSz6snrRVJYdcP4S6nTIV00XsBerLwwvu+zfC3Lc5V1tRkkuOuHpaSTCdAVrRi4tYDrC63gvx2mGrgyZdlHxdPgblWi+ztet8fcd/U2iNpACkbhwvTpm1a+NqC8mmyfPG8T4EnaH6yhb7jgMX2ZbjTkqAA+gCvveYd0NpW5+EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716731063; c=relaxed/simple;
	bh=AGQvd6i/ui4WXk9jfKyFFaGpWYGmfYz4GSROIGxA9qI=;
	h=To:Subject:From:Message-Id:Date; b=rq0Q53mVpQBnObodSnUTdQHV1cX05QKKVCOxLQ0UQdKJpaEYH5MWCY566ay8xT9dre3ce3Y20rFVGZPW0zrG5nwGSSeXaucfn83HZ3U0f/3SwI/2aAUKkkpPl2fA1P051UMfmwV2J0JZqG3S6GBD9prIf6vFp4PADjX25ZxiiLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn1honL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn1honL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB56C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716731062;
	bh=AGQvd6i/ui4WXk9jfKyFFaGpWYGmfYz4GSROIGxA9qI=;
	h=To:Subject:From:Date:From;
	b=Bn1honL77z9twTH627ytDUsSpou03ltY0Zfcm2XFQMXegWhNV2Xrbs+b/DBlgEzyD
	 DXQTjAqd3wtrpd1hVT4H0msQmMYGzXJuuuZCZJpscjiF9RvCzzD1jx75VoPd2AfPjE
	 12zYu6H0dpOUq/z/6A5QhSHsDOJphdQsNAI7asljW/MUGHUisALLXC8oEWql2TImyk
	 IQiNYXOFK31rbVSIWEi7m7azvfDqcD2ntPs4BnYEZytvbMvt1rnS3pPifaZTWmR5RE
	 JOCKe/2UcTAyfxtbZGLdQ+qryFYuJTrNdnaBjhMnQ2o5Frg9NnaQ+P1EI+XXlTQa5D
	 k264Yqnl7RDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBF2C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673106277.5272.1380391807558024259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753287fc2108431ad4dc8db00d9cf0848d57d078bf12f3b9f20d9892c6728c16
Date: Sun, 26 May 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716731062
