Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B03B2868AB
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773309294; cv=none; b=q8k/JEZ3cKMeIer+NV4lvhAumHBx1nCmlowGOLCjCR1YLR5pfqEfGopMz7rgnWwauhMltI7O5Zr3Nfxif4H8Zx09IygGNyc+4T2st6wiI4AO7e6LN7db69Wdob3XY7xu/yuyRfwY+0KLZA8ftJRW/GzvzaA8CJgV8mDwc1fvMUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773309294; c=relaxed/simple;
	bh=GMZBZU6ng7WgBpD0BdxI6eBI23/0WbC8Kc4YLresc5s=;
	h=To:Subject:From:Message-Id:Date; b=a5ScqGU3eHJ+dalnX4TRRprq0eLGd8DVJzg1f76y5Z6Lt4h+dVetE/quDFPQkEy8hD6sCvDmryJai5wL/8IwH2AU1GRPFoMGP63Q1MvGkXUp+tjvdh2PeO6heguLVSg0fdOv1mc3FVLgUtMkcg1sDDiA41BxkiN8sfRafM6AhEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3CIKFJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3CIKFJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773309293;
	bh=GMZBZU6ng7WgBpD0BdxI6eBI23/0WbC8Kc4YLresc5s=;
	h=To:Subject:From:Date:From;
	b=f3CIKFJsq93yEf/iLDguw5l6z8wBIPXvi67zxw4CKljfXkkhv+an+uGI6cwsolot7
	 /La8cYDNCa5e5SThcaU+rEKeNrrkuC4npIAncLETiGrv0eFzw1LTw5uKPAjix2Ij2x
	 3CWttiYiK7MruYA4VzeF7kenMT0IzIXkCxSaPY2pVV1x6moKFB4KgT8EY8j+pwDJ7D
	 LWvzW+qNg1Tru29jFbBDNPRl7KYwbUweuU+twxi5BhTvgzv/Vne059grcSvgMgOReh
	 ndRZOLYLQQTeps98KaU/nhKj2kYvAaWEDQpqhKu6S8g318ZPRIDib6dlOPFw/X+OLx
	 zn59KZIWHNs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32BFED2F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330929357.26141.10707207381652095722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab10395cce617249ef4f4e796aab6897e0a35c5f659153c821a322372a2e047
Date: Thu, 12 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773309293
