Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C0DA21
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722047154; cv=none; b=oOkfKXm2EOEHtq6KZNjnQxdbt+Pd29bcVafO/bUfuO4HsqX9WhgnyG9QoXfgPmLZpTXJYbBY8D0EtZxkC/e80c/nIUt+m6ATvHD2gHzJF+uyHs655ioPbX6+mDfZclQzAjJuxl4zEYqqwkHjYmsbR7w+//i+HoL1LTFjKZP6o38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722047154; c=relaxed/simple;
	bh=j17dLKwAPOrbf15MlhLqEczSUtYLNhbrHY/Hahi+5UA=;
	h=To:Subject:From:Message-Id:Date; b=HwG7+zdyjaeMYfC3eBRSW/qz7q+7aDHAnt3Y8scVOgU42TpWtj6oyts6Jj/aYdHrahZtJ6KH42sleLH940ifpEfCfNIPQz7fY1TvCi1lhpKn5RxaLWSFo3jN3lOf0xpb250JUnS5Pthgw+OS/iOG4ogLH3N+oBHkpNPaiOOUFf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYpdnSAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYpdnSAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA812C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722047153;
	bh=j17dLKwAPOrbf15MlhLqEczSUtYLNhbrHY/Hahi+5UA=;
	h=To:Subject:From:Date:From;
	b=RYpdnSApeaZ0W1Oyqzoj3drmShUm8MaJEHOBmzzNSxpMyZyQFBsE0OBrfrp3SyFcc
	 tOel6aZhKkAc/sDasJGE6jmAV1cPW7aHcki+TAeed563A07Bi6fW/9iZMX6QVl9T5J
	 gsl+TF3dO+LiYjPNe6b2uLyoMfii3ITUdDnYotJauJre3djJ/mG3NHoWBwh64yFS3+
	 T3ZywWUqbaI99pp+YjsDy0zvrRXvfcwb55Kdd29f1eMxmN0kTUXHfvrQuv+vy9lhE+
	 fJwOE+gsBBiGxzG5eMrfF6VND5bPCdl6YAo56ifN4HYgl7gszaiBAPw32aTvrq3FEB
	 jSVf5cvGqcKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A249BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204715363.27654.9037752913251911894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff293a97f641b60ae471a0247e0530c79ec78413738c39d1264a8982000e73d
Date: Sat, 27 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722047153
