Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AF01448E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786855234; cv=none; b=DprGlI/h/3QdpuyXukgHIPNXxhapZ842l5D90r9zNJLsxf11dtwhXH2ey/vTLzSJzognvx5lxt0ve4205laX6wLYMiE20zAXeONcUnm7nqI4UrZAGuKyObjTrxRxDhB8ojbTgoy+OS+xhrFdGJdVIvZyyXfJnFqBpO0vRtFgj98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786855234; c=relaxed/simple;
	bh=LcIdNjpPenvbD6uRvAMWwSWgQyF152JfYTCXohkFjZA=;
	h=To:Subject:From:Message-Id:Date; b=u+nXI36v+KfTEOTro2NR0WlHo2MZAR4/MJ4WY9uE5tAQpdgcynCSHV41CPMTm01wQgvtxuccEUYPF3kiavSsWLH2rpGSwlSnFP8TZNm1TTHiCBSZWLdtgv3mPSicJK8Jk1q9OkH2SxwUS10zHS73fMu/SJ0BH75WTjiAzK6ewuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHiC5rAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHiC5rAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63FDC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786855233;
	bh=LcIdNjpPenvbD6uRvAMWwSWgQyF152JfYTCXohkFjZA=;
	h=To:Subject:From:Date:From;
	b=ZHiC5rAmKK2hagENCq7ZryRl7bLthOU3qd4VWUih6lnvn1PeygIntD+IwS2EM8kFq
	 snon//TE84LjVIlmOMdmfCz2KlceLbRIzJDC07tCd9T9Waw3cTnSYUUJZPg9RxmFHS
	 dAqimvUhRqKo7dD4ZW8v1vy3njXyxTh3N87FV4h2RL1q1DQFISQWntZJy/kniwVRZh
	 LK9IEeNiSmOjbJiOWX8d1lE0zJnBB8VfD85MiE6FekNkdL/+pAeE6NgnuKAB5ErVqa
	 QYlM6TooAPppQ1W6Qu5ZMD8o5uf2bCzO/QHIHAhN7GBwESvY6xTtetI5IRlOx37Xcl
	 8B8dF8kTV/lnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CE3C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685523369.30052.1312301932567082532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c7b7f63874349e0bdadd06b859efe5935122f5a63ccccc8505ed3052426422
Date: Sun, 16 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786855233
