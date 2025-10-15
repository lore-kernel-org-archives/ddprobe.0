Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEE831BC9E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524194; cv=none; b=n6l8W87IceFT5u+UouS1DykrGSvWxTG8QTWeI15s30/7zjIvu73Cw4cvmp7yBGCqI8Yop+1crAFxVW4V9JToYWT51Tdz3RtvblHcix6+HbhWgJLukTx/OpoBLOQilwArGyCDVrLrf3iqwVt7SBKGVoxBWeV7RJN8MVVL4UsUwog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524194; c=relaxed/simple;
	bh=dw97zIV0DBGrpOuBxsiofuEEUSH2Imd4mlBFrglMT4o=;
	h=To:Subject:From:Message-Id:Date; b=bJP65NhzgK+yDv7kDr7+Om+Fnc1pHsZGOCw4uZfeAFtc7jb9YKHXP7+CyijnhkmhGXLdnJNsPcNlmsh4nIz4ZmTvFDTwOMOalDX1h+EW8yHdphKqiYoOrCTZRVCqIbUpFXYyR6Ce0F1WA0OgTiJp086TjY1GWPYJoIpGO5RxeJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP+QeqRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP+QeqRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C8C116C6
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760524193;
	bh=dw97zIV0DBGrpOuBxsiofuEEUSH2Imd4mlBFrglMT4o=;
	h=To:Subject:From:Date:From;
	b=OP+QeqRAfh51Dx85OFif8RbDb4KlnOZqSe3G0gw2JIeEqnYhmY8NH0Zr31o83l+e0
	 HcDO5FF6mPXS7XyX0Tklw+s+ipD+yS1Hu0ZDtjt8yFWB3lLqIf6JF735ukmzNbMSsw
	 zWkxUTbT+1ph7ERBnbsrd2HZbIrO/LCndgn6tdU1ea4UiTLSXZhXUQTes9+z1odNDf
	 VKkNokhu6SXhB+28pLCq1U+K7yUmEALyti5nX5ndHoKeGGpFWvzSKeh9jmCWU4Q4sp
	 06O5246ksDU4z4SpEUZ9CL8lr4akV5avOH7wFseDJe9rZYVce/y905Jg4gAswPFYLR
	 63feP1NtZf4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4ECCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052419358.3668.17495853485353950097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ca2eb2832d6474f7f12fde143203a0c18995c37432163f5a511d918747b370
Date: Wed, 15 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760524193
