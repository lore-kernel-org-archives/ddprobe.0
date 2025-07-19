Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B85470824
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752931794; cv=none; b=heKlWeL+8fNa78fvgj2oyqZ89zkDIae1e3ym711sPrqL4WtTkDcCCD7GvFw+Ypz2KyJeIM+C6iMosw/hOzKmDf7PBA6UsZMPqZySh0l7DFSecRTaxKweMdiypojxb6U/qeoz0bJ4QBunCBtk6gCXGGur5QXPoaS48ZE8TbvBM5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752931794; c=relaxed/simple;
	bh=XMCP4lYQTwFzSyfjN8edIgIn/a2v+wuqb1gWKT3Nn3w=;
	h=To:Subject:From:Message-Id:Date; b=pOaWAFlqgrD3MHI9g4n6lhzvz7dRyx2ns6N3UxugLMYyl8fZIKBx3ND+cez+o6y+Z9LIGYvwcaeYpJAJTvDxqUv7151pzEiXlSlB0zcwuwjizK9gwk7j1u/QwGnYof3vV5+NLvA2Mc806getNY4QyPzLWJDx5G+jhwnE2L0oX98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMlRD2TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMlRD2TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92D6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752931793;
	bh=XMCP4lYQTwFzSyfjN8edIgIn/a2v+wuqb1gWKT3Nn3w=;
	h=To:Subject:From:Date:From;
	b=sMlRD2TWgmkJC7P++t8nNeoWYXRDg33Vc6/Bcw2cNA3IBj08/D/6KKW17LWyjScMI
	 8PFnEUNCmDNBPNj2fGu5gPXCeH6L+kHvyNnVUItElB4843v4LlZkQvqiT7NANjOaK4
	 CnOmhpSX44FkkLnSy+FeDoe98rNryAFuzullXJQ+lpEHjxzSCeKi4HCUkTeqQwhSwu
	 fGlTRHzLdJu/5Tc0P3RTUAJbkUNzwVe+SA58+ismCj1cu+9d4T3bJNpKHxODAcZle+
	 qoomT8KLUrUqHH3x17nb0B1TP9KEJ8PkOVLDgKYGSCUvL8WtH5Mb3hVqs9JLTdvoK7
	 n3KqO2BsPhDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C2C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293179358.28354.2596993477483275258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07041c440986050d05c4d77fc7994eff1d91f5f55e51d72bb670e2b9f4ccca1e
Date: Sat, 19 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752931793
