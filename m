Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269872E62B7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760014794; cv=none; b=ui9TsH6u7n5V3fg3+PNiT6+sz9CKvhXQbvA1iymPVH+/Wole4VW6NpHDCTrQmanyjRksI0kimCYIMHrgX8CCTpjncGH7nMa7HISKR/h+ObaZYPQr+nAsglXJF/ZkyvriHVgqvP0PCY1MahU/eIBLRnrgi8pcBMrSSBhlvQXX+ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760014794; c=relaxed/simple;
	bh=NXAkycGoU5x5HEuCawLjexGnHG/7cwem+BxsUvBuwaU=;
	h=To:Subject:From:Message-Id:Date; b=hxZ86yVLJEgFl83V44CCKu+zo5P3747alY5ty+cyFYrLykknM4IhSPeAtQ6wSUVR9S0XA7f4xA4t1PC/xj8qICx5WhWAi5VpQdSf1IddgEKiW47XWYq/1KSCy6c51RsyMc15y/nfqQgHEN1xB3CtDhK4MJY9K6o4/RzeRQuPY+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meGOaD+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meGOaD+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1555C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760014793;
	bh=NXAkycGoU5x5HEuCawLjexGnHG/7cwem+BxsUvBuwaU=;
	h=To:Subject:From:Date:From;
	b=meGOaD+4mDMzU1QQBtqef9kNB0FfA1R3+qn4eb6+lJakRlurMeFlXZc2SseocLlRJ
	 TcStOqdrRLViNOXZLffseGlaldXALfb72vDN94e00LEz9VIJ/gP705Vd5PB1tFRy5L
	 udZ9TDiT9DKp3QIxEEPPdsL+IOieX1bIzoPippU9sQF/gGSvdjPs8VoFqvY9SpVQ38
	 UrcoZGilBFsaBYaoaxZb5SLujundxykWjlmyS7bt4C3UG1Jt44RpHdtcn4zyRhYrvV
	 YkwqYtjHdXZ2DHUBkxhoxpMXbTIKJGlA4DuFZkjqQgK8Dc+06WzsHNvnDT7Y9QkjNa
	 mzaf48vEjt26Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B7CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001479358.25197.466301077833667879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8e01c2003b8616999d3bdcac579d9027416f7871d83d41fbbf88511e2363dc
Date: Thu, 09 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760014793
