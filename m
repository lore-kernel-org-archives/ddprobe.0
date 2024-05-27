Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6A3200A9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716795863; cv=none; b=CBaUXugFIAABFd8K6o7aBG6cKECeFoU7cgIS87KiOe4dEj48vnid6y63/sR7r0TTjThpUyrbUddlTv3nmAifHhlcYj5kKfS8+GL8lk03jkfbAg+W35XR7iAT7jG/ID0soeZxNBUF1xK6EUQEoz6MJ7CcJyE1rJBlsZTqyC6n+WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716795863; c=relaxed/simple;
	bh=ydT6HDigL9+dmGT2CC9ccbP22JZsmah/5pt1ENtRFoU=;
	h=To:Subject:From:Message-Id:Date; b=Tczr3Sgftlvlw3wGsdBm1VsYyoql3aoBKOdyKQbsrW7RegfPfw3eXnC2uc78zWEz+TFGknE61fSodt+EZnDjAI9viTdT+dAwEnIhsuG03TpSYYabKC61Qfg/ll3kI7kzEX7aIzxRs6q6PUUOYcMt5XgUWekQ3clqMQ3H01yti/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njI+FzFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njI+FzFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B8C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716795862;
	bh=ydT6HDigL9+dmGT2CC9ccbP22JZsmah/5pt1ENtRFoU=;
	h=To:Subject:From:Date:From;
	b=njI+FzFXBvAxGTMLkFZOYltLzZMTSPZiWZ39d5UVf2s9ifFv/AgthmYapU7iCqJ1H
	 k4yFDPlZbTzzOkIoP2ekPuJnuXfGJIbJsSYrXS7d9UvCkXUX64ryHQWSyfsN8MrxpF
	 G5Z1Wl38VDxjGhC7fzMLiG17aPwU5USzL7cmgpK5og0zGkjj43xSn5gUkNw6//55uX
	 D+dp2zK/aaRZQ/3tdMAQTS763FYBxHmUmKJo6+/nRBLHSFGwNFKG4gr7OsRnutMyS2
	 O5L8JlMpyILkO6DP8lIANKbAJl9z5uDR0PqDNVhUcBpAl/gw+Yk2nv0HZNWTKJr8V0
	 dP/ESHpIoB0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C2AC25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679586278.8567.10318486601841273197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac0a7a5138974129d23399dd045d2f4de53d94483636569ad9f883a926f9093
Date: Mon, 27 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716795862
