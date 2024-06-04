Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC845B683
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717535783; cv=none; b=YJehmlg7uvO/pyV8zRu4h9YoxHK5iHOvXq/CEXgJ7Qq1p7sxayNyG9HM6H1h4CSDQTH9jnaBU5A2ZIpeQX/E/Rz2MyNlqsc0TurmNHZsgFNMHJFTyIfNPIwZghGieaYP8yu6zchPNzApWWTVKISeUx0ifTS6rvqesSIdFm2YwS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717535783; c=relaxed/simple;
	bh=n2WMQ0/zRGxXnxJYpTaptG2rHsYCAfQ2nCZPA6KgWeQ=;
	h=To:Subject:From:Message-Id:Date; b=lwx3oLQwnwZXm7mB1yLaLNjTMh6ZOGw7dSSy+OVFFF2zHwcPGJrURcHxPrsrm8bwdII86846Y3B1UcohmOj+Ww9fJx2DgDZBOydTxekCM7awnvFgekcnr2V46j2fkh9WQ2VgaIDBsLcVXXNFDZTFYDv4vIHjMNbG6emjowkM7xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvsrSvaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvsrSvaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BCDC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717535782;
	bh=n2WMQ0/zRGxXnxJYpTaptG2rHsYCAfQ2nCZPA6KgWeQ=;
	h=To:Subject:From:Date:From;
	b=WvsrSvaFj9n8wJB/hPJ3+gqhaOAjkfzCyMF/UIlXojK/r/sK1+mGsago1BwK1Paeo
	 EuVjGGbtqbAKyhGqrebEnU8o8e9sRsH67OhzLxjcQRQhqTil8pYOgLfhI2pB6qkMvP
	 76sMoS9P3YKYcT2gVQe1ycGWi6jL7RVipc2RBQj6ix8TckuNhrxGbMP47fQcYayEq1
	 E0R6eE+2BQpneyf7TuBMU3AIhr3Um3SQMOL0GFNGsn/hMTf2X8DQz1/M14bVyUOGPD
	 v4UFJon25UbHhTBW3oYCmHrL3oiDD69FG66NG595DVcnMfho5cD6cwnbeAZ2si/gJj
	 +TH3pBUBhBlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9790C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753578279.23721.2789849059930365625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a739705da99c57139a7157f4cb316c1cf865a4d3ad600f3b2c172f8f6f2eb33
Date: Tue, 04 Jun 2024 21:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717535782
