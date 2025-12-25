Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76F284689
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766706834; cv=none; b=BTBGwmTdQogeNrRKkPTDADOzvhwqCQ2buYIjR01/qI9lDjt5hUz+UR5nM7WyT6/E0zVD0ORtRvb/UjkYzUAmtkhU4MgRmcy5m0jYOfzivOTEs170MTk1Zjg4hoFW32WLosFYmXidRtC7bVak7CG0fEVso88O0eMTYCJ3VZzA9U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766706834; c=relaxed/simple;
	bh=v/FTjEMM1iSQaub4+C778RPaY3gNmKk/NGm2WygVBN0=;
	h=To:Subject:From:Message-Id:Date; b=mvMaqvA5e47I9GLiq7X7hPUpzzXCvrBULJuaxUlAYumZKQ914aQJe5fc4uZpDkHuFdSCtemv4uAMTTyarX5kG+D9BCgL5y9L2gUx447Kkz9MDOcqfTjOGO2JUHcpY+K/YsrUrMAIaK/zaAqMrDDisXWJURwEc3Zlxe6QlDSliAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtv+ROb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtv+ROb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0ECC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766706833;
	bh=v/FTjEMM1iSQaub4+C778RPaY3gNmKk/NGm2WygVBN0=;
	h=To:Subject:From:Date:From;
	b=jtv+ROb/PaA0yv7V5swS1dnHru1TQ+3V9cxvfrb0n0L8mceZqCVIeRzbduQMGNCDo
	 JwJ367PNUxv6fvnSLKYpbcw3oy/a6l1O50bxO4jUd+ezJc1T2SRZta2A0AIBmJOQKd
	 +6SUymH7qycelo9SoWmZ3lCafrGuRc+VAwnEyNVwy6dAwR9Ag9ejbjhDSmylPeBnPo
	 1ORYqyBKVVr4Q8XwPdTCTvoePoWeA47Lvqr68CVrCntI1BYs6i+uAKj0dtI4hddR4e
	 fpDTUBmu6+prPppsuOKQ0I7yYPmYPeN+RYSOG5SEOj8HFZB32ujQ4MOh4Qc4WYNLx/
	 Fp3R+GZ0ztMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9700DE7AD74
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670683358.4509.2544533457668014212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d645fa72119ca95777fd8a038bf449e6064737bf6629c9cd52498a8308468103
Date: Thu, 25 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766706833
