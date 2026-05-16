Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E02242D62
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778895635; cv=none; b=oxnlP8rcSmFiLovKv6F4TLtSy2IvYTj6acdWEEXccaIALqZElR9d53Wuwcpg3fSweoyi/hpVTSD/gkbVrGdWQSkH2DXCFfNpSKZVYJVDePwt2Nir7nOqglh54BEixfCpMD8kavNN2A5V4VvLdlqzA2Ta2fk8E/2Q8j6iLzwL+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778895635; c=relaxed/simple;
	bh=VFz6cng4kC+UI/5FUUdJcYMsRyJzfaX6rxh0S1jGeIA=;
	h=To:Subject:From:Message-Id:Date; b=uHWcCTi2LsyOUzypHIm51aXz5BTWcS/5pd1g7YOWE3DsuNoPbzQybkzU/FeilUSgmudrC+/UWwpTKzZnTwHcO9nDLMPAXLT7qe7nEPSpsDB303WKZvhYzN4UGstPwFre3TE9g/cslupTI0jCLbDy0PJe0ZFOUcWfvKqT7xY4BIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzzGTGZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzzGTGZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2073C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778895633;
	bh=VFz6cng4kC+UI/5FUUdJcYMsRyJzfaX6rxh0S1jGeIA=;
	h=To:Subject:From:Date:From;
	b=BzzGTGZ457Tyy9Cf7Crn/GYn88gmjJzhTNSCf7J8mMBj0B4sXtw+idSrtQXOU1E+V
	 gt1TgbVyE/3iRtuoLZqw0gQSzbJCm6aw9NApkHgCAkJygCb6PZqi7ZiXrHst+XAP+k
	 hMwMaFPBBn90aBzMCwUpSsXrh9AheIEePaRdurmSTfQBxXj48V5pFxOXlTj1QwrZuQ
	 4KIL63JMYIIqcfEKqIUixfY4bHc3u7AjK1R5zcJVNBasGwVO1OvJTRCB4+hbgUwana
	 ItQx6Ufzepfwd2wsiG9V6diz1HyADiMDLPtV8JnZR22YVpN4RQNllSzKwTy0G1Yvl8
	 h8YZyl6Nd/s3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2789CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889563369.13430.12113794803165872708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725a57adb6ba6d2cf0989732dd33bc0c5a30538f2d68db5368712fd3c099d0bb
Date: Sat, 16 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778895633
