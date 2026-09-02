Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1C74611E5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788393034; cv=none; b=bL+x3bngxO5/8RxcNfCYjOT2DqamiDsoCrJ9y1/rvQAqlsmaut0ldt8k4U2boemlBe1ctfsl/NsrqmNpeVCFnMQUnt6Vbghff2BryM3bqw2dbiNMlIxHa86RiTA2ZFTQktLvDfh+1UP/k9In38iHl3nFTxH2a+F1SncO/if78qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788393034; c=relaxed/simple;
	bh=128L5psTmg803x1Y6qwJdLoNcyVXCizzUnh4HYCNrdY=;
	h=To:Subject:From:Message-Id:Date; b=RKMavkQY9rLW1OzUsV4HbLxtmt8quu6YkPDM2unW21OArtUBWCVOQR9/YhEqb2oopr5t06x0Sl2dRHy9zBUJOUhxo6fWUrZmQfQMiCCUD26ePiK37NdbYn+xnOm3cEbKPGrPbY14/Kj//YQLIL85/wZ6XxqsFaEAX+JFmS8kMSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVR5L7o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVR5L7o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED65C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788393033;
	bh=128L5psTmg803x1Y6qwJdLoNcyVXCizzUnh4HYCNrdY=;
	h=To:Subject:From:Date:From;
	b=PVR5L7o/EGJGyrFav0L04r4wyToP3Uv0q7a3aHN9RzpfmoMcETTvMRd88U8Ng0uTV
	 DQyiFCp/MER+A83nvuXH/Aq9f/BzE9M8U30uLIvjPa+9Ibqb1ZFVlZwk1P2jFyn/X+
	 P88e2Pqw9g/rl/YPhUz4lLeoeuAXIPPSm0L6mCMUkx4t1E8i2wQRnKQf7F700+0Ka7
	 GE3vpCzYZIVHkNQMpiOYAuG8y91aoGH67Nio6RnRBAIMq4xQdP+GWE3jlX92yC3sDn
	 9lA2URmIBkgFzWB0p4plG/C5A2kf5x8rYXzZ+GQr9CubbjWQZLuX/ZaFyj1crKSd+U
	 5yFXQEsLNWpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982AC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839303368.11660.15130626900775231590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10a6019bfc172b9a80a404f6d4a21284a2abfc2678bd5f6062fe892a7ea02c1
Date: Wed, 02 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788393033
