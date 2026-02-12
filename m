Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166131FF1B5
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770869694; cv=none; b=oJM/2O1K9mwreT5Dg7WMEME4VUQnZFKrjqXgBekiFuU/gLFCvFFyMqOXHOqJvScIWWBuTwD5isDRAE94g3KLqiqElaVZOqebKwQZv3ToA5wf0kNLv6EpvJL5LOzI8WJCOq9EaIaBkIlH0dv2FHXp9HkhlSP+eILagktM/UaehRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770869694; c=relaxed/simple;
	bh=IwC0Bz9iyE94ysFs/MvPlA6MBxGg+W52TTCghOVIRFI=;
	h=To:Subject:From:Message-Id:Date; b=gUVUfo1FcCmxnHVd3vpq9sgKN09BI4CAwA2FGFcA+rXdd5/kU5HHrt8UnHzGT/8bLskcmNs0jLEvv+eq7Lgg7sy6D9ihJbifN4KLppW0SMqwlKFEBlrmik4HyFhsvTq+/ZoUEUXkL/W57ZaEevT3aMXX5gTbUfLapqaI8avtIgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9bL24Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9bL24Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B389AC19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770869693;
	bh=IwC0Bz9iyE94ysFs/MvPlA6MBxGg+W52TTCghOVIRFI=;
	h=To:Subject:From:Date:From;
	b=S9bL24KxtHGzRjq0PnLGLQk37i4AOvEVn3NYYWQesLjeHlJCONEUhiWM/BVOjhGlr
	 FaM3PVqW6QC+ShXXq382cm18gyvRGKRmlOZwH0h1WgCS+ys0aZL1Xmz8Soflu+GKPm
	 d84ZfrHwHAcS3u8fDy0YS2MJ/vfawLfOaeUP1YdL1lYWIQjmEwut9GEdm0fQQn277L
	 794pxQi5yT/iMCM48Y6O2cFgKxnqcBmVCoX59LMyIR6d66zOvxUJUGoWH/bPI74Inx
	 PIInfjTHXiTnmDFB513G8gw2Hed9VQAodytLXLn/jsrWRtOa9oZ1sGRWrgqumajYq9
	 K+56xJzA3cTTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A299FEDF02D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086969364.12766.5822097715427712515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1a08764865fee0c82bdc3bcc25ba50aa44ac0ba54e926aaaf741d4e2d0c597
Date: Thu, 12 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770869693
