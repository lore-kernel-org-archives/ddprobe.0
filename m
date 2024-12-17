Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABF7126BF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734422754; cv=none; b=mA340bEessGsIgn7ibKA0zWhusVqFS3Kki3d7yYUJdUd5I/W13TTx5WNkTndovCO1K3WQ3vYluTYVBptl615JVDQiLctJvwAQF76bCvV/sKMmQasb3rdqszl85Sy4b068eJRTxiiaEL2HNfmXMPZbt/ALOzT83B29BFxluhm8Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734422754; c=relaxed/simple;
	bh=E8ju/Cxaj8dnJjlwYJ47bf5sl+N2U8vgayQzXYsuF34=;
	h=To:Subject:From:Message-Id:Date; b=WJoEDQqNNDZVMet3Uq36QlxekOe4Vu+tti1DrLefFRwXJ0fDpbBhiC2pbUfMEbwVbTITVZPos+jj2pvcgICxXGhl/E/KUhrtvH7WJ+I3AELawqWc2lqJtA6Rvrls0KBLw4FPMb9NmU2A3jFeP0kRulpVbddimi22ME9bZ6BneR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mqjv8ZWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mqjv8ZWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C5AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734422753;
	bh=E8ju/Cxaj8dnJjlwYJ47bf5sl+N2U8vgayQzXYsuF34=;
	h=To:Subject:From:Date:From;
	b=Mqjv8ZWPxBukZwESXENHY/ecbXLKPBdmQijLhHvmNGI2rP/QCtNfJ50YO+yuhx9Yo
	 kjyDXwNDcnZHAwO5TmrZseI2ZYUy+xh6f39k2f2ETJOmgBm+7uKIUtdpih6eSiyikX
	 XQ8VCKGfh9BhyUAd1gPqQM3S2IifVsaM3jSR1zmk1W5zgNOmetEXvuFxgXxff8W3IN
	 PcaFdQ+FxlU+i1L+dPfFU5AUd/VcjUcdWFaCq4z+VstHYorO7wJ0l3CZB4caoEffnY
	 bUIm6GVPROhlyp2E6xDladDKg+aLpwMYfbBJqlSiyu/a9ibzMf/MFJ1cMokQH3ESu7
	 hiPXUUaDJqL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96220E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442275360.15297.12044153426210515842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78f6f2841df323327a088601443820a0ea8cab03a0ae8f35e122a6e7c40f03e
Date: Tue, 17 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734422753
