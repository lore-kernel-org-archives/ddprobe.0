Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CF22E2EEE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778186854; cv=none; b=An2b8V8qtFTffeezcxm//o5ie1RPXFOEvWhAVnuMdUMDMnIwknazkoFeBq6XqwdxyAV1xwwPx6j2ae82LvBzS8rjLYdOaedDOJMTdk69bnXypFfgQS6mR8F/F934fX5dwAF4JRJjlwHsv3U43gQHOB3n2nl8P94SzS9qNzU6bcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778186854; c=relaxed/simple;
	bh=AbbPowLHDmjg0WvXbMP+3GBvVVzNOxJYondBwslQXSA=;
	h=To:Subject:From:Message-Id:Date; b=FKFdl7F+2615sF2h7HtVykI5ReOVXB1jRaqyYD7HelMtYCw4QtTAc5xiavVYVSOMECsuKRZFhkasgIkPv/NeGu7UoV+g5/gdO1jw8R1NmGUkicfEPc947lN8c479FLOC6YZuZLuyFBClsFB2umLD1p1xmXqsoXqluNcqOd6/JVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c95lbqO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c95lbqO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3189C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778186853;
	bh=AbbPowLHDmjg0WvXbMP+3GBvVVzNOxJYondBwslQXSA=;
	h=To:Subject:From:Date:From;
	b=c95lbqO100zT5KGdzTHzGUn0dnmBL+mtPecne2IB0kqjfRldxwGzm1x8SvLPc6Vtt
	 C3yuoz3qURx72qZu0DqsfgDE2V2Cq1EIZXLUCvf+yOB3cn/NFs/4K0yz8i95NQUwwQ
	 BMLhzF6+KPCywxUE/sSGWt8LxU9PwViRHrt29psOyZstmiHuV5HerqIBz1EJElRdGo
	 r/mWGm5gVH7y+WXVwNN32qYvWHVHuss6weYjBJ1z+RU9W0k5E9/Hivk9LLFsm08bpG
	 YsgQ7OPtYVodq1p6oit+/3b7HRDEuqqYjitQVWxedzqP411LiNNzkCeAtDjoadisKm
	 b+F7x4vf+5DLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B264ECD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818685369.27597.11453198375952262975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8217d1895fd7bef7d3dde6318b63b6d73f0ff326c7826aef5b5f867b48514b11
Date: Thu, 07 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778186853
