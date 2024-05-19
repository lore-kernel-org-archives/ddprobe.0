Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580FE1094E
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716148343; cv=none; b=Fz0sFe8wl+yn+43MPfn3kA1vnq/nDz6x3nReoL0OnumEUeUZU9YGKfbT5xrCfosfD/z1w/CQ9dwYg+L+pZPQMkc6OM9fzxQnFn0ObR9it6s6fHAUP3tENwFm6HxmTSuMpX3UOhXRdZo8gowtCZjR/rX5CqFFQ/49jH1EG6HRnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716148343; c=relaxed/simple;
	bh=uKx4M+1w16wBJCw2VMdiNVUHTkIzblsC5+FEHopK2Vs=;
	h=To:Subject:From:Message-Id:Date; b=aOl+mhG+CxaQ9vR5z1BlEjFhRA3NenIl+DUfIfprxBS9mu9gRDct/rbTTN5piEIeC3/OQJjKpBIGrI546gWlUOql64F+qgHzDD20Zj9xiprd0seeGgTvxiDRuQM4hbMHIhLKFaiE06XCFJ4zhXIF8DxvdtvtAJ7d8affDc5pT+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBkUamIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBkUamIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFDBC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716148342;
	bh=uKx4M+1w16wBJCw2VMdiNVUHTkIzblsC5+FEHopK2Vs=;
	h=To:Subject:From:Date:From;
	b=UBkUamIvVUXAB3MGWKljnsqQskMeX1oZiJ+54U+HFJ95tv8xSnXn1Lhsf6IHmNZZX
	 wMnRf5mQX3n0wVVUI7K/XApHMKgVJn23gsg12NKpUsxEyC4P3hJ1FOaBMn16o+4BF7
	 WzJlUjJWUELfpPCKuKUAbtXPhl2RDwhsyLVynup7RLZspjYCd3/+0xHdT2gDB2FYL0
	 AX0Hx+zh81SPte2emWjJn9r0dPoEHX0ZXRn7ndUF64cIjI1S/suzDygpL6fRa6/L9f
	 hrg1aXwV4oHqQv/niJlp3mjj6t+dGlZjHajF3ELAU0oOG8qZMtnYVLQyUibxSBcR8q
	 TVGw+JC35IL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC94EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614834276.12669.16137674878514097692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5e1785bb78daec299a0955070a535e61ccccf974d5e68114a58347f3dbcbb0
Date: Sun, 19 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716148342
