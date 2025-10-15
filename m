Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0829A2163B2
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760544594; cv=none; b=u6ksGLlP318tokuaqEaOkp53FkY2FENDRR9zhS9hHsCxrqkTz6Epz/Wrn9kqDlNubsieue2pLTgz9PFJguIi7FlMPY4vwzRLXXEk3SaVdTnRGJhaCBmpwHYBjwvzJ2qcfnyfoAd7PgsW6OMo7B2sbq1Vrgqk8+WMv0kDPmcEGFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760544594; c=relaxed/simple;
	bh=DHKwM8FJRtTeYoOgzHMA1mFJCXZhFtgA9F+tt6WWBJE=;
	h=To:Subject:From:Message-Id:Date; b=OKWhLiMP6zE4yL4CPjLx6AUxP3BL5YksaW6L71TKT8PWs5gXGNc8G2zwrCLP0UFygQF8SA+dvwQwyXhtnuccX/DR55ZakmQ79P3aGo8fIbkdLmNEbgDk/Whgf6Gkm0L49PD7fTgauhM4mCxzmTv3KI9zg4t/cf6SUmnNoyIRZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jkboi8p5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jkboi8p5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3E0C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760544593;
	bh=DHKwM8FJRtTeYoOgzHMA1mFJCXZhFtgA9F+tt6WWBJE=;
	h=To:Subject:From:Date:From;
	b=Jkboi8p5bDbCqjKQ6aZPElD+KyZ8cZZA1u+8uLPrKZcYUfqZajmwunqnHTd20xCiK
	 hUmmuIPlpOTpyDLBkqRZubwP+NY+tN9sh/SvztoMVhrvgXoEul41sJrlI4gc4yqTcz
	 E0QHrSmTm/3w+16wwF3B/jeIbJPRdDcyI6qRg7dQ4Gf/JAu+vw1TrP9lKBFg17NDrz
	 6njPwAEJY1z6laUyqVAH+nMUv1/y4E02RoeftGXU+ju9SZ8Ksg0+AR4X6hc9Z+5dNj
	 bX1MJAdU+u8gwV4ZvccH/qlmGQQO9ad682mfGOCNGIjN9ucZdByWvuLnNwreGcUfMH
	 A6/535ZOifQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054459357.11621.14485489045788102823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6970a7ed656e651b83b714edd4a9cb579f5d0ec8730e082a85d999aaf4538f
Date: Wed, 15 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760544593
