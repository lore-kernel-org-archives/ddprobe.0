Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A36833F8B2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785526834; cv=none; b=HNzVFfla/2E7XCQPRYbEjluRdvPkO27XVWFgR1lGOI7kGlcafPcmIBSCZhbybAbkwKagTaifgK4+S/Wb/vyaeBg/jGbVUxnxGfUR2o5krRwiwEIjRBFSXpNx2yX5TBHQoDq2DJNY9vyN7xg7scHGiehdVhVQ9vAkcgKmAi44+JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785526834; c=relaxed/simple;
	bh=oDWKAMKttuSRph2bMXOPeqSQQrfoFLMoxx8O/HtxFsI=;
	h=To:Subject:From:Message-Id:Date; b=IO//3WzKpv8lyF1g5xCTy8asE251E/UZDGQdmhH7xbTKPmW/hMAxOXoiNLHkEI8VTcsKELHVvjfmmGxQZvf8KHyO1ExnPAJe+7EoOgRuvWg96raIYB7Cp8JPrsdZUNgezS5hCxhRXG/gMtMRjjbqhWEyy1f9Rxk7ZSD8rDSB3mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT0FPXwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT0FPXwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB8C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785526833;
	bh=oDWKAMKttuSRph2bMXOPeqSQQrfoFLMoxx8O/HtxFsI=;
	h=To:Subject:From:Date:From;
	b=PT0FPXwQXywUPfBgy3/wLKpq4/gAveI+5TRPsobXEamJHpcJE81G7C1m3Dq9modPt
	 wc3DXztDeO+0tQ34RugTDKBPMFtD40GQBJBJIkhsCXL/cTGzlD+rIqJrO4FYXEUdMp
	 Pnq7u8+kEcsaMdywmecUlReBWXjP4p9B/GMb1BPX2uUTiuxkEBTIX+990qLx1M1ate
	 DWX5RsR0CSvT795XwTBo23EmPMPvrNri08yfSza7w/aEHGa+W6CLoiKpTrxa0yOfOO
	 zTt72AunaY1pheIMDjjXsWlw0eR72e8/X44fprON45HzQGVXG20siLddSjPIWOFzX6
	 FLhZPXuU4QzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A9C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552683369.3779.14663058022541009622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dde97f5ec147174d1e7101f79e8cea3c0be8d12b14b06ca8d1617f2700a0347
Date: Fri, 31 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785526833
