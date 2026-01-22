Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F2B3033F5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769051634; cv=none; b=mDRwTzEgxi1jhxpLR5z6SxpZWhSZnR148iQ3IyPjvWOh1qJ4dqQV2Xrw+Xh/uMIZfo7qcJI7oLQfGHzsatP3IQjeYbTrirY+cb6nIjHpzq3k2bJTvUsW6zETp0F0vos9HlKGXS8KajstGKgQw9wTjyjKtA9VpJIov+euI97/a7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769051634; c=relaxed/simple;
	bh=fwdxGeCmI4p4rig0zJpMTn+VEKFi0aA34SohFq58B94=;
	h=To:Subject:From:Message-Id:Date; b=YL8MowQVs3+JC4s+ZqrwSEuNx++CWZuotqW4h3jdOnNg+VdysBMx2Twb+5maYKOtQPWSpTC90Nk4TLPWUvyeJEVHJq5f7gfqLCzVLmGu81YCB+1blya/6tKVtYboVJV7xL/xsat/CxX1MMT3XRf5iPnMDHY0mLwR84ThA2I8FHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiamnVcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiamnVcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C095EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769051633;
	bh=fwdxGeCmI4p4rig0zJpMTn+VEKFi0aA34SohFq58B94=;
	h=To:Subject:From:Date:From;
	b=GiamnVcwpNH9uGZ+lfKMIv5VKlXg5yPIKtfOQf46QP/NXsktzHBhY56c9OPt0bZOH
	 bDFbvMyWepDKSic6l+3OWPMOKvXNQ86wVviKJ5luvm/2OQskrM+dQ7069VgchuZipV
	 qAEF+OO+sudEAIQnxAXQWyTBSP6wwIT2hGmQV1U2AxlQS66ztz0NTj9d3zD3FUNHWK
	 PC65TKCvW/YmM9XfmNObXSHAesCxI2xwAGNZ1u8k+UAJ9rekBh0HhgTzu4W5H3u/ox
	 wjvzXhBgwf2000TXSwIpKKcj0+Zc1pya+neWsNTOC2SpxCOS3csx7BGY/KZ8PkYX1j
	 zDrNyGVhuCHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD0C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905163363.31648.14817774292410581180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed6e99ba6d811f536c159f9e687a10d198ffe002eb860f97381e3cfc5f5763a
Date: Thu, 22 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769051633
