Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA7D4279E0
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790192434; cv=none; b=MDssQ2ozz2vULpIJrvL9cbEOe0rmxjE8BYs/CAOiFS0IRwA5/noVotHRNx4iLaj0oXJUwY8ZlhTs1QfqXVox6nQcJbMu5TDLBVye7/70wUGPkAtDPETCCjLIxh+xbO+46FsPAktFYBW7OoOzHwmDGchFjleEPTaT/j373VBCjwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790192434; c=relaxed/simple;
	bh=PjNzUza9V9ci9k5XmeICl+g+lTKr6wCv0JfkzSlmO5g=;
	h=To:Subject:From:Message-Id:Date; b=HgaPVtvQNdtOScn0bwh734z9IJrcbtQIuMIMeIlkYEM7fYDKOcr8gVUONEgjPsxuZiXkwJRnTSmYXZ1V+33kLbeaDeh/3hgAzndikVukIOgmykPlQfFd08GzYgXw/coNbqBw3Qq28vN7eKpVv5+y3yBv5lvz/B5GNCz7vlnJ12I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tn6gmgFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tn6gmgFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE368C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790192433;
	bh=PjNzUza9V9ci9k5XmeICl+g+lTKr6wCv0JfkzSlmO5g=;
	h=To:Subject:From:Date:From;
	b=tn6gmgFVFrDjuymlUb/YEtrXGOlmwofeyTsb9o1tE+Nwgoj5Bxmg3DwOL6A+vrCjP
	 qgflYtI2I1imcrwfRAGsEE6OpT1eFd5htD8RI5is5E1fT79evCIYBykzHuvPcFFS7R
	 ZEhpM8HrYrQwf4+PO6CMzPKVX5eB1bdbn8EoSHAamDycKWLWwxsRXQTmoI00GfuGfs
	 p0e75w3RvR849UbpDMjURVT8thUl37Xmse95ObibvwSL+iTlHYRwAA0K/6Edc2FDcQ
	 4ceWjkBt4G1GaNplK1wZ4tegeeXcmL/m51heCKA3avRVEGzz2If0/JblcU+EDdyWKj
	 uD5RFPwxiYE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8214C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019243373.22314.6999524532641555481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bd77715f8cec91dc79c3ea7fbd48b4f860c1917e017e290ba9cf444eccf260
Date: Wed, 23 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790192433
