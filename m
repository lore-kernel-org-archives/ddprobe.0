Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBB119E990
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751039993; cv=none; b=Bmvx9qkBAz9MaHGl5g7sOQX+CUfPLqXupGlFh4OSUi3e9NkWi1fuHIiRKQkGDK9iH8U4XiOGECOSZ5OcO/97yIBn24pCREULivK3SsbjMJphUMAELe0FlOvHRFnsoZ1eBobttVGfzSiizfYoIKH0F6TN/bYxwoeYN1lUCGNLf5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751039993; c=relaxed/simple;
	bh=W/wfoaXetQcmHjCFNW2DJ1swtV8KEhSaGTpfgIlcvgs=;
	h=To:Subject:From:Message-Id:Date; b=K19+kY0jR0CnfxRBPtG4WnejKcJU/lgUJ+W6GkYFI1sqH0mSJudtmBLT12AE6tX0TABtJMlPIZ+hh1VMd/hDV0VuwLCps+Ga8mrFz4wRbFCvbPRe6hd5nYbxY6ydBoQha6Wp8u/Fd8EFCC+CXQRIfUDDsELt6CjWB/iNBt6GQgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIpRAc2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIpRAc2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEA1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751039993;
	bh=W/wfoaXetQcmHjCFNW2DJ1swtV8KEhSaGTpfgIlcvgs=;
	h=To:Subject:From:Date:From;
	b=tIpRAc2RvWB4A4BqGhqwDFJb+Z0js+ni8EG1sxk7lIuoAddAPaMtco1D8CrsFKVWI
	 spNKPWige7K5AUuA7UPHZiLigVDzz2Pjo54WNv1COFSAxNDeb3cn1/SxxOB1+foexP
	 cDD5SCd3Znt/qj6Qt1WGqpOxybS3DuWhovrg5kKeXiqpoEX7Ae7sQm4uayFXn2G272
	 69MBozAHRxpUdtQ+J86kjD1N8sOJKw+28aL1hVekD8ClAGLVRTVlPL218Q9+3djzID
	 Mw/wUKOhc+CR/yFDI0kwyXgpJAbkNphd/omA+ng1HbaWtoLi0Ua54rucHZjySxloPy
	 SZFzrYT4CSTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBAC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103999357.26284.8217798762950433223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1505b07d5a2e272e5d3b03e0f102e4949df3b4ddfe5065744c50a7743791daf0
Date: Fri, 27 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751039993
