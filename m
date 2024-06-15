Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9413D60
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718423303; cv=none; b=LSNy11Zwfjj0Bvi6r/v9RJvkQIpm1kpL2EUKqH+UvuLqFS0YZyBGJoeu30r4ybRKWy5nq0rTB9ooNmeq/z5LK0MYJICIyp5lqDiP6r2SigmApzLYNc2WvrdXvkOxNmYkHcFel2pyc6d59TnFWx8eWI9DPMeMtf5H0VO0NB0x8PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718423303; c=relaxed/simple;
	bh=ykRIpbFlP3H3mjnx3JVV35RLc1gfqQvkb3evyteyPL4=;
	h=To:Subject:From:Message-Id:Date; b=lEIMmZodn2mYgc+Az7PzbRwYv3eByiPCR3b/ldtItarBSAoCzrU3sVYVCZsdbzphI19LOyDaeTlQXZBehhU0e0TZCkAVHjxymK+FnP4HcFjwjj/DZ8K5GJKxp7P8fq6iigL52RWRVMHl/VVM8xLJn9O6XFiI/4SbHcPU+vIC63k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9sX3e6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9sX3e6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9DFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718423302;
	bh=ykRIpbFlP3H3mjnx3JVV35RLc1gfqQvkb3evyteyPL4=;
	h=To:Subject:From:Date:From;
	b=F9sX3e6cknxk23T81lLSvpEdg1ZKVkgbW3ii81SXHwn9pPWPSRVad389jIowMFb27
	 e4Yk7VHitrvUwJyhd37FEQVOl9sYvGEYTHREFTfKzHWqcIAuvpd914vmibVnMeYX1m
	 WXHUdyQrO/NEq37hXUFLEa419Uazi+IGYY0+2x31jZLCo/jD7pzPe4dVkNvy1/6S2B
	 9zlrSjsaQ+Mcn2u4UhQ6KAyb/Egd2kPGIRlNsPBt8ikxPAVbIBo4mDIS/+WJ1mixdN
	 1c0wHmrl8NYJHJG7KOi1TKBkcAjjGau8CKszWUfal7OG/aBixhyW41CWuVcuo97j0d
	 ftW8rSak+iWrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8154C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842330278.544.2591812304810317503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c0f3aac1578ec13273293d3c0a0cd3cab722c7162c99fe14d6c949ca288108
Date: Sat, 15 Jun 2024 03:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718423302
