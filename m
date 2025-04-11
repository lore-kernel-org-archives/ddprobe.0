Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0621DD9AC
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744379994; cv=none; b=eaQJi0DwAOnVPYlOrHk6y1q18S6ye11FGajGIa404y4eY4dLWxcIRibrdGBBsfecYd3+hIDogko8nbV69ZNMz6hlPsnOGIqaSKczFF16IzuS2w3EtO+vb+2FmzolstXuuQQQpCXAsyn5gErWvDv9qb3SlbXW2oXSOP3yS982JkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744379994; c=relaxed/simple;
	bh=ZC6YZaNmRNXUUbJMIBytHGafEWcm85uAyT5ukuEnViY=;
	h=To:Subject:From:Message-Id:Date; b=VFpdmnPsAFTtqZUoqB9RcIGVVmTcGF32yD17BaTlGZA14On8BHgbklR/YfDeiMITjj4tWrJbnVkzNbP+jdDnDkwmOtRmEmxFxKZzf5BLsfOR9PIIppoOG2dcNWvUtaVtZp6z6/AONutF1xNv4cgsJaYswdsRmoIDlkOI8thZlEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CE0XZOCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CE0XZOCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AB9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744379993;
	bh=ZC6YZaNmRNXUUbJMIBytHGafEWcm85uAyT5ukuEnViY=;
	h=To:Subject:From:Date:From;
	b=CE0XZOCeliTSrTUKuUD5/nEPX266nkSYroQMXOSzeuBZ/pmrkXr5Oe6CeU1b2uQaM
	 KjTgbDd7EmHuske3Vpzt+zk0cfbJ6Gdg9UOXX2qZNvHslVFdZveFV2uMn46NvmY+yB
	 Ca31w2krzZ7LqfqHXaktUvmh/N6NCIVmSxhKg5FgW5eUnOHOp9sK9jrYTAKswk7g1K
	 q7FI3cmcSleEx1khk+DE+XCgcFN86DW8JA/WsWl4iiXN78/Xy/0/26wgkBKnKpol3P
	 CqNAfg0C6sKimPGns1qn0u666/GKLp3OL+5wo2Pu/h9pIzNAt4Zj2/ow9bNomBBroi
	 itG2iI/mAKOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62C6C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437999367.29972.377833789965041070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a8e400b88b752c72a0f5b1f5b0702e28351b7d8ecc0d2cdd377614372a8e1a
Date: Fri, 11 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744379993
