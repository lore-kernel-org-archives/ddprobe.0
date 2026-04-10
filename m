Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D954330D23
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775848654; cv=none; b=TI/2G3Z0HsF46EYuqTvPzu9dZp3o48kx0l6/nE4+yvuUD6WLUfgR2c1g9xrY32nxR2uaesGAwQu3Ppyus1buTmUjsarD4MOyToRKrGRVXa1aTdlsEpOzXDAPZ8SbGI7PSB5YvPSVtXvAYCuh/GHs24vJGp7PiPydO6rdxMBePVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775848654; c=relaxed/simple;
	bh=li+ajTiODEOVfsftB6+SN+Qg6hsjxc5CHBTLaY4w7XE=;
	h=To:Subject:From:Message-Id:Date; b=joawml3gdPdBmGayQTOGCT3TDhZIp/GkRiyA4b1v6qjhg7MZo7KcioDpSVGNcfuhg9xtSxpnc1YUTHN6S5vmiXcT4eQ3CcyJod5ObE5txzXX1kMVwI63jcD1C2mK+qJoR8JCOjAu9jdQ9aOv6Jk/dx+9jOKNwqe6RpleCRtfjfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og8jGygl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og8jGygl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE7C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775848653;
	bh=li+ajTiODEOVfsftB6+SN+Qg6hsjxc5CHBTLaY4w7XE=;
	h=To:Subject:From:Date:From;
	b=Og8jGyglMwtH6NliVivcfO0dHygArpBwzi+9eT8QU8asj/7ybJVD9XWkQLWMpWZeg
	 x5VAnEZ8i5/ZWSDNmE3Bv0ihnHHaje85UtrRg00YcLEy+Cfpm4I7YXtYRRkpo3W+5O
	 /zk30YZtcIbZ4GzAmyiCCBm/FU/quElSSraouFHpZ06BbtZVkSUy8uoitrXIAZsHBG
	 /Nesqyc4KfsxBlf4ck+sLglqoJHIiXmmlziUTKGjWr2oHiHhGJB1w15gkGQLjBMGKa
	 lczv6TrvzW7omBRqx/fHyAxDe0Oes/4q5Y8SyBMoIeiG3/pErMaDgq2ERXPu+EB3DD
	 amj3dLKrfHvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACA6F45A0A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584865371.29084.7440994957200349460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5acbfef67664a8ac3f799c0b2bc18dc3f62ffec0dc70736ca0169a091aa4e0
Date: Fri, 10 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775848653
