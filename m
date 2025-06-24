Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2524226B2D3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750756194; cv=none; b=JM5wl3dRpxoYF1RJZPCS+RxB/G1YUhc4X4gLxaVPWVJVNPnJQy8RQYSazK8rqffF2hqsC/7JO45JGDs4zu5ScKUVH/XRoyVlkl7lynRtIslsphyQm5elpXpM8Z8W+4zkx+cm3e4O65AQgLGoZI7u8OPkGf2/CIS9LqTbVIwlGq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750756194; c=relaxed/simple;
	bh=3nd6rM2ma6mlnnEkKsm2v5/hCNNcfXyDHDH2GB2pONw=;
	h=To:Subject:From:Message-Id:Date; b=V+97bASVyNYRcqiqV6Au26YzsJa1uO0mn45Mc3syvPbYBs+pm7Iu6fB/KDuAkUfLsd0lseKMFeXXyoY+QgHUowzcCAMr2SH/nJfH7/3Q3dpruVwBGsp3S9PHYtQp5DdaDcmWXoaa/0LLAJs5gbWqRIPEBw3ZQbLDHTI4sXtmpe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj18xNdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj18xNdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750756193;
	bh=3nd6rM2ma6mlnnEkKsm2v5/hCNNcfXyDHDH2GB2pONw=;
	h=To:Subject:From:Date:From;
	b=Mj18xNdBotSQNM/drAHZuEaCbEaapL3z/31AreE6ahMujz0adX7wP3UEexy0R8C9/
	 Aql5z4J37W8w7P6Siap9eDOWPE4P1ishkNwtLTKehB9W8H1G4R3kw82sueWVpj3KdB
	 +o8npJB5zBJ3LbHkJPzDFDMxNDKVxkfXZRmft2Pprd1WDTyNuobtPScjjaWL+mVzMV
	 EGk4Mf8D+USPVnGvhq/WZK+cUGX3eEsOQgj44HCaxYpnC+vM6ikDnQvaWKK9xcPSMg
	 CMUjx8rMNJCA2lDSD7Glm2/Ko2H9pTHMfoXdsp/wo7bfHexj9QqYTpfGu3iURExiM9
	 s+Fw+JK4U1kcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD3C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075619357.13502.17091641953461894866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc90b4b2a50e7feddd6815bb92408cbe4539ce55b7145b6c67f8476c5a62c7a0
Date: Tue, 24 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750756193
