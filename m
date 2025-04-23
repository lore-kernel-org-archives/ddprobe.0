Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93927D763
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745426394; cv=none; b=XoKO3JV6ToJIp75/bb6/VSC6y66cySETJjhrBwI118oKtirHcoftLPZ9Nl8ACUZu5aua5fekSrq0kKbWLPsKLvTaoElIWT2Cf9ti966DP1UyE5igl0zZlXNCD9DPGJc3ZooALI23Zs73iIMiixnutRW/QJX6CekfrqrvfC+3hc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745426394; c=relaxed/simple;
	bh=ahrF01JYAX3hicNJYVOrmL2jCqG8r+INvVdVrxOpP1c=;
	h=To:Subject:From:Message-Id:Date; b=bj1WPRzUGDaryV74xfqCh2evZIvdvMClt9RG3QVis8RcT9mYtm31bq5r50gPJml/kNVXItbz/yDW1ULgqQzpjz0xE6c9yuyPZ5/YrI6ZuldAtDQ937egkk7QOFk77rlZstu/BNrjGe5D82MGYKYPaiHDLiV42wnV1pVgjBTJlaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUhc4741; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUhc4741"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C86AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745426393;
	bh=ahrF01JYAX3hicNJYVOrmL2jCqG8r+INvVdVrxOpP1c=;
	h=To:Subject:From:Date:From;
	b=lUhc47417qlFbhoPZRfaFGFe1VDofgxy8UY8FlC5YS+FEyaB8Tu4406uLDE34j7Py
	 LNX8C/TddBpfri0NrHRWLPZa0juurEfK9EDpz/H+7pHT3nJ1yoKpuXcGtxbhzBoHti
	 AzI2VCRAcIM+nJNu+ayfqBUoZ85nJEijfQvRDQX5pRZcGBQ8rzUgjAbRbiwdFINstc
	 M7sGeZO7BQiX+f0OmZkgeac1CV7gQDP38i6ydIw4DIqfgAw12v24NeOhmWiI5KyLtD
	 KNPfAL0RNw6Gl7fBGAokgKnAEmLWPhxIS9lQhG0AJoVt8CUMYYim+LVTlVAImZEm8J
	 j7lsFe7nLy1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E680C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542639357.1950.648671260634367223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284f4eb9de9e952ec281e3e5b4d72f155a63858bdc6da9fcbc574676ab53bf88
Date: Wed, 23 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745426393
