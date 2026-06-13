Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3C215075
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338594; cv=none; b=QQCANKrDT3Eg9V6d7KYBagpA4Wa8PB8DwRfT1OfpJmTYl/8FotyuULY/0Qg5GNLODfWyB17eMWLvK3nJVbAjTMuzFB7V5/1yDZ+2hlOamk/p+vmtEd528/dmuH4OyleTvJIw8Y3489BB18HRnPrmQzHGOScAYofDyJufnnRY6e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338594; c=relaxed/simple;
	bh=go5rN/qEztUC/8A6OKm/RMW634p3JdUXH/LPCMsXVe0=;
	h=To:Subject:From:Message-Id:Date; b=LS1XelkhcxmhrMDebXwz2r5wqLPo8eBw3WWYu6EVgDY3Be0aqARG9oEWQ/7jMF7mcrLCQhgosU/YGn19ka5+2x+NcWCFWMRxYF5B1A69/YnO2m+d/+d8bvAQqxqUq5veQ9ByXhn/4EjalLrgHjIZO6K91meqhJ4g6c3AQHygdF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL5S5O9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL5S5O9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC87DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781338593;
	bh=go5rN/qEztUC/8A6OKm/RMW634p3JdUXH/LPCMsXVe0=;
	h=To:Subject:From:Date:From;
	b=nL5S5O9y/Az7hPhostKuM8SVcCdodl2HDekfDYZ0bzOjoAU8AvDUN0ROnsVVRZQte
	 TEQn8yXMv4Mo6ul/Yw4PaKwHFwwLuji5G24hRnMD9HOckbupM+mJ3DMNAwGsm6uiJm
	 kNZu1mi5dGSNNGgTamL1QxZG55wJkeZz96rqHNdlNYvLayRdhot3WWwae285NbIBAC
	 9+eaF1MpfyHNge1SDOG6xXJSByjCZI9ibW7v3B92QndxAHdXx7AxtZSdSQ20pDyvjb
	 bOAw4DgrbOdF3mBsJLPFWtnIBQ0RLwt0BS0jcjnWAzWcamqdtQXindeZ1/qZnNfBH1
	 iQq7SXd6LPfog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2071CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133859369.13481.18368169607563733271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7312a22f2d8a7c2dcb1ce32d5139045d94c23f0e3dd2ea585e57c11f67bcd80
Date: Sat, 13 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781338593
