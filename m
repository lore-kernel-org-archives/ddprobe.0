Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301BA329381
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766600634; cv=none; b=e+VrqswrLSbQWn6LTbJRwo3FgwHffCG/Utl+BOkTv1yCm6ibTToVBk8P3k2NnkADR3olRe4l+JG6azd4ngQeEixO5Lb8+hXoo5+n4w1q6XrSEwicxoLzTXulzL71C5gqdr9vBAbMCNfbo1QtpxtnLfkiVeGRVwGzzM9vZGCO1dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766600634; c=relaxed/simple;
	bh=w1fS6rGfQw4C2hp0xLtltGBUVXLMiindmJDSxX504Ts=;
	h=To:Subject:From:Message-Id:Date; b=tM6NtNXFqKi8oVRUfWb8622sjmJ01WuZw2kUvn00aFEg3xcvXDIQhNm0yM2Fl0nBCU9ILa9vMdbEcnIDo5EnOi0dOrsW0jJ3B/Aat9bpxY0KKvGFhOoifscH07skbHUHkhYPjC1PWU4k5UptMT+jdve/tJcB/OJEaR4dSfNVBm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZnFS2Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZnFS2Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6723C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766600633;
	bh=w1fS6rGfQw4C2hp0xLtltGBUVXLMiindmJDSxX504Ts=;
	h=To:Subject:From:Date:From;
	b=VZnFS2MivRTErhOxZxUKabZ0Ye/J0jyogfuwRitY1cjFFTpTt5xGyZ86CnvJMtMxr
	 OC2xyBBSPYhDMOK7TsXGLGWedY2AC0mxDs89WiHJaIArCqx6gDtbTzSLQrv+F5fycT
	 rqZo4Tzuu+/NDvP0ygNA6VcNUNFfM535lncKguQm2KnSM9eQh2gHr3w7RdWCsIYdBl
	 tvs+NGF180eAEo3Ucx229wT4QyhIbw1cFEMvh2UeqdtNpThYR6eXWzkBeCJs3hXwOK
	 QuNqeEtxIy0Np3p+lfsRPOuPxewbz5uZxdITlKB+3Yy89f0U44E4ho7J2lfJUm76i+
	 BpZs1/Kjckkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D07E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660063357.13032.11764877240037697010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38208fe425630e9437a2ae34e894b97796b872ce74cf135a30dc4531dfe8afea
Date: Wed, 24 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766600633
