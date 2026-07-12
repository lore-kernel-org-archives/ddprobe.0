Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391951ABEDE
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783856914; cv=none; b=XCc/7+9teBkBYNypozTZdnAuyNHahKzhXDtKEXR1tkDhKVCrDz2EcYLMxC7+pKtaWBYEVmpHlC61IUc4LtJwcJoYN4l7NrI9ppnLEQvxGpxi40Yv6drMnXPMtxKPjtF5HTlf4v1xVp9XJUZFOjhogfRgwhFsKuS1Q4UudM/8/Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783856914; c=relaxed/simple;
	bh=0MUIl9Yd8hJvFzSFzjx60KU9kYWUYxYlHzHMqpJ7mYs=;
	h=To:Subject:From:Message-Id:Date; b=UDPDe56NzNHsCViktMrBy5KVCSouz21cP9rSENRDMuK/tctitc1DJhy582yws5lVivj6thRx6JYaZoxl0OH6hRrm9YMdJ2VULp5plAy4EAvHVp9p9Ehu+V3nUyUZ/5+elyMzNOeCEtPJ+z3XrsQs+Wja7D7N9hHWJPuWv/NcQqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSGoWnNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSGoWnNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1BEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783856913;
	bh=0MUIl9Yd8hJvFzSFzjx60KU9kYWUYxYlHzHMqpJ7mYs=;
	h=To:Subject:From:Date:From;
	b=gSGoWnNFGm9vOqqAMqEoV+VGGHReCaTmXTax4L8i9dDRbJwogoE6DkuiWWYJ0C9jp
	 t3AKyYey7IwzO0UWC9lMdlCyDkMpsLCriuek/uLIGy+pKzQ0aQS5yiVhk0+X01huQE
	 5RlTaE548zIeZmzZg6BNZOGwd6FJ96Me/ujdSiajjRl69axgCk5x1ntZN1X7cwDrPq
	 hZazY/Zr3S0MI417lOgD4C3rDgtA/zu5yGVUdqKirGWvUf9MKoxQ4Dpmv8b02oXmP+
	 xXJ/sPJ9yi8iEXRobo1OqNd6zXHUlkys046fjd4ozGibKaJQhPFgWoTNDWv8qS3zPe
	 DAwCkUnLoY1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B3C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385691368.22122.16051128227573925136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8e812fbd6161d8cfcfc3a8ebc0dd789a6c0f343398f3ee16e41bb11ee3152b
Date: Sun, 12 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783856913
