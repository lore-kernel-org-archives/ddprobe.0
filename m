Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8758F2EC080
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767861834; cv=none; b=JzGvN+NZ6wXQ9kpgCYT5nhAJ2U/lvK5JVLsUPMKgD69qYwhA/ElrUHbngT1NdE0xRZLaWyTFbdjQgXDO6MS1mh59QpHoQ6jtOpPCeKzrJrAIK2PNmKFv1ARI8aUNjHJaAMbLDDMOu+wywJZ33ASUcTIXsXJz6kk4waW6zvXG+u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767861834; c=relaxed/simple;
	bh=wPMXq6p1voeMC1wjokEknllQx3ez8z48Pb5jMUoeBzU=;
	h=To:Subject:From:Message-Id:Date; b=g0fweQ1xbrS30Ib8RG8pQYWG8llnE0jykPj252seNay4zHrcJ7TCtaZehmbQJCKcWYAi7xyFf5p+tlJjkr5PHgD3bwJ74mFow8IqKTwex+f2eShJkm3VH4YQCpFzdaTwRiO+Xdka91iTE567oRlRVUwHCyj5i1viJkMWGzYpOIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe1dpsHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe1dpsHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767861833;
	bh=wPMXq6p1voeMC1wjokEknllQx3ez8z48Pb5jMUoeBzU=;
	h=To:Subject:From:Date:From;
	b=pe1dpsHn4DkpwIJURTfUIvoFNy5ZnNr3w5jRg69Y82a0Vf7mWbj9/uxDBGIAXjKVT
	 35bBb7rOnI6UQKiVlUAxp2mkvpMh/mRHUHT21rNsPtPNi5xVCbx82jNOuUWGHeSSTW
	 BJ0IV9+wwddrQa2wCecPBkxAZcvJ+Zbsxs7kCuyIkp87AccsKyc8Xmikp2KF4bV2K9
	 bxXTPOYq5FRMPy0YgrKWIVGGLwxipMl5K4FOZSxtKHx/Ym4/W4gGXhnFHWsgWyH/Tz
	 qa5uYDjuS0R2JmjoLbmHZmjOiPazr98xb+qX2ukzCg37+LKvaZDSZG/eZhCl3rURrL
	 ihGCiDW9PMWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E29DCF6A86
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786183357.21787.5478857353180794781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0f87761994e9ec56384768c1d1ca073cc10d5d23b849c9af1ab9ea440d63a4
Date: Thu, 08 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767861833
