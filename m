Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686A435E94E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792357234; cv=none; b=D2LUmFjisp2uKlJD1D96Fm67QmhfO4uR54V4jnAobhg/Xu2GXULwOCUReRtSWW3ua+kWQ6ZiV1SSndAycfJ4KHax3ucRPxOgvMpwaZwDoXNNkx3E6fado+sunLNBpdjQ9TfinmHvQRHi2hu1rbofU4dpyaazMx4URyvLaDI7idI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792357234; c=relaxed/simple;
	bh=aej7pHc8mGhA+2ueBBRzU2S9hDkqX+onTVS8u4ZYoBI=;
	h=To:Subject:From:Message-Id:Date; b=FwJJ0lR9sh6C4yho1KkabHuI7EvP98fQWvwDNvDuqcYNeCEZ+mNY+66grg+22CQFQoDgUbezehtmz2Q5K4GEv4qk/Kyn/o6eAzGxjH8thSpUag44OOc6N9k+DHcDmUR684Xl2Q+tryKSowLn6ZNlQ1IG2279oMBPRHVpE2M4jAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evvUoj72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evvUoj72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8C8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792357233;
	bh=aej7pHc8mGhA+2ueBBRzU2S9hDkqX+onTVS8u4ZYoBI=;
	h=To:Subject:From:Date:From;
	b=evvUoj72Z+KU9Ha575vD+o8MjihSt3sLaXbbYKAVP0a3DfYyCYbRTMt+Mg0kn0ybN
	 Mp7X/3R0wVzgrJoYyuPeYa4BxtzMuF3+Gv12WNOBb3Cjoy48GP7V7N+I/2kk0t2rNp
	 mWN89XTiLCfZa3iYNKdg3qSWaUu904iaLUCxCicL05uD/ooX+zfmk2H8xqiBGXxiZx
	 Pow4BdeJDX+iHY07GAg5aOP5gjq+wZ6WMqE2L+HGdr4dasSFDXufgn6jVHNOLKrRPi
	 OBWRdb1wXHEEE5svdSZ+iREyTZqN4IwkSbC6onrCWHtVL+noMCt4zktKUvXrZ3Q3re
	 JtA82hXG4gmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7364CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235723371.18225.17455266263348302122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a04ad702d859503aef315bfa08e3bb8a9e5cbf6415e1c0dd7cd47af9d6080d3
Date: Sun, 18 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792357233
