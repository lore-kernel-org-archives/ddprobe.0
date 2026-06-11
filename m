Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A99035E1C0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781165194; cv=none; b=ac5moNHZtToST2CwpNdBUiXx40LJSahqBDNQq4VNRpqavIAw9tJvH+LEd4a+5bC9IiVQpERMcEcQ5LsmTwHT/bJTyksaKcFxJmmtSTHXUOUQCQFteqGfKa7dshf1bOFeSKfBv+wtVX0koCnux7Vkuaqe/+/XA2POakR8Zgxj/Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781165194; c=relaxed/simple;
	bh=/MxPLUm20U2VH4Q9cUu8Z7Y9hvC0lwR1ttaI17W7Nlc=;
	h=To:Subject:From:Message-Id:Date; b=hYFpYV33DjWyvSz90OiZJvln52Wg+7dRqIkgaxE1GXi8kwk79AkYCZVHhSwWsPJ9YD8CwSIbme2s1qCSBGr1z8o9FEt4fUmgBgfMyiKqZbnIAra8P4r+zR2DEsKw+rZFjjGGCGmzwI+tZU+hTHNOSAKcELxFVlM5f+K9O/OUhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR6e7Jm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR6e7Jm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7E3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781165193;
	bh=/MxPLUm20U2VH4Q9cUu8Z7Y9hvC0lwR1ttaI17W7Nlc=;
	h=To:Subject:From:Date:From;
	b=FR6e7Jm8cdea0E/nFwE7G7x5/C3e9Giy5ibxTFfbiXALYJoslT2b+a1XYg346TsVG
	 W+FEJleuFbyPFQLDUpa7atwpQeB83lZz823Pm5NXCeXzmGhUSTiGLJJEbJ7aFMgK9h
	 h7nlMYC7jNU1S2rDIWz7m3g+lf+FahUEDlBVoC0Wg9+ydPtefsr8CReKtOoarj2B30
	 nI62O32km+weDi8S0O6XhqxU5oJSmLRawZv7SgL0EERxwQLdT1tcGuOypCxQqQkKNk
	 A4o1YTWd0Vccm0FIIUeKCt5dSIQT74BFJFc4ofWqSEGxPIR3mjVwd1ztoy9ccA2pko
	 vVGlt2mS2bicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8ACD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116519369.11530.2585609616435672544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae0b9276cb6b49048330db7ef1f1e6cd32d5ccffc9de42f5335245e0baf668b
Date: Thu, 11 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781165193
