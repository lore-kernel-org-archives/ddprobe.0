Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098131F9A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789832434; cv=none; b=hTyX0txemZxwFssjdfRAC3NXEIGH2WRrgsf+FfVTTTeCB81eiOqHdxLt/A4MoAraWUebxtdY6KVaHDU4/hEJPhHL5vC8dSYRuQYb4WBcEHH41gKTFGQDiZgHwHXFURs++e+zbhU4acrcldZylFpUJUkqpS2iWPIGU91NmXGL0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789832434; c=relaxed/simple;
	bh=cgiEVzwf9ewv/zukzjphX+0mYIqy2BKt5L3daZuypLs=;
	h=To:Subject:From:Message-Id:Date; b=l+6leM2VIWcri3HmhdRlr6dvbnGzOqtnozPjc/RNBMJHTNoEFFZDw1+79TNQSilWlPRLkXM7zKXILoieOXbDe3V7c7G8E9/nRX2E91oNHld2VBIXfxN4ruieVSvNv4KnPXMSEULnf+HvcXbzW4pi4BVw6Omndb0aWxftuAIsEzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEHeBWYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEHeBWYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1040C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789832433;
	bh=cgiEVzwf9ewv/zukzjphX+0mYIqy2BKt5L3daZuypLs=;
	h=To:Subject:From:Date:From;
	b=mEHeBWYvMS17eUuDhEtGbWKhO5oQyeqsnde3nvoMmBCrjXw4LF7gPm3wqc2ff51Vy
	 PpJWFdj83DCW/qw6CkfLEJ94kWnecyzEngw83edRpuZs1uHx8Oylz5kSGrmYJpp5qO
	 CzY/hEZwQorbTnAywtp7BQ71gNjPzXv6OT1EpU11FfXeRx5dELS3nM38CQeODnQWyo
	 k42KaFc5d14/2pHV2xG1+7TEekRlqIGHG0ZpFP35XjvOx8hqYFfy44EQYg3spZ3n8R
	 znLloLgfe924z5Tui1XyjudTBXVB+Gn7q+FOD6RIy3Ly0jPU2FtVgdECL8/6bwdfBK
	 lISCqCfsrwYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E1C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983243368.6659.8453016859949561723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64f798ac226bf488da85198c31cede04bdad174d9d2148701c617108e826668
Date: Sat, 19 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789832433
