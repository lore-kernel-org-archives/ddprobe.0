Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E98A1D86F6
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745506194; cv=none; b=twV8SgVp5pl3j0Dcij2Gfx3c5aAd936ICyEDOrA7HR9Vo5TNTVe6tsp/lsbJlDV/O1N1JdcjcbiCnCcd8bbbuTmT+zuRK4uyOc1R30NHlZiFQedY2kvJP/puOd91UXgx+ybME/iqYnmFYKbtQcvRufzV5CrDWU63pDofBuIXys4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745506194; c=relaxed/simple;
	bh=dy7cUIZ/HdEnzQdUzw3tiZQUbrPsZ7EW2E3rY5oJgxc=;
	h=To:Subject:From:Message-Id:Date; b=DvZdUgzpX48uAZuW9M4PHLhUkxk7muWv935+XEupF41BqWIlOlkismEjL6ATAvlylbmxkD0pW9NhR2EGIu2cR+phAFzLe6R9NSFmxSJcmnaBi1OZ2MjXBaydFhpC4vr5o+m7lh9ez+OcPUeizNEDXrwTzCtuaU99c86P3AfvnJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOng3Frh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOng3Frh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745506193;
	bh=dy7cUIZ/HdEnzQdUzw3tiZQUbrPsZ7EW2E3rY5oJgxc=;
	h=To:Subject:From:Date:From;
	b=VOng3FrhjugJVK2sd9KppCl2Fct0kKS1cXZO7dpvr+IV83xc7bNqqJAKjfeqooiAC
	 eoAu/fmvbqNVrRQRnC3Q83jd6S1IDF8gNW0QXi1DK+RIPJWcJj0yAELYqoVicD+CIw
	 YxDjooAxAVtWLlvUQv1nHPPncgrJmCzCvWoQ08CVfKUvNoZskOqq59XfCIs6qHBUFD
	 MAnziVTh5d73g/3VBrTv4xN/SBMXkk5KChQ0ixnwWOTfy/+EzGwuoQAfOPllmHrtzJ
	 Dx8+Vb1pR3ZSN+dD4gtLT/0Ca8mdnbH2S2r4PNU94BTf3W/xjfaafL0WvkNXNZ+Yot
	 3EJN0hwQVlEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7C369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550619357.25650.9871305015180780883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9077794b7ce83ad4d40a631a4608671dcdc83b9914f61c01fe382f6b527b5f6c
Date: Thu, 24 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745506193
