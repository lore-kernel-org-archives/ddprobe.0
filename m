Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0545A3806AF
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774536294; cv=none; b=JZrzxaPDJr3hqzrwODZbVQO/8lh5Qttu+8oaVkXMTjMGVM2sBEnGxn6l0dJxDvX0AFz5jZg6kQPaLra0QPOapvAr2u2vI7OYJX9YxGFX9wQHz6CbtLbdd3XTP2fao9cQPtcY/jN08Wqht4KDnhrEd7OuN91i90u0xFfU+221uV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774536294; c=relaxed/simple;
	bh=aKi/+rHnoyGaki7QN6UDT/Z2Gfp1Fu1h9vwtIgmB/Rg=;
	h=To:Subject:From:Message-Id:Date; b=cvgUUiDYfGuWQgRPHyNl/4CznZmfq78BvoBVZTg3Ar3476Tp13GaElMwkJ1j/+j8+kprmUAX47g2rt73ro0ab444HsaUDuJhPEexpL3xWNUaDGLQMA+hCXXjDRo9+MuDYcLyCsmzgR8Y83p50AAPhjD38iBY3F565MTWPyfdSLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6iM6oZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6iM6oZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774536293;
	bh=aKi/+rHnoyGaki7QN6UDT/Z2Gfp1Fu1h9vwtIgmB/Rg=;
	h=To:Subject:From:Date:From;
	b=X6iM6oZIP7AWy6PMVlpfIi2ggEeQHpl+P8ziB+JPdrilrZFHhH4a7MVSORuWsEP7q
	 WW69qtiwCoa5043KwNLUsyXnf4oAErJStKAQ9E2DxV6jZRnI0Xt4MgmFI6XlVCoRGR
	 nZAjDDmMj90aqEdq3sBOb0Az+5dVSpby67Hh6FflQRVIkvc1mlxUgv9mpn2tSzTwb+
	 opB6VHFPW2z2NWujMZJTPcn5orwmuGGmnzaMGJ3SQIqXa68wqwNyEHBekWn86ffL9W
	 Xmo7TxcnXGVIjfO1zW8KA6sfJtCBD6E2S0wSrLnEhidK1+thhBlF95V4nqWgNBbVm7
	 /tAKFMZFstfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FEA10A62FE
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453629359.4817.8596227330596315101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092986d84806c749758cd301fcd78c8502d52b1188ab91aa1d60bb5176607e79
Date: Thu, 26 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774536293
