Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D612156678
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736585754; cv=none; b=Fek06baVErEMBZ0x8rzN/sPbY+AZpuvCm5AUuQ9rAl5gLJ0zXAGaapLAGT62W/M8dzuiIGHt1+r45+yVsfD8JgnpXmvnX79Euw7rRfMw8lsnNOJaNT5Qbywgz/fWkeq0Uaip9Wn2hwC3iNmXIxIeTG1MPPJJCH5QrJGW8fy2TT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736585754; c=relaxed/simple;
	bh=Wt/VgAgGTISSToOtWRGNkznKxfRIJ38Qsss5okhtKXY=;
	h=To:Subject:From:Message-Id:Date; b=s+Cn02VIm1s5XGJ3G31JHK2KgITujMGcHlrl2WuHNnGKSlYPpTsasqwyNzTSdfaBcLKBRdKdmWBgD5noyLF4QJQWeerdKs3NPOxs+1Jkk9SxtlLtEVGU6X1wMQoSlbB+TEHvofikbgpOartpiAVNNaaSCh4fvY5RgehJq5ARgos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVZCrWYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVZCrWYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0215C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736585753;
	bh=Wt/VgAgGTISSToOtWRGNkznKxfRIJ38Qsss5okhtKXY=;
	h=To:Subject:From:Date:From;
	b=lVZCrWYpaAK/aC3vYNAvZr9olJI++PxqBC8LBctgbm6czV6bHZVzS9ifJT2vie7Rf
	 9pQ7LxkaWP8dl7n5ZbdMPHr/nQb414v/HcDs/WIbnlJH9DohLQmzzpqo7ReBMHmkYW
	 R8bAh0v1KvU7IUi20sZbNpsUeokzXEyUUYT2YKZFqvPIrKetHQqgl1m2dnyzqoJ1+A
	 rcXgmJh896jIeVHCBrF5jnxZLu90ZJ864sTZwAVMS/b1BT9pweh7tmPwwIAnFYFkPr
	 NyWJ+DRWSkVl73KdMf+I7a+yvUY1BEYuFd7FRT3hZDG18IGyh/6euhYrUXl1UxOqup
	 JKvaS6gBaweoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F85DE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658575361.17051.3725934885559952692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0ffde68ad2f9ae8bf86663f4d2032ef055489bd62474437f65c0e780a91d65
Date: Sat, 11 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736585753
