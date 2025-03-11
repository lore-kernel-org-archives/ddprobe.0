Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5817BD3
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741657734; cv=none; b=EaDZBfvM3UKlBoIoKW1AkETYqMt9sIPkTYY358Hej10CT2jom9YENev02EBZ90sXM6+jr3ht/XWBLvSfngZ+2qcmR3SQ5RTttmuC/5KNRKG/lgvq1oDyxxiFYot2iv0wr7/XPr7dVQOL08cxaL284znMq/aL1RmohWoBllzyb1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741657734; c=relaxed/simple;
	bh=267A5X36pLXPCtOKeM6KdeARy0AiJDdpndtaTdNbsqw=;
	h=To:Subject:From:Message-Id:Date; b=RIKQ8LK6w78qWsEgcEVMcAmYZHXWNkIw0HDZqRdKm6n0FDOn9ufwejdhk8OwWrg6TPSYoLB+HAj1XzobcK+Y3FY1tvAWogokGIP+yo+uxEFk+2P2Y3aMWL3olEzc2q1LGk4BFfdC2g+hVGi/fPsjW8OUJLuCyJz9OpY9h3T9Mu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNBl5iIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNBl5iIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB378C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741657733;
	bh=267A5X36pLXPCtOKeM6KdeARy0AiJDdpndtaTdNbsqw=;
	h=To:Subject:From:Date:From;
	b=mNBl5iIrojOYUttcSPAgVp3ACTnQQIF2hZeJQiXZ96gf9vHahbKn26aDW0mFZwFzL
	 fEqc/2zX0lb7la/wOxDl7XS3erIKj7fs2bAT1IcRmsNJ7cpazyhe+Zb5NXb5beAXvI
	 IhGddillSaSsKeEa4wAUqNxATEGEFDN58zLit/2UYOgLAt34lNYi/aZo/A23krwxme
	 B+4A/qkgYbKsMuGfy+xOK6ocR3u4G7ueOkdxRTybNZqc0sOO7kw9mv9M36vue9hipR
	 Vlx8C3OOJD50tYr4CL4eon4RPCuQtbcVNcpJdSaXqya/OKIGAEeaWZf+m1c2rx/H7o
	 rn+MdLeV1pcrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0AC282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165773365.1965.14396179494833502726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990e587471a73554a1041fbddb86a6efa4d96ad1e2975ae8380c5737ea6b3b99
Date: Tue, 11 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741657733
