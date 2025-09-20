Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF31FDA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758375595; cv=none; b=c7fEjxM+WWDo6UH2WDiGxVMGU4JvEmGGe6wJaI4ypKl/q0vs5OGixaEj8oJLgoZnOBiNOhiFk7/d5jiykgYze2eI5/jr2fcUaS3DHTpJSLT9Fxn6cuxiB1wGLLZhw3eeR2x5u57HCM2zK6WWEIkhTs2Z1UMuntQWc3mTThtrWeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758375595; c=relaxed/simple;
	bh=8J3h2ZW19x9jVNGE98i8pDGRql5f++selkvdWMaN7ns=;
	h=To:Subject:From:Message-Id:Date; b=ieVDawjlVNNkfBUp7HdDZpiGdzTieamgoMka+3G+AmatWG/Eic/8mGGveEx5HKl0A1O3S6afmJ4eFcvioHuBluV/ETpnTcQaCLlTzXekWLaaXbNVqdtkjSCJeecMSUyNvK8CcJroGamoPxyPgiNhtEeTctu8xqs/FPHOyET769I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRDpC50l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRDpC50l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758375593;
	bh=8J3h2ZW19x9jVNGE98i8pDGRql5f++selkvdWMaN7ns=;
	h=To:Subject:From:Date:From;
	b=VRDpC50l7AH3jJqneFz6+aBgkT0nbeouYmmr4kHrPUicS+tDctgGIX/ELmskA2KeK
	 cLiiwkQdEtybcL+xuK+q6J1Pvbn5iRh0057B6nODEblBVbq43M2LApwRa2Ib3ehsGE
	 BUUVKb1HdPmZGKwrbpjYlw2VjJ+QVYhD6/syKGKRRyhZuEPOm39Mi5MhOHzTVDJth4
	 5C3DRq2+d4hJLHfoco4WEnk9C0eYKkTNH1MHIj6u8SVqp/ZWu+PYkuiD6VRAxFSCsO
	 l5M/+5p+5QGRI9NaJhbbs2whumVGSMuXYHqsUNFwg6caFwa8ToLYYRGAryg2xIjf/6
	 rT7IUfchcHqAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F8DCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837559358.8841.629839895568529517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5acee746778a4226d6d3e98d3cdc36994f28b54d36f7a45e58e1667cc316d37
Date: Sat, 20 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758375593
