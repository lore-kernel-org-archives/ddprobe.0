Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6575C13F441
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719488663; cv=none; b=m6D3XKoU7jPihs2A6y1WgKLQyoWk/oX1DpjNGi12OaXXs1wvXTqOoup+3R3doy570fQ/5o3RHScUMcV4+udGhzSSsWYIuKHGJMVQ44iotq794aA8DDs/VZCi64qr4gbjTLbnWxtOcdT55fW1shMarZkFeRw1jXPLMT9W51404bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719488663; c=relaxed/simple;
	bh=vch3yo9UnUytwVQVM8fhCsm/q00wfjiV9lsFla9NeHM=;
	h=To:Subject:From:Message-Id:Date; b=JFj3+Zi03ck4KO1z8rM4yLpRFCv05vapXmJDdNk26K1g2sBlw8KmaDuvKoAGUaSNbHfzxREhaXjl7hQ0ohctst5wAtap7iN+D8Kqwckz6UISSYNqF+TfAXrJVjCtssE72t/5GFI5yMzHbU4LtaOtyZ1DZ26iwaz8+reNSNctF0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGcttvJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGcttvJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF160C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719488662;
	bh=vch3yo9UnUytwVQVM8fhCsm/q00wfjiV9lsFla9NeHM=;
	h=To:Subject:From:Date:From;
	b=MGcttvJhtWKiK0wQlRmoPCMIWaEdo7PFlRYDXn3aRkHhvarcgq9Hlx5/hYE3GIhfK
	 AkbJRb/8EQiBXy1vTH5F+DszvJbvUblXdoVBpjaX8LpA+vsVsrqoFWmYWTiBHJUJMF
	 FyKDEILTrcs79xifvJctHbgx8wVL2IytTpXMcOPD5iCX6gL3DYRgeOC5xX71wn0/5O
	 71a/Sru40m0hVpXX4UhqUFWbbADTcnOvwaBlg7Safe00ZPV039R3EtnMwi3491XXDh
	 mltzSl7SbhXgmT5/Y0IZPVVyv3vpQcYL71YTBUbI4pK69Kw9QEW2blqvRi0xuv20Pd
	 L2lnp4uukYA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0676C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948866277.15808.15729324684163483289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86a34f3bee1df67cdf7fab31e1b98502d6dac27363f220e0b8bb262bae71013
Date: Thu, 27 Jun 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719488662
