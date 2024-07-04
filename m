Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131061B1401
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720106123; cv=none; b=lIWufmiXgKNPNSJl2HzQo4I1PiTrKKMb2Mb6KlNTurSjsja1PFy4hchf7I/sD127mLvX9HnJlEVsLxVzyraFE1Shn7gvx4SneREagIZOHtAeWD6EfYfE16+b059YpUrpEPUpeqOpIRzxAhRQKhx/Z+EvkjF7UUCMRElcFni1WX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720106123; c=relaxed/simple;
	bh=4iRdyP6HL/dBfZP6dxdENnuxt/g3vfTX3fnm2bk6xV0=;
	h=To:Subject:From:Message-Id:Date; b=NVfpqWYYPBd/CFkPkxGJitltuFGNP0LFhEcN7Pp9SOqWMu2ryVesizzDjileRldEKZtHrNszcRzbHPhJLqq/o4Bu3+AvqyMMZVP3j48eICbOfPnpIN3DZbx/tOQ1U/IdLalrCuweInZUvI5//j6Z0qmBntuGTp0me0SAaC271f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPYvEeFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPYvEeFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD75BC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720106122;
	bh=4iRdyP6HL/dBfZP6dxdENnuxt/g3vfTX3fnm2bk6xV0=;
	h=To:Subject:From:Date:From;
	b=RPYvEeFZzibYLygmet+wnaJ/HGbpwIqbeqTVm7kPGcroWrnWFS0A/R7RBW0oahwzF
	 YIvRj3lbXQ7JljW2PJzyrD7PentpVenbp8nfw1gVg0mVmDLENjGUsbrDx2GL4taVl+
	 BW8tu5BkbDCTIGT5yrB/7StVtfbrZ6GSUmW/b9BjQAZyrYtoGLco3Hagxo3/0VTuSB
	 kWo6maMrv6dcohoeCPgxj2NvkqKjIFd8W2EVVzF+u28LC7+d6bIp4s1Q4eeHUTBYRQ
	 reAeAVFuVu41dvt+5+40Zg7vcesTInUwyr/lrSZAIHXUqlSFB2c9xwbWksX6EJU1s2
	 mXIy50RZkSVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9BBC3271E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010612282.16394.12634458217624381260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047f77c84a4adf7d22674eedf9f2a0682951d168eacc4432346c73743f440d0a
Date: Thu, 04 Jul 2024 15:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720106122
