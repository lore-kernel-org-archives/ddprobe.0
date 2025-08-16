Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4220939FF3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755385794; cv=none; b=CJlFiw9RtO3U4NOg5oeYll5liEywc9EA2ymIVMsyQnjZQ+U8Z9k3+2UEJvScA0VrANQSc1b7V1xCro6flZ8B67hMUi71Gu5DO/tAF68c4KPGhtzLWKZBdaFOGT49ytcXpapeFNYMCcPrf6kF2ENgIGZ5MjWTLfVTrR37QsqhaRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755385794; c=relaxed/simple;
	bh=d49uyHxz8Z7GcXNpiAT1lidNVunF6IJeA9uCojpc00E=;
	h=To:Subject:From:Message-Id:Date; b=f7gPbfat7mFfoHXBIlYMJszCTwbmH4NNo4EEqAkGCGaCz5xh6R9p2aTmVA88zaecY5CPL2IJ3ahzxcKjQEcas5Hpi6X/2FX0VInED7C7SBhfxtD7P89bIR0z1DsEtclt62L5UZRrU+0H/FLVEyr0gq8hCGb4dTGSgN3ltQhJ0K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMhoDhOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMhoDhOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755385793;
	bh=d49uyHxz8Z7GcXNpiAT1lidNVunF6IJeA9uCojpc00E=;
	h=To:Subject:From:Date:From;
	b=JMhoDhOoR6V1afhWrGweui4zoLrKHj/mAoZp0PQ58msPiRT0JqTQw8m0r+prZH8Yt
	 xr+oQ0bltiv/9qJ7RPLCqDNeO5dQkAlScYP2oNNk1zYBggmNjlxcp0qESo2Hvzz79X
	 cSCtr9XmznXMDj1z0TZQo3pMkWIPD3TLASspWgA7DFT73xIxgdXlJAj57g2t7sIUwi
	 FeV9M9NfPLcNxOpemnG63RGA8ATcWwxBO34OWDMOf3nTfCu2hkQ/W7014fUNABeCUa
	 OOaZc/4jkh7EC18i03mObwBAHakn/k/QjKiA/PfD0IRCLPqBfIsqb68/Yq87sZBQlN
	 GZL7KkMvCWXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538579357.9841.759194239289015697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b7f47778b564b784bb9cc1b536b150f9bf14a005a14201e8a88161510d5118
Date: Sat, 16 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755385793
