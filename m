Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FA92576
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741484935; cv=none; b=OaVuwLWL+iw8VJgbAFiWxEoZeZoiSIY8kdPuUR44p1ONtmLILa50rxE5aoN25KDvev8AdFJBs+C3tJEvO10Ip3Iz4QX37pJPG7cX0daFBJTEnPf4LQxF+FGOHuPkHV+VRVzvnA6ai9au+e1K5V0hXRz5cXLv5baxkbCa49/8uuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741484935; c=relaxed/simple;
	bh=QhPmndujo8hiTYs13hSK7herNZWp5BTGK54Ekg4B1vY=;
	h=To:Subject:From:Message-Id:Date; b=ddfqwnC7r5DIEL6gqGNNk6tUmXtNqT5vVsLNPoeolPZ/CfP4DAvOt42QvVPS9zdpLTT1+idFN40qceRUnZjC+ic419+cxHDAxgKCJTtRYxLZxbhTeIfiSX0xaTbBhwSY6gp9TObWfe5v3Ws763uSQAxbXiQpwGoHc/ldf/M2h6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmNrCjIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmNrCjIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE093C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741484933;
	bh=QhPmndujo8hiTYs13hSK7herNZWp5BTGK54Ekg4B1vY=;
	h=To:Subject:From:Date:From;
	b=VmNrCjIH8mFPbXCvlaLbYxZ6rKpomDRfPr06x36BUZZy2P8OF1plJGbV/s7D7sRbR
	 C/pkPxEp/SUamSN3jYPbQfTqNRFymc/XnchVnhBnUbRdLVm+jlR3upkySeMmsKnXqe
	 iXTLMloRAB4TPXZXqCOvbYAIaW/HGR3Due+kieH44ereoKFcScOwBlhKjB1xXnxFEQ
	 NBSZRiI5uLSQMsn1vRpyj4k1HlonSEnW8mmjMgnvnhR0lnYph9HGvXO1UNy2xYhtKG
	 wv7lLk7nIxp9j8CVkn/5FBoHgFs3+mnbqfCllwsDiJaDEjPHV3GSavtFSyiUMiv+fU
	 b4jaIIozOZ06A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5678C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148493365.11735.7162861743217950583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87b487db93dd3f75c2ab0767737a35d252dbe97b8cdc9392f4ed4beafcaf237
Date: Sun, 09 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741484933
