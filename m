Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD523EFD03
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780629874; cv=none; b=KYJoGRO25q/Hqp/rtrcaXTyNTTrFSfkHLCHZx/mF5SkunhArb8EKaOIw2p2IqEDtJyzRhQzt7VB+CEG/Wp968MwZSOlL1+D5LIb1uCVI8ajNMNURyaXQrWNiYe2S7VKnHq05RuBg9+ehtEnenCPYLIc2VroIRH27vF+RrBa+SbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780629874; c=relaxed/simple;
	bh=LTWWZ2SRPfH9PLYQGaF7lHHueox3hy1VduiP3JTQsGQ=;
	h=To:Subject:From:Message-Id:Date; b=av8Ux8rkzAkJ2/vwpUExwaqBRF2AVJ4Xq6wvhh/cldU3M6fTIwdtGPV/d35K6NIAu0TIhikvdPWkoioOJanN6X4CF7y7GPaSzGyV7PcqZUucCTSSs2WAWlYNQYuaynqKSKJfv+2rvvp2ZjgW+SLPPeTqLdVZ1BhBz3EoIEqgq2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzeFEFkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzeFEFkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71A0C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780629873;
	bh=LTWWZ2SRPfH9PLYQGaF7lHHueox3hy1VduiP3JTQsGQ=;
	h=To:Subject:From:Date:From;
	b=LzeFEFkkszHfhn4khIcPyKJSJiSrNbykQCz1Vu+NA5eO//N/UFMtMD20UbozQaQel
	 ztMBiNyeq9CkDPWzgLZAjuSZ+zYbCLL1xaFXCfw+g43ZQsrYaM8LU1aFDd+H/cORYB
	 yJRFQCclDG0kWGH/K57YPAzFmAABpdGc8zVFOpuswTov/9Z2aYcM6ccQFnIxQVKcYM
	 hY/Y7Bc8mH3QzRnMFf6OUutBJLtuHQSoHtItV46J5W9/l0+lb4xIhmGPjCEY19mtXg
	 q6bboSrJeFLVerswYtj2Pmnt9BVDWsjacBdosiODIuXh/YadHICGSvjn9W18QN/6XT
	 0fFDfd9o1De7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71ECD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062987369.31991.15501681604282717824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f15b4f0114faac0a365434225b0bb20107cccfb85d4ac50e820a454ab162b4c
Date: Fri, 05 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780629873
