Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5D115538A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718821763; cv=none; b=R5uFTTyWkfuVF1sMhYPnBy2LcwqsfByJUgcIjiLiPjqTh7aYYHwko4QnQcVSTXaPrq5ldaCqxe6SINAxwUsFnSohaCNKpEBDS+sN34uloPn1tHGI9IrtPTJG0FPXBlgN+X8OXwt8xMwdHe3bGlSt9GhAKvpB7d90St5AwT/H1bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718821763; c=relaxed/simple;
	bh=ojg/9m3HJzd8aPTQzdtrVRsDSJXGfakgmon0bR6/8EM=;
	h=To:Subject:From:Message-Id:Date; b=r9ScrgBt/BBbZAG35/eYJkjq2vIEk/kwiMGCSQYumzXhyEnMWEa0SqhR8WKPr6OzgwMyQCGSAeO1gfFePkEbP1kpXMrLTLIMBKDzwnxcWj7e+yXUf6n4Y+e5fDjLBaV9N+ZDtpX1tYUsdazG6iFV8aWKyZj3DAhQDAxqW8JF2YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC9EAwS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC9EAwS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE206C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718821763;
	bh=ojg/9m3HJzd8aPTQzdtrVRsDSJXGfakgmon0bR6/8EM=;
	h=To:Subject:From:Date:From;
	b=aC9EAwS716tdh/k1EWCtaM0rMkywh1WS6b2DDXkA9TEAUWci//ZOsyltnug6kIHwx
	 LQwzcXHgvzpYT0PRwiX5QHNIlZuheiH+ABsJYYrkq1qIie1P2DNYOd9rIm4AEKJsMh
	 FlXEyfJ4MGfFkYv9JpXkQpih8z8+U4JDRVUF6Z/A5z9tsEkzYL3Za0aGo5daamFkuv
	 bHfoMO2pFL0gO//gr6FmepP2kliZDu8Y5YtqNi7VmDI4XO1vCd67/Kgj3RQLPEV0eH
	 cO1emUrHKf+Sp8diOWnOplVR7ucMmO8iiPSWNfK6wzXwzyiFNxM8Lbl93wDQcmHuEv
	 EaKx7yFm6akOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC74BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882176282.17369.3191824666076406340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2217f4824928b287d9294932f1227ac0e6f174b3b7492a66326538f72c6a95a8
Date: Wed, 19 Jun 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718821762
