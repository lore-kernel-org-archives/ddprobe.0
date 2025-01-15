Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC022DF93
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736919354; cv=none; b=XeNaFt+eFe0UfZs9SRj/2953QChM1twCwC/XWPo1Bq/HX7ibmF6GNSVLFcyM4DUJ0Bcm0yC6yaScSlHI4rgUp9xJV0NsLVS2LgEEd34323/Uu6Li3jbfvhfZunjg4/eXFEj7e+u1WPZn6GXWJvTJq/chca6EGGPfKCb/z+QVseI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736919354; c=relaxed/simple;
	bh=wqVIWAKOKmZK0Ea3E+INRSOVLpvpjcnWiIsNdXsqjV8=;
	h=To:Subject:From:Message-Id:Date; b=LFk7xtJWBsGhHezWMc3y5pSjEsc7rOPbl56RD3uWrFm/G2z5KHlmJ00H+UEj2i0k33zLfWHwakGRU8Of+UBh2Zlc48h0cKs9On4wRWgWEZ/cEU+PWDdrdNlxILeY51ZpRG4JSmEYi7JP6P0Y+V0thJER++aCXWiWhBP5lZENErM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXETXVj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXETXVj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A3C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736919353;
	bh=wqVIWAKOKmZK0Ea3E+INRSOVLpvpjcnWiIsNdXsqjV8=;
	h=To:Subject:From:Date:From;
	b=nXETXVj59uzOwODVmr5eKGPWuoolPcjzk3Q8TpPoqr5MkZ42rZ1BhUyuhXzR0Cjvy
	 450kvoOIW8j8xoQPBMWThmtHCJAkdOhQcQbuNotgWiqJ4M6wzcANek+eSNC/fD5oEd
	 4eJxv8DOFKIn25CQxRKPY72xYQQbLtDB3VfVnxJWi2DH3Rgi16DNay8jlEkzsYxNsa
	 sWM4gGo8aXavycTueefNQRgPgLSdKhjc+nVtdqGg838jYSY3H391EV6u591Rc92/4Q
	 UodmlFJ6HSBBVj6KnttZlVG449NPcsIzbAZDLw5AE2mcvB8/fahq5oHrPLGGvl8sXz
	 4wDYr7U1FJ7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509BC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691935359.10449.1487119073983172084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcc487511015c4c6b8c743b48f70cf388294fefbd75ad508647e7db351958f1
Date: Wed, 15 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736919353
