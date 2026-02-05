Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F73279324
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770321234; cv=none; b=LPrwjjN00P2hOEiARTVriuk5TGPY1JPMNSguO6Y7v7fL6JX++BNlbtrY29nXl4EFg2TXnOyW312XLBCWyunX7pIL8v5O4DZvWgKnBPPSan9vO02pnwxOu+IwzpTFej0IxgRczRil5ul6iB9bZJVoq8W60t/eAVFA82H/Mf7lmCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770321234; c=relaxed/simple;
	bh=7r7uy2fgLQO+tnO8Olk3t+jZvs6ZccsVir0sMZz/o1U=;
	h=To:Subject:From:Message-Id:Date; b=GuKOBv4BIoqhf8mpG1YTniklv/ScrIfFrXaACCWOILVNm+ZwCDdwNGkzmEXru7KtSkJj3BlBEdU5pTDtF8kmPr1sEq4bvUE2+/QAB9OWzPTOvCHm7gYxqxaxpuUVEak2yK2Y6ju0QyzqryHNFxm7tUmqHspd8HOVq6o1zM1G0QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKsg3KYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKsg3KYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCED1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770321233;
	bh=7r7uy2fgLQO+tnO8Olk3t+jZvs6ZccsVir0sMZz/o1U=;
	h=To:Subject:From:Date:From;
	b=rKsg3KYri2fnccioo7FmI1pZDGOEE1VQnT2Gfv2LD4mhLuAkwbQQyDi3C1vqfZkuR
	 qsJrPfuXgdw+6bJwDexx5PKPkBJhtZisZ6aoVpBeucgK14gqx2ZsJN8E+sBQeY7XBi
	 0Aznx74pADWDNvj+JgdpfqGuVSLjtuiWhdk27/3VfmYoyZa5s1mh1L5TBPJNBV/Ad+
	 dfg0L+0XkyEg3N/njdxrGiC54FZYvkghvgvfdGJjE5WdDLs5DFm/M4BleNegWc2qFl
	 3DpR/oWP8hUPcfXT1Lis03yDdGJ6qJVzPPWevdWXjP9EsGOJoqSmWjKnZdJpDMpLoK
	 3kymm2hYVDrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5056ECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032123366.3517.15840350447447866320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e01a948e75f0e275e7c1688651756c20bdc7a1ba5a476c270b2b91e71436446
Date: Thu, 05 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770321233
