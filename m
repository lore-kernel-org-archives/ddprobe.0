Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2D047ACC6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787240434; cv=none; b=BMU4l6iXdKrsejnrGAf/Mwu1MRSapZzEtZiviR4ywFL3ZeLDtoIh/vyqm4Fja9cS/Gruu1GHa3PQwXCzRO5pL2uNCHLnsNlxx1ISVncEsRLmb1Y3/SRTE7NY1l266dfY8zUcci5UgNNfmqETmOjyFI8A5UKr1XASOEIEm4Xp3xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787240434; c=relaxed/simple;
	bh=1B/7gyPvQpRWWAwEotTJzmNX0ZkurrSJ7x5xLUYdGos=;
	h=To:Subject:From:Message-Id:Date; b=TQtwFOZA2O+yrDOnDLeB/0JM4y16XlWU+TFloCapwxCNwja7OkkK76rZxctsrzZ6fBZEcyTdIOAH0m+YWt69as9t1ocpB/J8MmGE2TdYuXDyVpIq46ZGYeC9YCBRs+rXZ4dncvVqLlaWXmgHXz1mXMcQn7+0Iv6BOwUY7p//Nf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2bDAvMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2bDAvMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15D4FC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787240434;
	bh=1B/7gyPvQpRWWAwEotTJzmNX0ZkurrSJ7x5xLUYdGos=;
	h=To:Subject:From:Date:From;
	b=E2bDAvMkFWLfTnz1M+In2Xlek+ZznqBZHBrPJfFZ0g/RmyAkhFx4q3jhYDDH/biyG
	 d6GALRRUnBX9laKzf0MJ1qE/D/UlKcSOeBk7YdpuSaCIqnVJcuaw3daOlhl2K9IUqf
	 zvu/lpHeVYgWa27GEHxPuGMVfL/ydMeJHl7d///zjNb6RFMPmWw6IhhfE+vVK3jOJd
	 RjrAcuxLMsX6BS621aBC+SwbGQNwl8T2vZlEfAbAXQM0QoAZa3vDrhtlNYknSOPWc/
	 ooraF6GmVY92cUfnMdtbBoV1vlAqlvPMl0Whj1vwW+4F0zL29csPjjEYDsfYUcD9TR
	 uVyyglYPU/OfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9798C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724043386.4944.5541374180309088505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c19becd29af3eb54df95c3a95e963249ee4d2a3cf0260bf7a7ce1753c2e98d
Date: Thu, 20 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787240433
