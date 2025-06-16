Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B721925AF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750093194; cv=none; b=WnlgNZ7dwCWPffGRZXp3gLynENY3VEM2wnsXp2FivzB2jZoIg9o53UFcKx6u8MpyVgvLRWnJA/k6pEl+GQCSlaaULMayb4alsPlgdoG6kAhnYVpEOYo7ls+9V9Y3H0L4m54FVwNbjjhv5caG0F4qmQsV6LsTWSraVdjzRaAe74U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750093194; c=relaxed/simple;
	bh=yVYgS6pYDSCSFSleNVaCZboLpcGBKUhlU4KGtXtaAOY=;
	h=To:Subject:From:Message-Id:Date; b=Dpw7XHRRh47oM/CzSL0+2ozD0kCxYbmmzialcr+DfN3BkP2ZX6G5j2g5S0zdvL5Uby2VoD9Y0WKumslaJUQhyLleUSiTrbSTWs/092JdvLr9snsCc1wXqSmX2GOjFZ4XWM4Uw645wEYNjWf/WZIp8w5h0qSGXk6KzsxiSWFLQGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niSaGX2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niSaGX2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCC1C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750093193;
	bh=yVYgS6pYDSCSFSleNVaCZboLpcGBKUhlU4KGtXtaAOY=;
	h=To:Subject:From:Date:From;
	b=niSaGX2DbPDmXqjpZS2bmGepWN/MaJP3pEd+soWOb4dw6RbKVmNyS98n/JtGKyy85
	 sihy24jJf8xmYEaqeSZDk0KcQ4M0jcjtkZ2jTXl0nQAuunRT/GooilwsW/B6r4Upk5
	 HPuIrvEhtqPxtDfL+2i/yGq+SknXq/PDHKc/P21Wt5dZJ1xzgrjAhq72Im2KDawz9O
	 v2Az2JlkOmV58mqc/UMOZNBFreF1dDDUXtJLyTN/BNNTEZSU8X5tAaYXImMwTkJbK0
	 e+K996cnqfgFntsFvkH+gU7Xu6QG1icgCFUvp4XWL4Pqc58ueunqihW+XLsCrMoee4
	 YMa9t8PLY8SPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994B1C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009319361.12075.12432700519761395714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54546521557432b3592a433f3bedbca99208ae4ec2d4b9a025a4ef9dccc1356
Date: Mon, 16 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750093193
