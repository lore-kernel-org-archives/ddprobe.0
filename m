Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC621FF7C7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769669634; cv=none; b=Z4CFkg/BgAaFWuiF3lUOFJTGeD7jaKvZfohYl3xF055yf5aLiviKAp41iV6KKmIoolTICXvEAwMWe57qtV08rSClxlMPrvZ6Dj1xmGSvyENOAEQJGQQIRJwmuFSzhZOBTOm4cR1VcN8RahpSPQ0QsF7AKwmrmr85Nm0Kv5PcUeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769669634; c=relaxed/simple;
	bh=ZKgnAKW313VMojcoQHUCqlOjrwUXCUF5FHx3EKpDrZ4=;
	h=To:Subject:From:Message-Id:Date; b=sf36PEVpXqMSp8vfctGew/HQMQNeFyc6LS9PyUerOjw+UBBDvuJJI6vvgvAaHYGKbdY41UUvRr2JSez7/NtXNy91FIUN3wR3EqV2+w9sAHYecPbxIdneV+aaLT25p8OFnF5KkEPwVkXLKodQbJlM9fVBNTsdn8XNILLf0guZDss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZqSwWYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZqSwWYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7730C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769669633;
	bh=ZKgnAKW313VMojcoQHUCqlOjrwUXCUF5FHx3EKpDrZ4=;
	h=To:Subject:From:Date:From;
	b=jZqSwWYBb4WOkLxxYeS97rMEdafx4qjA7Z5oLRZ8Y1JnkrfcBNgjFFty7/ADgzikQ
	 Pxcp7g9Is1xVPUQcZnsZvvpgxIhCDfWumujQ4QO0ynd7v7M5HLzmI228I5FdxQPZE6
	 gTUcluqrPHWpBpXZBYQ/AnBeVwRnRpiCiKV0kvMaWpnggsu1UYbqdTWct+alsBwiLR
	 Utx2q5HDBWI/4vRHb4NTPowkPtDhRW23SjfRy4H3sHtmIst0psi4MNjssXQWmqUiwM
	 XmV1AYUIV9xlAlsqneTGYToQ4X8jzxQc7fJkMJMKaNfQAe5k9617rO/Nez3YD9tyhz
	 k9zxRGzzPMmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE1D358CF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966963360.30377.11426072926251824459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d2ac23d2cdb96991aee947e6b2c08a40b629aa65832e5f3a709bbb239b0178
Date: Thu, 29 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769669633
