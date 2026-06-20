Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64838F95E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781957794; cv=none; b=iEJE+6fTP9lPyw8AkqhS1NFkqv9tcOwe32UkRrsaM+mTY1XO9uSCw6tkrzbZWjlgHkZRs2OFvmkoD3Lyz1Ypo59jREumNkxB6XGlD7TFvhN1bMpd7buBHrl3Fzy8Ip0iP3l4RCxO8I44ugaCBzTCsbCkxl1YNg28XP//pHT5PSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781957794; c=relaxed/simple;
	bh=UouxcsdfpF4CF7wjmi5PGK7yR1ezL/Cp6txwrwWa9H4=;
	h=To:Subject:From:Message-Id:Date; b=hShdfLhl73f3VPkmxPwqw6kgsiLlwFEOYy5hzkHV1B9GuHqGIUuyejqPGTNgx2/3dV8gb63oclpwGQQ2EOYCMeVyhBFCpU5+vbgYvnscz/zlDtpsfHY+Enoh/kQSi8eTxQuGFSzxaVRBEb2K9VgEfmWkJs/aERVjEg148M+Tj6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAWgD3fL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAWgD3fL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC054C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781957793;
	bh=UouxcsdfpF4CF7wjmi5PGK7yR1ezL/Cp6txwrwWa9H4=;
	h=To:Subject:From:Date:From;
	b=jAWgD3fLjwPJJL55/lHTe3DrpTkaAhLRlFTU55u7v3/Ps2BG3YwWSoJA8R9EzMXUR
	 X12bm7ubX6XGD3rweRGCVkOfA4ok9EWOTEt3vYlk1ltcs/GD453ctTaVwjvuPKv/AR
	 Ejma3nUVt2ua0o9tnJzRugmFpWMbMPMRBuekF5m2r3ZNkJqUweY31VWEUOH1ZF8tR9
	 p+FRls2CSOGHlJQonxPFCykFY0YAPMkqGW3chUiiyzEGRuOgGTngMMEcJg6pocn2j0
	 o/F+fkv4U6DNzovBdqVvf5C90BbHH3BqYxyUtXK3PL6x+Fm+RRK001jg6xIrLF72ZW
	 NFH+kZ3Y9iAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC263CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195779369.7179.5714980627752317435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42eb9efc04a87c5bf04884ef8f15f556b0ba68299f07e422209e50bbf3c22de1
Date: Sat, 20 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781957793
