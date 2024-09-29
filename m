Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0131CF9B
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727615754; cv=none; b=N+r2+fQTrSeulB7SHAnvUgnRx9eYuXDs8l8VORVoFd9J9qS6LnjT6J3M2vr2edM0b3izZ7aG0mmA/9DzXWakwmkuWENazhROm/fayUMOVvLvq6ObPjRnllTJr02Ipyb2hytMUfBURx3KPo+XEBReUj3pz5I1Jhh9uJijC/hw9CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727615754; c=relaxed/simple;
	bh=RXT4QpZFtuqBjjKb5GYh0I/gNNdynJWo6afPqfwD4r4=;
	h=To:Subject:From:Message-Id:Date; b=ceKnnHwwekP9gowclXVKz3H9TcNiGBe29HaBTx4a2sQixTzcT+j/yc4kQpsEvS3RBtz+I0OPZ9Y10kESD81h5C8uLOsipV/zX3UIYpH6HkcutMt6M7dFfv8LHBBVOwRAy9Do615UjWGmm3+oli88odOjGQBEzm0SSDV57p7oz7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCLzta52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCLzta52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAF0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727615753;
	bh=RXT4QpZFtuqBjjKb5GYh0I/gNNdynJWo6afPqfwD4r4=;
	h=To:Subject:From:Date:From;
	b=vCLzta52kId7B/4deuG45mrevlSgHNkotO2flQ3sZ7IsADJBo8m3A5LJyx9HM97U0
	 2g3a41AZksjYycKCbMsXOCIn1S29p5ympTdRl/DwqQ6tl6B1WX8c4ZZWmi2mdckJmJ
	 C6NUy014n1upY97I23qq1YM4rNYV6e5cHQcTePiiWTmHS6lrDazsJYV5cm8ze1cgIF
	 brLULGiKg1VfICRt8F3w29hCavjFGTF0VY+AkR43wGZorfQMa/CIPxPGjhwFBh/5lM
	 Y8qWt+AoSA2NF1NO/yAW2p8tw/9JoN/a0YqDLiTQZzXeeATEIA5iu97zkNksGX9vo5
	 T4zaYwRhNZX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A957CF6499
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761575362.21665.13124835150821070293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d424231141cf8f77bb3bfc355354c3df9070f2dc4ccd5b6b24d2e4fd4c974af6
Date: Sun, 29 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727615753
