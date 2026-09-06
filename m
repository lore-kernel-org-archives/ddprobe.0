Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597A0313E1B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788727834; cv=none; b=T8Z83a0PkieICgeBYFD/U/LFWrGnKEp/2R7vcytiZWzBvnk3VC/AJS1gLlzHs2kvhOBfSSkbrRULrdPKzAmMkY+iSWU1lMA45qv9l3G49tEWOrgCi5x7qiYgs+WfXtANMxE900o8d3BJGPeIJaahOi0O/gqR4WzziA9NlGvegn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788727834; c=relaxed/simple;
	bh=fl4/epL93UXLbNwQHLHR8LF7++VDPpO3xGWnPRmechQ=;
	h=To:Subject:From:Message-Id:Date; b=V1q2ApbqrZ9isnbptOTmcQdW+fV0QKOEgIh17yfch+aNQGmEzE9tn6agvrte8PtboTw6koR1uKgWfjPMPsCAOx+wV2ecSpkEvr/V2Eu2Eh0O467TwTtMbfFqnsGlETCj0dUg0kgr07fGuj5F+hh6KtboAmOw17T1v3seBzLJX/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bcg69mbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bcg69mbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788727833;
	bh=fl4/epL93UXLbNwQHLHR8LF7++VDPpO3xGWnPRmechQ=;
	h=To:Subject:From:Date:From;
	b=Bcg69mbsjE6m42dr+t7zEM1KvfKSDihxXxt8BxF1qznRMPTdvo3B7Hxw7TnTCREUs
	 RbNGGX04orRUtBQWkCO8YiMQYXxRxj8Mv2fYrRcei17z//VK8zREDO76OrFXvCqOM4
	 TWFRvFRysavdSJK/LOTtSkj7yLglprkKvvaiI41L1hhqIEjc5+9ruvusTL8HZI0iF4
	 GdUOVvTF9pRva+BiY8Q/jVJ6k5chekQZEll3k0nhDkdS+EJ80p0vmlOE8wZ3GQ513V
	 xPOwJsBXyf8nlKxeqqv8APQMRkZrhyWrUCInCAqjVt9xVHPYruZTY1w7Hy0jGXOOnx
	 QRPaFYqvEPL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B589BC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872783370.23533.13146786369698615365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1ed5466975a593c8676a0aa153ee36f99fb301f54b0be9de8a677080c0024d
Date: Sun, 06 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788727833
