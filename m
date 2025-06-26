Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E0F2E7173
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750945195; cv=none; b=rvWDwE7iMqyu5OdymzIqjUUXZvWf8vjXWjVon/9+k1osCYjjLitnqcBQDtQuPUu3i45umTCwOLs0fCs5QGHlk+FNUD+g2hKyg55mQ3P/HhlEBu18ob+hyYF1l1vvrUX43T1SJX8e4PufyQKRl28rieDXQYglTtm5qJM88/VUQ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750945195; c=relaxed/simple;
	bh=RF66AywEdvqA9FAHfB3nBc7I86Uf+40mUDvYDwg7ywE=;
	h=To:Subject:From:Message-Id:Date; b=CdUaEy2gTUDG/zefxIs+XBL6ajbckNKpEBJsO8M8U4DiGlPwix5rEsr0DLyRPsP6oswOe2qSaSPzzTeRdDS4+vV0n3qlNbyxzZKCJCRS3F/rBM2V7IBrHFdWftVWdIHLDyh01FTzCRNGny+jPwuQoj6IGLkxU9ws74w65g+g/cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h623KaS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h623KaS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A31C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750945193;
	bh=RF66AywEdvqA9FAHfB3nBc7I86Uf+40mUDvYDwg7ywE=;
	h=To:Subject:From:Date:From;
	b=h623KaS2nYY5ZZntUqCL2IhfhWHeL5Q7Dym3cujjuzymFBeWz3i/tv4O+QX+gvNZv
	 qCYBC24j/OmCWq7F8inmM54Lma1HRhDaMYvHeH/GcGGvrWDVRSfaQDv8KactTkgIyC
	 No8O88HBxiu/+0uRxYVjmuSZun5g5vzAOZ/829kOs3rzFHgE7YqRHgojy8MZCf/s+O
	 wWRlYHygQUYumn0ai9Uvb8dWuL4m3Z3TFWT95zbrgs5j7L0Q+ZTmgWnVRqOKDjyLD4
	 hTOKZehsfRtEM+FKD+ttu738O2wph4ea/t+wKd4PwdwBbJjvIpQInO6bxt+7OxyTjP
	 roRhJ+k26LyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F6C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094519358.6884.952792793897118473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609cfd94fbd52cf9e1c64486feb08180627843c342a1e93f68c5e6bafb5a7398
Date: Thu, 26 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750945193
