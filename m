Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239AA36A367
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779478354; cv=none; b=sHPFpAJRPEtkOU3zNbQ5075CghD79DQug1VOqDkn7echUTSwHoBnA4Vrbm3R0PE5/WDVpuWhPCnsPFgIyLPMOR5W12RHwy5udULAj6fUFT1Xf+5L1s7P/vPzV5N/wVy+h1wNNKBpUsH27J++NTNSOiD8J2Y0cW1Bc+rnpo5en0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779478354; c=relaxed/simple;
	bh=Liq11KHXSbvwV1tyI1cNSF9BtqnX4opbpwdFhhPhZw8=;
	h=To:Subject:From:Message-Id:Date; b=I3u20y8bVcGz8BPW/Igvo5H4Lpgvm1VfolcKYRjnNUng0jfjSIv5UM+isdQTt7ckMJVHKA4YtRkWQAI83OrRsXubJbT05LpWyRQfiP2ZXNFlHJNphA3mEP4HzUtfG6Mdp8+gEVYCzC/7wLAl/abbVYUHLAmjQTITBPqoTI9j470=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpDNI/WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpDNI/WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31B4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779478353;
	bh=Liq11KHXSbvwV1tyI1cNSF9BtqnX4opbpwdFhhPhZw8=;
	h=To:Subject:From:Date:From;
	b=YpDNI/WGhzEo/qa8ImGrJIDCcCNkMnIJeludNpLEH7GJBqKCpJafVBNCxy98hI+Do
	 2//XSkfWjLAWV97aDnltahvB4/UKKqzYoUH7hXqqUALOmSZkHMWLDSDW0PlgAIsfVj
	 GZZhP9N8KTJ0rPiC4QcuScCiIp5KxF7tkzOGUNiH+JlV+1U56RSspmT1glKHBkZsgE
	 n13fNLtnmw7gQgy2bcQEbrHLGOr1Nrz2BzrWmhznW0MnrZP41aDgJYZ0nzIjl6QqAA
	 O8pRkTgyC+5U0aSliLbeLEB0mwl4zIw2cw4kp8ww/J9WtcYpm+TMhnH/X6MACR/2ww
	 zLZVRisld9stA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A68CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947835368.18059.11250094369681742837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf817de98f591a1315a8c0587bb68e9288ffbf7a931c25f4d292a6d773ed8c5
Date: Fri, 22 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779478353
