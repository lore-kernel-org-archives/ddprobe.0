Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8B53B347
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790176834; cv=none; b=e1MFT4GeeYdbmXPGfdskZmHwFvgqu6lRVhTnCzVHn/FEOS49xM0DYI2tXs3XCHt+ntIB4ERM9hlecDY3FhYfHv+XuIWNA6vfdlscO9CcJGGkPF6009UgPmE9r2zyhcOHDRsslXNScWn0Q8q2Ejl1ZQq8QokPogjK7onpCZ5/Sjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790176834; c=relaxed/simple;
	bh=3/JRanEsAFCvjHwht2qDyk3WzC07B+gG+f1oslPCSeg=;
	h=To:Subject:From:Message-Id:Date; b=umyv4U4H2FSPNVMOA8P5opGFTqY1+VDEYMRiOumADBCTvrH7kAbzow4pV2W740BJ2ZQCCJwlbjBIppw9OJ33D96Krz4YubNtn4XZXBTM8K0aWy14EGH6k7G6nRJM6p+PFXiWy0/VRrb6K51Axdtwt0M7vM3RzfBFwFiXzQ4d1L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+qghpPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+qghpPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790176833;
	bh=3/JRanEsAFCvjHwht2qDyk3WzC07B+gG+f1oslPCSeg=;
	h=To:Subject:From:Date:From;
	b=J+qghpPqUOPkWxdGXnJRhVswtLsY4K6C2n2WxDPgBAts9vin3K+OkaHN59JKdXkwT
	 ijp2yH8zJwQEYHDFBczkMpl10Bt0ZgXmcZQeOAjh1dh86WHn1mhheKtcZP8dtS4djB
	 Sz1//0Wknj4U9QGmV+mTb8bZUXdttz6y3rNrg5UWCvZ8QynBjbOvVYlL+rseaVlNcH
	 apVz6Usi0tSSPbyl0VOflI4997TOgS3PBt+9R/xZazZWvZG14cJHcuTW8NWyZDJ6/d
	 eVk3qwt5qEVew1jVOP/fomc4ZrgZRxgE0THbteweVdcykFAA6wjLjVKah81H8Hy77U
	 jSMXPrL8W8JXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5233C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017683371.29140.9761931823516295674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d76c36fc0dd62fc0ee262dde1a236694336009f5f89501778f661bb5b92ad0
Date: Wed, 23 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790176833
