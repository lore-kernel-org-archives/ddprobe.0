Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3820E313531
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782277594; cv=none; b=pupSN6/WK1Qh6Gcbt5SOKiO80DEwgTBqQ4PxAjEGdN7hmxkgZKI0luYOAADOu9tiAYKayG9kQvWGHBMTmg/HjixYc/eDNUuCaXm6/e1xVWcJRRK+NyZAUFeoawBG61hnnY8qyvCI0JjwaxZeDpA+B9tOnQxxKir5hCyvcqAmQv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782277594; c=relaxed/simple;
	bh=M7GZUvtYnuRDNKt+nQ3HzXfuV9t/muJiofjgZrYywzQ=;
	h=To:Subject:From:Message-Id:Date; b=PK2OaPjH2UXpxt7Lw1OD0SmRD7HsDO+HtBoczKNpk6x0Iv3vk/mPE/pOiFnlb+RGY5p5y6/n+iSLEThzNt0+4qbk7bNSb4FZ0EYL9hnONym6C45vgeOC3mInfnZEe57zu3lohSF8YQueD/PeeOEwqvMGNiXJIWnsOipxWJ/zq8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmCdifpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmCdifpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFBE4C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782277594;
	bh=M7GZUvtYnuRDNKt+nQ3HzXfuV9t/muJiofjgZrYywzQ=;
	h=To:Subject:From:Date:From;
	b=pmCdifpoDsL9ASz4vsX5rOzI/5nQ1RQ71LwQxpUbpDGCr5VKtNkkTPtZEg5ZFnP3H
	 l7KY+rMVEHJSOCvI5La+sh9zXAMftcpAfWaoSvFQ5rOa4PxBV3Lf4HjByes0rB668q
	 uPEdTXzTtFHhfRGasu28Pd4oC2KcETdyobcz5Y7hTDPKIxccXO/qjJ3dMA3qRLaqRo
	 SDfEFWcvkZVH2a1Dwr5WGjPqDqjenOH5H05pUVKS32aKNEas3oRNwRjadYTKTK7gM9
	 B4YW5mMRRCS6QdOSc0CvSVEOxskrfeTy3nhNulmR3VcFxi+niaL+TpZcDg7qhcunja
	 eId1NUCzrQFyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4947CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227759377.20938.3373584294038128130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b027ead1c027c98dde22599b45da281b55d876c8cbcd0f8cccc65d99a3ac6afc
Date: Wed, 24 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782277593
