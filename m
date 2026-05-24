Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4148942A82
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779609154; cv=none; b=PE+Ptm7uQQW+f8Eex6UhmZrXBHVtMjV0XVDzlzcUam4U4ikJWxoMnOzDWW1RpXUGbFeFO3B+G1BINgHiEuye/X+MYbcqFfrIdzGbYJHcIAqeyMgCz//7aXqeBbtU3WVJyHgXQyUVmxKgGJAwgQno/BOS12ZHdBAvtCr94iTM6OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779609154; c=relaxed/simple;
	bh=LccFw6WJovA1KPYr49p64eEhNuzK23pZQG46mLe3d2I=;
	h=To:Subject:From:Message-Id:Date; b=q+4b4H42pH1PsSD5tK2DdCR/wqsqY95OVFlRDZXFHj5uPltTvkEfKg2ci5DEoJumx+GfOPldaoTtLRVRBExUc5eBxZ9oW3FFmF5mpBiztT3Q9Qgdn6k9KWlTVMnyOgXJF7HOBPYoE2iASFcbz5/KfYG5FG7ch/N0Td9LhsQn2/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JytyH4Bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JytyH4Bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF549C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779609153;
	bh=LccFw6WJovA1KPYr49p64eEhNuzK23pZQG46mLe3d2I=;
	h=To:Subject:From:Date:From;
	b=JytyH4Bz58/o7952WydT9NnvLp1Hp0KdfMwUO94Vlv59838tsz73l3wOmUU0syuY6
	 Zr3C0P4IB434tFLblq9OOiIPZxZn5d0Z3bZDB64Ub6GM13vomfo09F1SZgoF2RTm3+
	 f+85IDLnemLgGSabZwBvlJbHGnXLXPf4OLCCKLMpCpMQXGi4k4VKHGx07yrtmpkxTm
	 spCuYQlos186fYTqtzz0p7mx7B5lx6tvS2CAXJbqOW/uGEWGt6KTVRNeaVTGfE/ef/
	 pTSIJXdarwZHoLT3bOKzKxJAs8ZBb1ihnX9wdKuXHFtqxyJDhU8Ul/daGxnE25n2RL
	 qFzDitD2ZvtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AB8CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960915370.19013.9697729920251451039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0738c6db1542db547540caf3e972bd622596c6d5325fba01b0de0616c5e0d3
Date: Sun, 24 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779609153
