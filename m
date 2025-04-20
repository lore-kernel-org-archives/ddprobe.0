Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420AA524C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745119794; cv=none; b=sVV+2kRPW2wwUuHmGrtUGZCKiP8+w2d0DUOBa8eFwv4IB52gUE1lKvSzyJOKOgga8G2W4CCzWzfbEoEBw+SxmFGhJ/wEzX/nwaPmhS7YtqVou/cwpAO1vR4vyytG573t7mdO5bAX68zUuh2ISMWyg4LZ+PuaE2hscelTFuHeyXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745119794; c=relaxed/simple;
	bh=BQvX73TBvkRo9+KNfWlOo0F8CkuGwHLC5NHpanlZTA8=;
	h=To:Subject:From:Message-Id:Date; b=qLd8rKKCJbetAXMmhvgTFTxX+ceAFG3OVkW3ofQeCtxB2Wt9sSbOOdoAR7NnDbEi1oxuh8pL3m1iiELFIV5IYNZ21MtN76kLLkVeH4fHfp3tUALlnN2zRJVbyGGs7OhvrvJIkh5u3UQTjg9Lq6kcaVVanR+ZTGc6NyNpEKWXB1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8E3ouCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8E3ouCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BC1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745119793;
	bh=BQvX73TBvkRo9+KNfWlOo0F8CkuGwHLC5NHpanlZTA8=;
	h=To:Subject:From:Date:From;
	b=f8E3ouCRY/xQG6HBG8qq1Tf90Em7sGxtRGnyHO9B9c8fE+Qbt1txQg5Wltf4TfwOt
	 NKFVW505yGJ1CsmsJAdUIQRtt8iwcH64Yp/y+457hYifEeC6zgQt84cb0EdkW1MzMI
	 A3IdVnOfiScrYuYKFtk1rz+9ifj+918Y870cMueCUDvVU3pAb4cP3n5l4jMAaQ8b8c
	 Wi7hI6TJz3+TwDPL3vRGOWQvG1Y0LZOSUaO6kJWPXbNQBRMr7QRKwmRi75aNGirgmL
	 pP2BxVRHXTtLDUEh0fiW73BKRM7ZECbHHC+AyuVhU2NquIg78BqGVSlNcgtZhmxupm
	 BMFcuoMVAOUYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5DC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511979358.7664.6861884423824383842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ab32d8c9073238caba7e744bf83fe3cecc3565bc1f5f6bd2d9e65194047f08
Date: Sun, 20 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745119793
