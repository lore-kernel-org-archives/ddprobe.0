Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F980BFF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721314554; cv=none; b=YAWXYW7Lic1W4l5iPRovogxEQL2O3ab9FZPT5h7VL6W5LLCCfeVfJCvFK1+VopbWaVgS5RDw74JOPARal5fSLaBHBGxgIS6EOhg8OepCRHTf61WAwPa896yNuHIObNeYwSGbZoYjUu3GwEsOkJk9b1UNVrH/17wMki7/jsQAV5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721314554; c=relaxed/simple;
	bh=gpIL+roM7lmxAveb2WuplkWYwrsdGaa88QtWxF8RJ10=;
	h=To:Subject:From:Message-Id:Date; b=sdPVyui36byHQGmaXmUhDbsKmWmHaQjkv53/mDhHpUpEufbgN8WP6qxG+ZpSzLao6YUpFeu0cisTZw9mglMZPA1WyhyV09lX+/i/Nx6hGC4pd8dJ8mLoPkQAoIwjuefILaYoaEcU978OtmiGicKn+VWYMso51xTYsVOgIUjwUqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jA5987lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jA5987lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC4C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721314553;
	bh=gpIL+roM7lmxAveb2WuplkWYwrsdGaa88QtWxF8RJ10=;
	h=To:Subject:From:Date:From;
	b=jA5987lWTDTiv7LKDPBDk1jgMTzcHmzKlwfTgLEWozniU3TLfqmCidrH06xLOCsYZ
	 GMlw2CcLsSj03vmP2IaDwDpNLIQcJdFs8FjEgPbuNsl6aAzB53XYV9Raux1rT2LZCy
	 I0wz/OJG+zXdNqKSIGvvzJ/RyIetfFCpjPP7TId7kcDeE+bR8jPaIouZ3FELN1AvWq
	 omDppCXswR3PeilZWK4MvIJC+MnYTgroOOhlceBIa0YLZpDsNY1LNxNbf2mtcUJAtn
	 HXbfEu6HAJhf6J3Z/Xmiby9gSpfbkU6UFhSKGsjqysik+xyEH6btqMHKk/QFVPmG77
	 YNF9cnHWyIBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95951C3DA63
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131455360.16318.4805613981669354900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1077f92344cffb04b506a5c1e0ff5647121c1404a89211b15c250859aa40f81
Date: Thu, 18 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721314553
