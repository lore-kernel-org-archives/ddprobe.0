Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F2B29B799
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790728234; cv=none; b=si/qRqyoN5sN+1AmLwxoYNAmMmX3XSjTUsfbV/fA7/COG60Ia6umYrcQvkFCBWXxTPGQSELzSJQ/g2wXP6ix2vAhf/TD3igT2REqPN+r7VY1eAJfvewac0EMDDAdrt3QySUIh29QH3QzuT3mw9VKTzmZyv1UY/GHJ9Pd9hytC80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790728234; c=relaxed/simple;
	bh=aX3ZwJ+nkoW1sxFVnK+yxNtulU7Hw6mBT9Q+CjGVGqU=;
	h=To:Subject:From:Message-Id:Date; b=WmysZCoATnlSyI17qO8go7reR3He1zG5JQncb33Ctm+FUnPcytPZEllQfR/vZ2Tc+K+pU5ch2/7D1QnKwhZquqzxBcxzaveUq3hqj4uzHQxwjhtvpx2/ssiL0JpuSBXRtvkUdj49DHVSRpvA0a76d1YOGp/lfpgAOqcrMZ1vNQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC4i2oEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC4i2oEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF494C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790728233;
	bh=aX3ZwJ+nkoW1sxFVnK+yxNtulU7Hw6mBT9Q+CjGVGqU=;
	h=To:Subject:From:Date:From;
	b=tC4i2oEeLDz1E9cXWXQDjSJQX9diHfFR0SM7qRcU404VsokzZLd8BEf0ix12C9OAN
	 LS/f4wokhIU2kUvnTFQ7u09OAUWaiVsvOcjh/qPRVb0sGnRaVRrPkTT2SzAhnvaQuq
	 SToIHurdCcOsNcL1NOOMr+zrjRmwT1GdGNEDndIw1vzArRayuSe7QzJDtbufW8rHOl
	 sidXI+XG3LDTcMU7Sg2gtpzlYPmCUyPTJFBFZuiOSQLYzgNnHej7mN01nkmaNyG/be
	 2aDJ0lN3siD69vUTy7B/4/yi6NFS7KJvKqXsbHElHKBZiPLsJhrajEwidpt2HSf49P
	 PR5ajFEqksa9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDAFCA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072823368.25630.12594039143995455941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b853c5500ed4756fb00ac02e27abbadd97dcb114d290b09d454ece1494664e
Date: Wed, 30 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790728233
