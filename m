Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A24205AB6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764972773; cv=none; b=GX3XoXgHLAzemd5qNyGWQADCGztVyAAhsLowy3Pwy11gVZ3JIPz6Kr6DDUH0BbtWOXb2IVdGdKp9vXd/wUzbYUCBGHfkszjr+qgBpXmFs03/UCsLPToGPsQcvzacqrDUjdzs3drJFLwzRe6FCBioy2aCTEbam6gq+XluwW74W5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764972773; c=relaxed/simple;
	bh=ZjuwaPQl214u7bDykn1ybB5IjzzFdsGVqiarMP9TLPA=;
	h=To:Subject:From:Message-Id:Date; b=K8E832uvR+1rlq7Agj1C7XPhGHSATqcETkgj61oorEvHHm6MTlU4rLCnFxS336L+spBfo+nRqiSKcpTfKLitd2U9RHrqWYOXQ8aetfawKz+SuMEKZUjfT4v+CcUvfVGKtMAx0zYuXk3jKvMXF0Ktgu/Rz18hMmcwxI4Sq+D4xdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adhjGHu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adhjGHu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8691C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764972773;
	bh=ZjuwaPQl214u7bDykn1ybB5IjzzFdsGVqiarMP9TLPA=;
	h=To:Subject:From:Date:From;
	b=adhjGHu9r2HtuJbEvXGc972CZiFVQ+09hTDnrhR0xPyjoQdby4wHheKOrjD1RLZP/
	 YNyc5BPqRP9MNPg47r7TUDtcyKAUPAd5ZxmmjMXplF2aYdw6ykOmcF115OgPv3+dqW
	 nRXinJnxqbEfpSEp/BgVmGc9pMgB1Eb0djFeIlJpR+o6FjFDcbmEzKcfy8OarTGmN0
	 yBKKjHDmj29naczvx4u5A6Mx+K+seSx7gr00di3mQAHUI24HKrvcd1AfpPfmuGGrgk
	 bkzQ2p54i4CiQDH+lX8u3fzjJAbe2vkbGa8/Cg88VG3kdgwno5pKvSg0tBc6Ob+jrJ
	 E3N3Yxa3DH7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A1D374AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497277359.32149.51095641621648002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a8b758e457317bcde887aa530576fb7e8f1f1153647bfe004e9df7e64bddcc
Date: Fri, 05 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764972773
