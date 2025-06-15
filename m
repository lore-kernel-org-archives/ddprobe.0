Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C45B2AC17
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750009794; cv=none; b=uwdTBrwt2VQE+MkqXNsqa5ocuq87Iqhs7dDzOUQ8d4hWFvcKP6n8q9wY7K6hZcx4AH6i6UPlVYZud5KY58glud7r5xriKOqLpRQZoJeU1dLctA+FUQvbvFyaH0Rm2kayuPCgralGnBIdLHGDTlm9Z/LrAE0a0Nk6dh0f87sq3s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750009794; c=relaxed/simple;
	bh=0/CJllns4qagdvKpX1Iw2QylTclTzVxvLFAgztnLMgI=;
	h=To:Subject:From:Message-Id:Date; b=QbCew6ci/c/VhrncCDOWFl6gvxi/Lf12GRXuPVFL3Sw+6ZIQ9rp3btZs8irJezTSc+g82XYsOshd+BJSoKZ8BlhC5kpKRBZ7qJys7P2DmwBLM+xFHdJdDDgtQEzrZ2sdB5wQAUyBMWFC+ZZOlZWpq13i49adxi4MD7klhGDqZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHUDOTYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHUDOTYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B629FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750009793;
	bh=0/CJllns4qagdvKpX1Iw2QylTclTzVxvLFAgztnLMgI=;
	h=To:Subject:From:Date:From;
	b=OHUDOTYQuSZk6ZFrGAmvFcovL8QUK4uUfWYoqweC50TC2zkP3k2KYnq0turv20I3h
	 9OuAdDZz7rYODIUIzOdQmiiLwqEyb6L8Ymws6qNAK3k03PrBdEPN+cvypMvk9k6ZAj
	 O83aIBNtDmAXHPtLd+tPXzrr1MTnA4CBW0EqqxPtOq51kuAKmheAbSY1QjumkjaOiS
	 /cPjSqscFBno5h+tjjWpeY56SifK9I5Tx+KFzHOqNwDO8x9MeBLY9/i6yeMcAbr7gu
	 1DCtaVdcx5FOdthpe66NazugTlW9gRz3dHuc9cB1nAf/qZP2oPXb8w0vFQo39DHq12
	 ZP4AzM9+rLzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C81C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000979360.23913.3729135016796269787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524498ea5d63f02edcd5d29238b53009986d234100373a70ab1f301f0c23ab44
Date: Sun, 15 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750009793
