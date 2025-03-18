Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CB7211486
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742316594; cv=none; b=V2VkZa7M1h24cvAsXYkHo+uoDTK3OA+8Nw5QCHg8LauU24osQifx+gmVoS24P++wSTIDkxWkqoMxPYPNZew40vPPKAuvHkCNctZQ3o8m4cvd98sChkGz0nqC5k1m9uXj32rYDTd8ZDVcunUurxpQ/CIj8cKTZJX1yW62/kkfy7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742316594; c=relaxed/simple;
	bh=zEqk+YttQkoa4bj6flcld/6nPPeBRCkr2r0/aTeef7g=;
	h=To:Subject:From:Message-Id:Date; b=Es4nbvbp06nWlAwrbvvzisIjseL7XxUIatfVo7s090WpcMUOaKwE9awn9uIz5yF/2nDliQ0CaqqaJoxgkLWuG/3zhP/jsw3fC7XVHZekoZFz8j9iceqINEhushNB/CLBG/f8Is8TSLVZMLZ2Z2UZKR7uukJvwnnNgC+FwIFTgIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHlNJ++r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHlNJ++r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A0BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742316593;
	bh=zEqk+YttQkoa4bj6flcld/6nPPeBRCkr2r0/aTeef7g=;
	h=To:Subject:From:Date:From;
	b=lHlNJ++rAVLd1UHVM7l6e6DhEdqSdZo3v4ny044CfLJRNpxOgMSYNZ5q9qgUVw/wl
	 1kPdNIMc5fjR60cfjMQSJwmAAfpXNj2YZCV+sZWD3pGutnXApC/nJfSP8wEQW8uQbJ
	 SG+sGCJZ1fW5XAy7ZdrR8zBxx3nIftZTdrTBfu/u4wEeo6Di+mZjpz9aCpLsWaTtTO
	 61RqRZ6o2Ge5YkuiVZKX4vKlVso1RnqpTMC/A8J8+WV810pdc1gQUCciiuiMR5Cezu
	 HADbA+pNXS4VbdYZMR/2lRyC/fbqYxmMuszKv7YqRKyu8ILMCDv267pfiN09YSYaBu
	 y1v1V34IEI8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231659360.6504.6605375143235183102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40de8c0c7a91e43e6125d77b2cc86fccbdeda7696509da6e462714914ce1af60
Date: Tue, 18 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742316593
