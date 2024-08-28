Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497B241760
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724812554; cv=none; b=ND5ZnPUP/J+GB9kUDTX1+GrIW9cdZPExFUciHqH47wVZ5TMO7mFEqGaGrqYuAA7VEcchT4ObWe/LLQYWauchXIT83A3ICD1dYeC5DjEg/AyPoIz6RwcVRnLzw0+69YVDk/6gK4VsRZFD5uo1de8zVC50UXDRXNzgzHRxtVfVUQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724812554; c=relaxed/simple;
	bh=y7mEWszHuVwhHSrp0+8ivOxBdFRwPg2YfqSABGKKEfE=;
	h=To:Subject:From:Message-Id:Date; b=EiWkJGGVzm0RIDiPxEQ6QI4Gctg4qMySN1lxu05IZ6zri3o2/qFliZ7FpdMqtsAIiceymVtSuAM2rMhK4CkbQ0rAh9rYgVYTFTckCGvA+c+lTip1XcqiAus/r97mN/M/gms1iP2/+7ihsNfyGBKDRtppEM0l1Wf3hKzUz4IMr+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi+7Zi9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi+7Zi9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C624CC4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724812553;
	bh=y7mEWszHuVwhHSrp0+8ivOxBdFRwPg2YfqSABGKKEfE=;
	h=To:Subject:From:Date:From;
	b=Vi+7Zi9rVArhGv6WsSwGaRqqq0XTti3NAw5BQAy/pmrIAmh3IWitiMrAAZP29A92Y
	 OtyjHrc6hG9yKnuecQKKPCJowT7qsd0rrAluZA0HLTB0+t8XOmxw9GbKfWPOCk69jS
	 c9TJmsbO0dqirsXOI3u9fwy3Q3FM2Pug4F9W3+f/69xyfjwT+G59SGG7mIUYGwnFFd
	 BrKKGNEhv291IdGWwTY6uBx1VDvmFyKr6N4FU8a/j7gWpplk5RjmS+XY8Sr1fNTirG
	 ZnP64UMWoPPLc3EQ7OY4kzvmfS9SGiWaMk7/VwUMEzjQo2MmMCC5oYEaFeomG/dvbs
	 iGvmF/YVWoIDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0619C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481255367.8645.1478062838796796996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba45ccd0abf9d25996d31ee57208bc1253d88503cd591b6f43aaf9c50a9701b
Date: Wed, 28 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724812553
