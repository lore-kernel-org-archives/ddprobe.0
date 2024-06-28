Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F68723A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719540263; cv=none; b=lQamZnp80dtMHdsjVmy8g3t6qAv1UAEAvpClndOBjYHO/A4kyOI9H7xupOkRSuop51/KnBD3mjhD1GHGfyAM8SB09XNTz9bgI4wGYlJcXuSlT5y4lcPl4x1yOfGpZdM5nM10ZrDGBxDclXtgGcHEKoTbrrmpW8Tc2CDwuDpIZa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719540263; c=relaxed/simple;
	bh=RVE1y/H7grgdBWfVNFrdC0N/+nfuhJfwjNludf6Ozgo=;
	h=To:Subject:From:Message-Id:Date; b=NKa6tQqONDHDdLwYGHPNfKSYyZSnBy0gh0DUoT/OF0QTf2LfHCNflL2rOgkzA9ew4JY6mrVKLstYVxkiZ+EkG5h4FHqjzK75AmQc9vqSDEynMQl90B7lwVQYRRknQhUThQ9zibgjOQcNe5u8os9daRh7TjM/Ph7m0dptzIxACyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA0YwDPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA0YwDPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEDBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719540262;
	bh=RVE1y/H7grgdBWfVNFrdC0N/+nfuhJfwjNludf6Ozgo=;
	h=To:Subject:From:Date:From;
	b=hA0YwDPOLq47KELTMTFdPqRiurY3OyT+vI2ER0spcBcGe8z3q7DroKmcQuDoZ/tet
	 rL2bccwfw0lxhHcXt9kFTDBgBr0q5RYETBsZCgaVLOCSbxexfSIx3WRCbqZ126ynSa
	 Ii7m31WusQY42pSJM/Ar9Kgh0APnkNmqI3K+lGBjB6aHqGjv4ZZ44a9YZOIZ3bm5yw
	 rjaVPFhgCN8c6YFha7UjNzafUUa58z6XeLxRSfzNgtS4iNGMZK+InRj54kmRawYn1A
	 YazqskF7Bxxsk2scgnZg6PJLy3FGtcRHrPgI8oxmKcfMrWy6BoTJ7GjDG7qyzNkomx
	 TT2E4pM79k+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E2FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954026276.21974.3248773117071279134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbb2fa02d1e89811fb60635c5acc270cbb50983b96d68f26922072293929563
Date: Fri, 28 Jun 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719540262
