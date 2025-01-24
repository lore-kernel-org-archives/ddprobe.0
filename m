Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893D288CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737725754; cv=none; b=bViiYaaV8iJ/R5hDARrXqOyIJ81PI13x54jncFZpZcooMQtH9PTEyxvWleWE2dO0MZxPAgF8TJ/XNBhht/BSSxJS575d7W6Lkcl8va4MGerATj93Aqcnd9fMuv/HoMnv58/QCI06EWl0qkMkp7SjyWWvcu/ZejSYsaYGGKDQ2AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737725754; c=relaxed/simple;
	bh=WN8ZjAcd7ItkG5qXLG+CT2vhAMh9qtFLZ9JsgGeTfMU=;
	h=To:Subject:From:Message-Id:Date; b=tcir75Fp7VEO931Fx2pJs91NV2wxV30LO+nBkkihHy1GEQSwXkJWzPKh4BKr9iasRWDOnU4bG3+2H9W/bINDF0pIWFhHks8aSn4xe+p89Ubxg867IxO6QNgpDc1tsP283qy1Hx+kQQtMaN7JOl5hSE2XLgQ9y0di2kA3AdRthB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Phq1xJEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Phq1xJEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A529EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737725753;
	bh=WN8ZjAcd7ItkG5qXLG+CT2vhAMh9qtFLZ9JsgGeTfMU=;
	h=To:Subject:From:Date:From;
	b=Phq1xJEo9l5FlfQdkP3q3G+Q1XN7P9tjhImVmPRtjf/hADT37NBryq2vgXWK9BgK4
	 p5FbhvjHPvj9y2/bhwrVsK967gNdQvaGMGRrGOqctNRM3DsgWT5JrJDgv5pAUUpcYG
	 a5a29Pc3iJXrs9cjYJ+QTtS37vZnbJYuO522Hz1Mml/ZFASq2aSI8R7xoUot240jd6
	 rESPZAOCn52GUz3Q43GA8rsLIFc784NVSJEEW148BYW+Tbq48wyWLmUCnDKn1JLbO+
	 0UQBjzr8sP5DDe0/u+xHznhY64Urf4sdVJelhnBF5+P2F0e39bmpXfYrgg2gs0o5Wp
	 4hEZdEyBpDEcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B2C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772575358.1485.8402165356180659027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5cab54bcfa7b7d7f7d1b108f0c944781c5fe2ccc8d4a6883922dd9c839b4b6
Date: Fri, 24 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737725753
