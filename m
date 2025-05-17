Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505282557C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747459194; cv=none; b=IUdTru0j0nGK+OBxKiqpQGQ8bTSugpRd22H8zckqGW2S2R/N3HpGIe1TIkqEXOh1pX2NA5zbPjbRc49Nrm5rIxaSV4+VXecMl47EyxaUed1d5UpK7Q/F62/fI4xWGR9sDNAJb1IAQmEiToupr7bu2XpZbZHXY2jUlIvmDE6hfDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747459194; c=relaxed/simple;
	bh=6nc/+Rku4mnpmV2/6WrM0UlWfxDU0/9bL1xMobF/bJQ=;
	h=To:Subject:From:Message-Id:Date; b=eImwy37V8AVHvlPnI3gUMJN/ISnLBZN90KeOsLEQ6GaleN4kG43DATbUY36YgUY6vs4RYoe9z+HNtSEiinl+2PSC8cqUR8PStqqNRPygMtptQRYxn3q0oWVv2d58xa2NB4wEmWMxk3vlZDR0W8f0DH9t/wMh5EUt1UwqCZLKD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrnr3AgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrnr3AgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747459193;
	bh=6nc/+Rku4mnpmV2/6WrM0UlWfxDU0/9bL1xMobF/bJQ=;
	h=To:Subject:From:Date:From;
	b=rrnr3AgM4lU472qsEMgw9uEYUc6JKHi24XtSC6cCODnLF2rgNb+/7ykCmalyWUgFb
	 1QYP8y4Q8Sc/JMH5VZAhwIvbRnof46vP2ptPjYtRqqCdiqKmVq1tNY3fwNmpQlcNhq
	 augDB7l9v0YgXkBZw2HQzBRD125uABSjZW6FESZppmfqr7upO3MWQZ5R4yQhqIegnd
	 nHrx6DrBB0QSDaQajoyCPxWcee4hCLfpAxJvK66maLj8fNRb3acc/xTc/tLLpRk3Mz
	 MCfJB3nYOIO7HnfVIcsTqn5YKNw5f1lx7HZsqLVc+q1CsG55EOvIgj1eojrkkpndgs
	 cyZ05QgWyGEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94368C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745919359.12618.14208237653140441950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938083b35dca3fdbcf740e2277c31337f67a20eccbc46603999970ab5118cc30
Date: Sat, 17 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747459193
