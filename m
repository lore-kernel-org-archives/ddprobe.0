Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE0C314D1D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769154834; cv=none; b=DbhzGPqXQtT/i18PWdoXF74aDBLuwEcCysrp9QaO+hgxLIZoJzXfq8i5zuTKp5sTRBjqEZs9t2xJUstuhWxxCMsj5jFVhvUZm5nHaWVDhQgIUK4rJW8RctiOiqqJYJz5Xvk1Kz7z5a1Zpx7LqGLyPuuYn/0ORCPvyQfN0bBmmfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769154834; c=relaxed/simple;
	bh=fSB/nd1lvNqFLLqNA0xugKm0ln/iZD7W241DoAfCPC0=;
	h=To:Subject:From:Message-Id:Date; b=TiSifdvoPkzNmc2gX5yC5wSRnTLmMSy+6pPIKdzFFqf+02BJHPY064W0dqTRoOlwswhhKro/4hdBjazNKkP4zCTO3BogVmDXnFaFkWsH4gut9e0miJ/zWpVOZI5XelU348w9hgPAU/kH0cyzU9AFrItycTKbGQnydKDIpzLPAYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiWxzZLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiWxzZLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769154833;
	bh=fSB/nd1lvNqFLLqNA0xugKm0ln/iZD7W241DoAfCPC0=;
	h=To:Subject:From:Date:From;
	b=jiWxzZLttrwx2o5Q+AT1fZ5e3UkfmMze7dVb4RKuLF9ltKAkoY93y1iSxZvgCRYGm
	 SAvgydTsnXBX/5pKJhp49bHM/dkr9y8TXGcHOFihtzi/yVS2qZT+bXwsd0oMAg3pCv
	 W5V31t+DVpMjWRa9ga4DFMLMq0DzSa1aEXsvhuCkpd7MgRQsmeG1kJ2uchpikZgCtm
	 yH3EZqgKKr6Z1Vc8ilvDDrkIR+t0M6oRPOvN0sPc/VW4wVUW/lDnXq7kD0/mgSZIGX
	 NbHpE/aT0BAcGCimK3rxRMFI3OtrJkF/uhD9vMuc1pK4t9gDHHG+G/4dZ2J59+Wzlv
	 yVAFC+EH1bQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E16D72343
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915483358.28691.4945265442367498521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd01c5eefa5492a5a70d6fb6a03a7d2d1978377acdd0789f3afcdb1a782477b
Date: Fri, 23 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769154833
