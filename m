Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15532EED8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670234; cv=none; b=Y0Jh71QJQbUWw18qeD4HKLMv8lHvqk5KdxJRKjuzllA6WqnkFf0HsbDpEKX0Ue5TEsjgkrTB3opCM4y0h3mxfYtFQGcxfhpewrfuBhfI4dcJZ0v/iyrbGa10u3VGgOkza53IU781RnPwOYFmtlFltS9ycVPaxm95IasLLkcRvY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670234; c=relaxed/simple;
	bh=O97sUxb1Z+GDb+xrvq0gksEhilUcAMphVO8o+X2M/XY=;
	h=To:Subject:From:Message-Id:Date; b=a8eKDbflvcM+im8aMHUyBeCyzTJQCi0fcuQgjo4H6M1Fzmc772EUWIjzysXeKmjYk88HnbcjXV43MwneKH0hGsVZeA1/lNpHfj32l+o4OMbUU64UBpOvGbcbbDsdjWWKPcVIto9WHmY/e0R5YZ2jmsslGVecJwP+GfOkqN6Y9VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHdY3xrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHdY3xrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC749C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670233;
	bh=O97sUxb1Z+GDb+xrvq0gksEhilUcAMphVO8o+X2M/XY=;
	h=To:Subject:From:Date:From;
	b=RHdY3xrnzQFYySwWvJ1DWrpus6fNfTz1TtBt1Ts9ouuTyps+QePFS48oCqkH+tK3s
	 JTb7c1R3NP8e3p0Fs4jQVdfXLvPJeVE07X8rXOiKSdf/JEgiWcuvA+LgWyt3jQggnr
	 bGJkDTPEG0olsjfG5fsJcX0i91pFon+owRG9c/wmDgSURjGbPF0X0ONQauuF95QoIA
	 ZrYewSK7d7Y7aPsP+wvwLsi3Mdw4VEmLdEQfTSiDnrC1WU3ZGCQSFipFXGD3d7f7v5
	 24KHwdApyXO5jr+m6yfdTSHU2gIeCPNCwNjaEj8MzIZOQeaewWqR4+mvaCoxiLFW3u
	 2ZAqzUy5tVzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98286E7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667023359.12061.15752198476477400508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed96363471380fbf5795b537f07c248be1fcef39b4407dfbcc459cf59a1e9e3a
Date: Thu, 25 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766670233
