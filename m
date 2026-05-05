Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309DD48C8D4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777999654; cv=none; b=J+KE20dZl/wT7FzU3DU2mSttqzq0434x27NkOS2Msud5E9kLORpR38fNYm9dxKpKRsJB/nHE8K92vpo7HcUHeGbQGU0rMPpbO+MeMQibsNP/1yJeCtYzSGu3mCbfIptppvF2BOc5RYE94XkGD8Ybp/0so0yGSR5c8OTCxHXV7UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777999654; c=relaxed/simple;
	bh=VU0KnIZql3uC1lo3/zULKcnxKqOByGxr72qmzBawmJA=;
	h=To:Subject:From:Message-Id:Date; b=ltC6XNQnJEToQ+dp5N+gr+/R0I5ZpAwJcHhaW8FGKLzLXE3ADlpbWHZ+rWfjK12s35rcy5+DE2A50u1fHmbdZj8vjjS8cdOqCcz7+cDRQJkYBVOeIzci1vRv318rvHxnJRTUaFIT7M/uXtn02XmUktRbn1JbrIo1vQc7Eu90sk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB+ig669; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB+ig669"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFF3C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777999653;
	bh=VU0KnIZql3uC1lo3/zULKcnxKqOByGxr72qmzBawmJA=;
	h=To:Subject:From:Date:From;
	b=GB+ig669HJydWDjI08APcM2xQmSCHzvYNV+KlZYUYgRI/EPVOxSbqqWyIihm7MLEA
	 ns1pfsr89/5RPEly/llwO+Rl/SfUF6U2N5reJmmj1a3atDFBpTvJvg0fuDA9Webj0q
	 Qw0cuF/tYesvNOHQXGy9htegB47y29pXXqSGKoNUua81pjvJ7Ba3FgZjwFLoPLlHoq
	 Hft1RgQ15rf2DSAM9YpSmXSWxA0ZckFcSJVWSa3yybTwarmNfDG0myoG+QcLTdmqhn
	 MYx21Y8e9SOdAPh5k3+MPz3lKHqUqHlTCvZ/slngHFUpb9TrjeEQKKrg9HfaKTGxrA
	 NNY0BmTq846+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA44FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799965368.14393.415364093245905682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44ea6fa969854f3a2a0cb1eaf867cbbb1c1f147c6f9f76487e77f778022e56f
Date: Tue, 05 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777999653
