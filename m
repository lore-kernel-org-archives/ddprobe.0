Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AC425A359
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783121314; cv=none; b=GlgxavN+5bPOHINQmlosHouFgmx8uiBFiRys3PG2isf8II/Ps+a1+hF5VJqU8pFqWH28iJiyVl5YX97bKyp9Oz4fQKd9aBrGJQ7vWIb9loEGl15KgTLujhkIrTJllhJI5Ngez6tKc1bEesVyEyoJAcpdbbuEh1uojzvSAFhQEEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783121314; c=relaxed/simple;
	bh=Fb8Invy0tz6/Le98qOaZrab8SNxfL8Ms8srtFTBnCMM=;
	h=To:Subject:From:Message-Id:Date; b=P4b7PQPw/UxQS32AQpJfmzZxNFvU5Sb+ZeWJbU/r0oCDR3HuuN/GGZ7baGSwRtEbQTihXsoCH3vDEhb70nobG1xf0cuDzkRnxVN2tqWXM/DILJNoNUTCh2ls33iOJiqu6K+cTFirHK/aEUmChfby5XBhs86Es0N3QyUEn+K7B48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgh+Rhtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgh+Rhtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D287BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783121313;
	bh=Fb8Invy0tz6/Le98qOaZrab8SNxfL8Ms8srtFTBnCMM=;
	h=To:Subject:From:Date:From;
	b=fgh+RhtmgW/Glin+sYNT4tFEJK/1UQD+Ojz0gm/m5eNpw946AfmIREK+ET6XkKIDF
	 BpasdUnKg54pCK+AfTEpBpEvalQTfr1td+PMLwnRFE2zmN1HuQFKvAXzf875+qGz0L
	 bqyjhep6FCL2Lm037Kge14npw//YjBJ808f8KSnqfzM3oLSTb+nt+RQwNslA1bC3Gl
	 MyM4IlAT/Qk+AwKO8gmD3TJA3aXvIitjljdEolf1szigDiZSooOc3OT/J6SMrbR6hm
	 8lT1CPzrQmX52jdiba2EA9/FySeY++SwXNwWi4lDmWFEfImg7S+aIZN1UJW62IBSBe
	 aARublGwHq5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312131369.15425.4344580974746973013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de1be85edc09070393ee0925165af3a9e13546fb7ee9c3dd39ec4ff0abc6937
Date: Fri, 03 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783121313
