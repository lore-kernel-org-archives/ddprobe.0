Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1876F34D922
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836894; cv=none; b=XCfSUF1DYsHKGgvNPvVjztOCnAcNwu8TR0kOmFAKSB/RMoZaN58fQ2LXEURxv8pOvKtDjpQTXEQCHaeYp9tLdg1fkBvSZ6B/D46kQxdtxGxImSh2w7uTc43RhF0VZEnfEEZj/Ybq5ZSJKjkuy1+rpjdxcc0drL+/NCv6o7+MPF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836894; c=relaxed/simple;
	bh=LFQeoOTOREKpxIWZ3F10QDKMoEjgLhVVxyjeyaBeZAg=;
	h=To:Subject:From:Message-Id:Date; b=X9FcsX4+X3+zErI3TEBvX61mleAidru3+qnezCanYDUYVt24Wrxs7as9+cq81MupxGwEQs9QbzAiUiO7sNKwUIW0Jr+UG+den1nkayZM5jIvslkMlyF8IDcvjnupwvHcom/R3P8yr3Ptdd9Avlyi6FwaqDgJ6KduyRdPq9v5cfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NR3H+HrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NR3H+HrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE4BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771836893;
	bh=LFQeoOTOREKpxIWZ3F10QDKMoEjgLhVVxyjeyaBeZAg=;
	h=To:Subject:From:Date:From;
	b=NR3H+HrLWyUExkr2w1D9J/RzcLolQNMXQnL5zm9w4zZz+ieC1VJy2yUyoIu63lnjc
	 0Mf2UthwHkO4tfd0oEKXQiR/L1nhKTcUWPlbnxUoPbZAj7FxsyFOlZxARZBg3KDJYA
	 Q5Cfm8tDPA5XXyluNX/bUeJkhmTygvZupOxdSFJhPJpEe0Sc9FOVrreJzIcqM0iOUD
	 k+agnRQBpcwvBOLcg+VPPPqF2fGtLHeo/oCknEssGo3kQRImn1E9szmkPz+hLt8XnN
	 RrqDxOydRtp6T1XU17dLnaGoTyJxeg1rpEyW2YvJDP5Q5717goOvFf83m5O59F48QD
	 Vgc6zon9erV9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94428E98E08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183689359.4955.1233133892797215860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956c4b6ad46a041e50267a9fdfe9be7abc942624912d6def0eac530447f55243
Date: Mon, 23 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771836893
