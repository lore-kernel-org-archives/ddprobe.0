Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488EE14E2CD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727248554; cv=none; b=bzbcIyOQRHH0Jamy551ehcRakwJh0Bnvsifz3JXxv0Rxh+1VBNrDttgqKXGy04Ie0q3744X5Zk0VkqzfCrp80NH9k164BineawXBr7/RXyMD9q2Kl9RwknebP8p+pY20Mt8J4Nerfk72VD89VNhdKsYGlAw2Q5dc+c3p2BxZzso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727248554; c=relaxed/simple;
	bh=alykTK3qJRodI7bAIzZ51Xpz8Zs+lms2xW7NTfWrIp8=;
	h=To:Subject:From:Message-Id:Date; b=hvp80YKpExvR3QZQp/JvN3tFXqJZDwuPSLBsWLfCi1qOqbGm4VOE6xaimrvnrzmpgBWOk5WsMSb+FjhvM93dLq5IqY6/n7eWTIF2p0Klm/2JpYC4mV69f/SvGFQJeiPWwN9CMJg77qpxy1RSbZpwWY4yUi87dK9H1QrPDuzhZlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXoPxz5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXoPxz5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF65AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727248553;
	bh=alykTK3qJRodI7bAIzZ51Xpz8Zs+lms2xW7NTfWrIp8=;
	h=To:Subject:From:Date:From;
	b=UXoPxz5W/1Z4O0Pl8mBXsV5xsNS1TO/7TlgYa/AIgZrdGFLOMEIlgwNbahzSsyEM0
	 jYzw6NlfdOKVC2QMWUU0QGr4Rt+GHfnB+6+AuEkjH2lm4GlzCRw/Mz9KZnSo5ppepK
	 12c1S1vVnN8cnSq9gEZfMTRKuagWA6tO+wyFcisHk1sm0o2WoFLykgsd49sR15mdgf
	 DoebM54O55aJfqomxbdqDry8Dd06rPncTVsjOpsXEaChP5e3rvbqporoy69ATw62FW
	 v9Z7N9nNtzlJb0Po5pP2Zx7X7A7NqtaOnEpR1U3frRLLoVjlEhegiQkPI+Gz1f5a02
	 YRo+0CKtFaYsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B69AC369A2
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724855362.13747.13258193019590456217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f58c19dd5df7d62467ba6a763fecec7ac2dfb84ba8899576db0240dc1e2cbfd
Date: Wed, 25 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727248553
