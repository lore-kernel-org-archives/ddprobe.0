Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E352ED866
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784372314; cv=none; b=qjvaX+GZVJbvcdOdQJoIz8h4XXFXGIHHFYAAf9O3+UJt5eCMjGu/fhNEH47PeBL0l8hm+iJgm9d/tcSEMMU6KjV/8sMHhksbGWOki4GXvn5llZvND4qb7Z+N2lALi35OiIIi9s/MRx9x3iNq5Y7UtnViiBVj9XH93AIRBAl0ndM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784372314; c=relaxed/simple;
	bh=Y2Y6CMDrZ2PiFrqz1q6JK/tqGzy+9usqC5clkB2jg4Q=;
	h=To:Subject:From:Message-Id:Date; b=MbGp4FIVeaTB/SGJ+lVAkMTEufAOcNb1FBDRaDZTqpDwdLdwNx81roAQhONytkHviFDRxiky/t8Te0bfaP1FcHRe06+3LOvZoDgrOwZpOKVuCcWv4N+ZkzaaDir2ByFwNCn3xwyQyHjp0pmKbSYbGE4L4eRemthz+qJ4T4t7EKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2GfaUvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2GfaUvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CF9C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784372313;
	bh=Y2Y6CMDrZ2PiFrqz1q6JK/tqGzy+9usqC5clkB2jg4Q=;
	h=To:Subject:From:Date:From;
	b=r2GfaUvKW+WgMKWpT1d96SusmMjCjSqpEJZSBiLHBmqQcMEEUctB/kvU6d06KjCqp
	 ZUMMntC/lbLQvLLCOXCIp3/KXDcL9VhFRlIDUNfc9FYhXvYwT2HQ1ZAJP8u5Ba/pxY
	 vMUZjGAEQoo++WrBwI2MlGt0H1fTRJNUobL84Q/BymX5aQ+fb1gJgj8PZcNFCpT6Ti
	 xcIYDqZSgYUrpHJ8DG9XkpooMCfgg2j//q8lB611YoNwabvqakGPwWxSpvHJP8taBk
	 zix/D7P+T4rZWZ5vsDEB/PsN9VzZvCcMY+/2sl2zYH+TjfLZZ5z8t+nTOvzmncO+7q
	 fHDyojO92wOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF1C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437231369.26298.7704890183626583408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c61675cd0a98d348e5c410f4f0a39a97266b3ec36a7f79945a7d4397e742be
Date: Sat, 18 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784372313
