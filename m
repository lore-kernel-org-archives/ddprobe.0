Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0973298CBE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769443434; cv=none; b=MrUxrRTPBvhlTYbhigvwQLHBDjiI65T1DZ3LTBwIpo5YrWt/p0NAV53QYrjVNjijFMyB05mqdoKHLI7AW3vKcl2lsRup7ugZ7OWIryLQySS9Fzn4kV2aKPtWD9OTzlARvEK9qRHiVcbTpSjf8hcc+wSsiCKX0AfJrMRav+87QmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769443434; c=relaxed/simple;
	bh=tuFBpthR0nNBzY+MP5fhCwBnwoTLHaEhfiquSYiRBFk=;
	h=To:Subject:From:Message-Id:Date; b=AdjtHeiPq718C3x2fLS2C1LRhphoMH92hSQQ5UlbTMgnNYKgEFyvVPeg+LIRnRxnJqHcLnWhLeFOWEtBN3AcJFNj7NTPuVLxs3IvmSIfBA2mFwjthaQmIDhC6X0SAhH/ZjetUUM9j/MY6sVsdKfmoVbLHn+Nk/T2SFdRycM9XHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0+AK1Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0+AK1Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FAC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769443433;
	bh=tuFBpthR0nNBzY+MP5fhCwBnwoTLHaEhfiquSYiRBFk=;
	h=To:Subject:From:Date:From;
	b=J0+AK1Q8N7oJNPbvxmff50sctdltGCMKKpW7gvBLu25T3OVNnq57svU7AVo+z18tU
	 wDO+1+jyD2rq9nlvloc3PalB1pKpha9pL1Z6Kv04AIvn47RkCG/NPGVMgi+q5TkvEc
	 v5neOB+smZDVEORicml1vo4w5txU8Q5vpal3NQ/aS7g/ujw0yvjrewaKffP13kkO4t
	 AjCceNPvX3Aby9WzUl9fHli9V1hZzJ4U4OsdIyPaT7P4F0j2BjRVry3lgM3X17siL+
	 /bE0uqB9NULWnmYDMxuoxlcarqEpHZmzRI9nG2NdRQG5oxdeaElPK3tZuwzaymfGMH
	 E700q27Msf71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FCD13C3F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944343358.9787.5101764084009809174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35706124707e9b589890de0c18444380a478652bbf48ae23f14a22ed4da0b0d7
Date: Mon, 26 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769443433
