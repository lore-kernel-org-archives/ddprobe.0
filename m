Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311BB4CCDEA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788330634; cv=none; b=BXLKU9dR13kbFsv6jUA4JY+hJylparP46f6t5f2gxmz3xz23FI6N3oCPDn2Y8WSI8axe4p3qko/qTg11p/rzbRTCntlgRwYQ7u5HP6J3oDJiKMHJ5Hw2PYOAoMXZS0kXSzhyq8DQQgq1ub6bV8YuiAxnlyayycuJs2Bt45sr0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788330634; c=relaxed/simple;
	bh=+SfwDFHRVT9+W46NqkDP2VPSDEjLZVhIm0w17lryINs=;
	h=To:Subject:From:Message-Id:Date; b=YCtBhMC80ChFPSNT+MNds+h8jin/lC2NIxVP/crT8qoEhuJ8nyIdCtHgUVuBSVQCHcrIpRzw2BS33k4No088xyKv4nMINf8w8+b7q6Y68mh3smPvTA8zL40/Iko61achXFMsLqV2+3btJ+wBmrU20GMPeSkNPVQA9cSACP6FPuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9Ywd3Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9Ywd3Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40D1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788330633;
	bh=+SfwDFHRVT9+W46NqkDP2VPSDEjLZVhIm0w17lryINs=;
	h=To:Subject:From:Date:From;
	b=E9Ywd3WtfDe9a5Wq9A/ipNr3PeM05VoBj80E/x4vEkgKStggavhrk8H4aA0T8ATiD
	 sGMtVdr26qpt+dzzNn7B2kMkZ8dAsl/vhnaKKuM2oS1mXAucY+lWuwcubtML5G0NCl
	 5TMiSRo8LpeoHysyhC+trVJ0KR4U41HxhQTtkIspFT8fxAt2RjVDVO1ZmL99meoo31
	 RtosI7F8adxJY6zF/xxNa4v4mVaa+mWSjUSykn+CQSQjVbLZEUWkGbb3Cpj8LiC7NI
	 hH8s7XF/wvvphT8D10by8qLFp31nAhlv6ZqSjBDBV5uH1acYmDHIcsxLeZCyRDfayq
	 Nb2b5CJtBl5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA766C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833063368.32042.3322271881367096165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ee52db3527aee8f747fc7bb7d11abc169b8c303bd2dc39c3fe069417f802e7
Date: Wed, 02 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788330633
