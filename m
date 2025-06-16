Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF512857F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750094994; cv=none; b=hrpS47g+WgLqJqxeGfxmiHvpA09ibO2vWbZ4AX9hGYJuru0SbrpiEsR+68hTh21OTK9inMIQ/aApJBypCoEzD2W/EqFha/a3UUsjMss92SA2QDFa7dEHeTkjVHB0ofQwT8fgmZ4Ii1Ubs2xhTJz9PytH2Br2kBknevmQtbki3CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750094994; c=relaxed/simple;
	bh=3ApNnZAYgqIxBOPVRAeBe0MfiyOmfQLaQ/huEBMaqNY=;
	h=To:Subject:From:Message-Id:Date; b=WAFnpRnfus6P1XaxpqEaLokJEKjEpi7xVNJDP7ik8sYF1/CQdRYx8ha3dFKwVGf9Az0R5UvVIBnu7bq4CQ1NoxrC9WUUkYkvwaV3vYt7snX/+5msWz6+yPcdTp032rbXkQJGEaSLJczX4QWMy6IfvKC+RWmR+OLAYmmFTBdIR7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPgQnPUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPgQnPUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA55BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750094993;
	bh=3ApNnZAYgqIxBOPVRAeBe0MfiyOmfQLaQ/huEBMaqNY=;
	h=To:Subject:From:Date:From;
	b=NPgQnPUEMWmlyFC9P/LUkjQKjiFvY8i4ve7uAmqdJIjFzsg4IEWxImmH/iO8AYxVQ
	 aAbTYck6Qqju83X1X4FBvAPpX3cPeVWJHe0i96HvJoF2EA+RsvjayVGiLH7oQmrLbs
	 xXxepPqFtXuAP7J3rutuVcdI2MFSGDGI0liDu2ts479i5dxT4JJQm6ipBHllt/KCL1
	 iGSfnGRCCcXXv0+HNvIeUCq5YzdPpbxzZxejjBWwAgMI0RTdmkHU1x9XmaT1CLwhGg
	 XcojdN7tTwUop/VWBUbMKlDcFkhJoWBrLOQzYaWKvi0FJIH3xzYoVQOxrcxi0+98FJ
	 6Zp09Tgb+Vnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB2C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009499357.27229.15574811928370446202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af5b6e2edd583f351d91e7ca171a1edc8bae8574c0071cbf7a8f462802fe476
Date: Mon, 16 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750094993
