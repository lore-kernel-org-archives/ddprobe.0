Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C24613D297
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721313354; cv=none; b=MoT+QG9poj5wSERxlQDt0TjvYNzQ4bc3R4+X0BK85Hny+HwuE888L24aWv3J+r5cvGMDUhS1cIpS3KyxwcOrOv942zydWN6KXUfPyFEqC1TaZezMCyGyLUmlv+KrDnVrD+5yuFIdSQmBhGeELW45TRhOy96ymWmTvi0sVQwn03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721313354; c=relaxed/simple;
	bh=tkiRVUOA7FJk/pALpyB14OfrhnO5AtMlJVXoPKg2nhU=;
	h=To:Subject:From:Message-Id:Date; b=WrJrexIeuppvEXMri3h30xwbxXhqGmIeEFg4gyIw1I8szhzRY1zFqu7YY6+NSIXZGyfRrqoyjp7rKYG5lnPG9cCmT+v6WuNM6ZgsPJa5EJYX6RyoNEVpgg0F2UAlfltVyiklDh68CF34vA0heV6FVf8jSDoTL8vZ2cbPA9Iod9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxYIzD08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxYIzD08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC80C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721313353;
	bh=tkiRVUOA7FJk/pALpyB14OfrhnO5AtMlJVXoPKg2nhU=;
	h=To:Subject:From:Date:From;
	b=nxYIzD08NjE6osbnMyjnfR0q1yTA434wuUNpYd5Wwonb5DhTfuSPusVxloqd7dFPy
	 oQZGjjwgxUeU16iKkjvbTJEArbu9ihad3WA9MenvzdO6G8Ez8kU1FixzNmTPX+em3L
	 wO3caKy3+IUB8LGmdrYR7s5Z0vcDSyZg80ydWe+/Lvd9b0WIQKTTBPaSJ1n8zRA5TZ
	 ua7tFThGp88OskcOKGkak+VmHzjQztjXgXxGoD8okLBR9H659+z+eBUsX4WIjrOv68
	 wBZ1cy/lhqBpV9KZg7Vzyd+lNnx594SPDRObYyaL5+2QxuRCOX81IVHnLOVgEykvuK
	 cRX/K1cdNULOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94783C3DA63
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131335359.7530.8272276041478625870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d269e7531b16ccd6fdd23bf55c2d9b9c9f7a77ae6cd5c0af27bb5c3a796e47
Date: Thu, 18 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721313353
