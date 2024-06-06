Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E64119D898
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717656443; cv=none; b=XtulAZHBsHiIDCNbkt8SKT/lGzzcYM6sTlvnhz23dxO6KP2DkVIkcryySl3mbhGOFbB+vnD0o8+l62b7mHrd+uhGZTiLMVZC+JJPUfJta6991eI83bDrgUfrBcbEjOClOV0cktv1mSexLthkL1dk7HSRzPHNLEIot956yxkqAO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717656443; c=relaxed/simple;
	bh=0QCiDVbsqrjX9LOz31rRX/VjTdl1LXdtZBB2tHLbuhU=;
	h=To:Subject:From:Message-Id:Date; b=Vuak2cAIbahMka4546qWzpR3eik2qsVLLzC0Y+PsU1YWTwqb87whKS8RCSOYUMaQZ1WjzsfsDcfIga6xc97hyiWNtn6yM1LNzuKMwDf2bQHVPpDu+NIevj4atGg2g/yjVYID7KQaPJvIsrs3je81bfNKJ0ibMPExdT5hIITHzQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRAGXptd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRAGXptd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FEDC4DDE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717656442;
	bh=0QCiDVbsqrjX9LOz31rRX/VjTdl1LXdtZBB2tHLbuhU=;
	h=To:Subject:From:Date:From;
	b=IRAGXptdE5fexb9UGAyMEOmK4Fag1xujOsmbtzIgK71Ao+JYenRCO5Hk4LsJiXNoS
	 cqTuV2qQ3PE1NKOyRq/dA+CxevBtyO1asavVz6xy5/3xc1C+9qHggYQHV14oLzGhwz
	 XAxZkF4M/ypFovKmdPw/qQYaCOoaGxy9nt7GIRRPBBwywTamT/9hQVuywfvTh8JlXy
	 LrJOF79VbJEsxFMHNNcMBDMV7OGAfPl7GwjaRfrY6kjUp2IJNus6TZaofvYXVcrkaK
	 /heraB8RTLr6+rAzdKI21rffy5lfxVGf7CxDOd21ROzrEfV3FvKQD1BUgTdHkoNpu5
	 2puPlyxc752Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB8BC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765644277.1465.17854471024272142285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a77552d607dab1328ba744a3d7386eddc3185dd64a04e7fcc165633c041f520
Date: Thu, 06 Jun 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717656442
