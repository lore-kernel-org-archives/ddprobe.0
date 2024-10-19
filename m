Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D891CF2AE
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729320354; cv=none; b=bgws7JKqN+UfiFSqVPcFTkbzDQolEyFYPq6kyG7Ut+QyR6m8SNYrqqmOTvKz0Drmj8ZILDUqBYUS0qFPonfma/x0zz1aR+9jXSDg5Fptj4fSaWC29pxaV6+yBvN6hkcWEJDeYnNSenXBktbwloS7i8C8dG+iJ72VW5v/d4xkQ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729320354; c=relaxed/simple;
	bh=BTlnz+MtRIBaXpxgRTGeNFGioJZtQV6295ctNDLuw0A=;
	h=To:Subject:From:Message-Id:Date; b=YPVnBGoAI2oljf64vloB3nNRcOf+NSvNuyT0oYaqNatfh0ZNoz5x8Zh5y4+Gw0swSm5KENFwBpe31n8hdsB2jK5Ze+iRZDAh+fn6u6USujEFiS3cFk3Tk1pRyHHteiZBGPEMIjRyW91hRX/WxX4Ti55KlAetpCCr94N/O1EkrWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAVKo+AX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAVKo+AX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCAEC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729320353;
	bh=BTlnz+MtRIBaXpxgRTGeNFGioJZtQV6295ctNDLuw0A=;
	h=To:Subject:From:Date:From;
	b=CAVKo+AXHoXHyyTk5A229qQO713Qh+CkA2YF7qGOf3/+AMlfLf/ha5nsR7eWgc5mv
	 WQPC8MZn8oOwGRo56cLXs3NwRZQHbXarNiAVRxFxIjtTZ6/kwz8yYYWYw6K2gO/rUq
	 5orqvrl45CBkmQorPdEzeJfYAY7R7sg/wx7NK0KIhzHOO58pW6XnDi36c8z+pJWvyy
	 /La02QatkV4gvmcyDnlNnMbT8kMu624IJ8M95FUrQDG2SH2vssHX47FxnTVh6VOCu4
	 Ie//mgGPVMnA8AxA/oh1UA7Beu1etKl1uiLCcUrUJCEchJLjVzQAVhHrI8tUVXKFqZ
	 FdZ3qrIQFnE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46CCD3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932035361.15242.10133562746720176849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a27c3dc866c4ae55c062d5660f27ca9e9b9ed391560419860e6a2c180cc55e2
Date: Sat, 19 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729320353
