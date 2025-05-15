Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380BE2853E3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747345795; cv=none; b=iMie2WVX6nYk+Erpa7Hcd/G2lCYf+lJzagm+kcDPCwRLphSYn1eWhPUMLV2HPPkEiAEX73xzGO3JG7E5aAkV3QkaEHVTNbYw0mgSCee7n2W40gVCmRmfN8lJPHy/ALhlVRcB17cY1qtSu8CzaG/RNMn4OrMVSStbEV9xtyqsBI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747345795; c=relaxed/simple;
	bh=IsEJwmG8tvkXm6ctcepLuqpYZGIcxInlkoLWcBMILAk=;
	h=To:Subject:From:Message-Id:Date; b=EMX4V3kgJNwUlQMcVJiZ6I1D7HOdup4vJiDF0WPxVBjQpQZqkXAoKGc/4xJh/3mdc0TvFtIfX394jf4/mSJvw9DQBBUPzpRFdldghpF/V7jWu6t/VUQbNge32ZbbOehzCkQLyTuNT0Bi6uwv6Lt2vn287auabnFz8PTc9o3/uLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahJmp9yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahJmp9yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A391AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747345793;
	bh=IsEJwmG8tvkXm6ctcepLuqpYZGIcxInlkoLWcBMILAk=;
	h=To:Subject:From:Date:From;
	b=ahJmp9yuwBRKUQ04C56ozCSKswXpYYdCK/cWZXxWKMEoiFowGYztRHawWJLfeiaH5
	 sx6Sdyyh+6dPV4TjNFjcPd0OFyyammiHDkFjqjQ1DMVn8/KgvPg/iaPe2xTKSxgFzg
	 FoVkm4eJLgVE+eJ+Pkj5n6WTK7+CtfzmHYBPlgEZGSug1bYyEpxQb4cRCzED6ouVcS
	 a3ZZKXSQDHIbRwWfGpJmsCM9DoufXeOZ1Q/YEAyz+8+JUq9Jmg4YEG1BUCZOiNfWdk
	 D9T+zcxWsOsOo7brPoc6SBDY0bq6tAGjwyD2hroh8DbeaeomcsAalOwF+v4UOe76IK
	 uiwuhwHXttatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734579358.5230.15745089874428793189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6596dec7ac2b288ca17f68b1a21d9cb2f0156259d816659c2de6ce75d7460c6
Date: Thu, 15 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747345793
