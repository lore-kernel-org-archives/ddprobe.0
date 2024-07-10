Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407D11799B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720583783; cv=none; b=iqlvZYb3siJvjYWmLeDWTB+sB0HdnvqCLqlzzTgqltKUxo4PbIoBKsG7RrJTWRT7J50gC+qWWQXWw99ZOFk07JpbKvvG0u2o8ldzEZbq2++1dw4kjMvt9U1W1LkEvt+ABo9cwRugNjFdDeYaQW6o5YaXmTJvgIwNvgku8fZ8IEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720583783; c=relaxed/simple;
	bh=O4egLjmZMx+k5UREJs3M4HkYG7xuppE+jqIS6HZG6/w=;
	h=To:Subject:From:Message-Id:Date; b=XIABNHWr1+WqoNa8tKtzSSmUJetWLM2uzaIfGdnPMCmIM0MRNED1o6UANBRKb6DHXViqUjXozRsScNev4pP/xoBXk9sYELqTG55qZstztxryPpu1nCC/5I7mImVdZa0QV6QN99wnxkrCVXnjE8qhL9Wrutbr4gt9K8b2uAINch8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+AtZUFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+AtZUFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6968C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720583782;
	bh=O4egLjmZMx+k5UREJs3M4HkYG7xuppE+jqIS6HZG6/w=;
	h=To:Subject:From:Date:From;
	b=T+AtZUFxVjcC64A6FMwCJ4EzUjUDmwj8D/rqh8SocluHCPaDC8jU3bNdCTg7Indf/
	 bJK+IIW3x4B1hH1pCVKeZ8jk6iYM9hdRuTTGfwAxgz/usVvSpY+FAQTjgctaeI10vw
	 YGPDSOU/O7MDjr2hgWSC+8P8Tgmaq95J1Wisu5LcGtPp72D0ap1550CZlYk0+Tfx1N
	 Zc2axibSq6owWMAqJn+/IerQGjzg96Gc7GCkKzg85fGJ/RofzStg/gHm/Bmr+B6ZmI
	 HLcnrCqa348zi0vW4pGWVa3pe4DiVrNM7l0Ly3HleWdWBAspZpgrmbtx3p0RJtGfSK
	 HVId37vOdgBsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4050C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058378278.17790.14483428108882614199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f8886ef8bfe1a6e4031a5c30f3b46097b4c20a8e01b0d671421e5d4031b752
Date: Wed, 10 Jul 2024 03:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720583782
