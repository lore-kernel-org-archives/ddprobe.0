Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407B1EED8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736731554; cv=none; b=oSTqzsdjil6PDv2yBy4vF69uGj0TP/JrbrncZotU5fxgvyXxkhcx1O5mr+dft57rutrUeuHJbmeWMvfdHGLF+b510qJrPj5xAoCM8JNV/Q4Z33TWHuN8CUrAxkUAp6ZjiGCrjFR4Ktf837ADGf3iZy+aE1Sx96SHXXi0L9EIM6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736731554; c=relaxed/simple;
	bh=eYg4DqdzyMwUBsrCKLCLks+VvknWtdP/kbSxSFAuDYU=;
	h=To:Subject:From:Message-Id:Date; b=ZiNwSu11cnXP7rD1gApF9u9AVvXWqy7/7s47NhqzxrRKmt3qJK5gHiirL1GalGY8nnQjbdrIE0/pVFLom65gODjR36TBgx7Rzui6zk3fRaunCOinrIBu1pjGEdnL1z3rnkJ9tY9+f8GOTodvWiuHFlw30XPrZuQ4J9MMB8xXY7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUmHwk3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUmHwk3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72CBC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736731553;
	bh=eYg4DqdzyMwUBsrCKLCLks+VvknWtdP/kbSxSFAuDYU=;
	h=To:Subject:From:Date:From;
	b=cUmHwk3YOJpRL68/8E05yBrHO08jpGuErMPsRsI0hsD/NxJBCkL3DZpdpP/wXJtYc
	 fKoYipOgGwDt2p8bSJS2OKKMsC3bf3FIu15VKdRKIPNOJd9uVbyfusQ1Y6sLNWmQhq
	 heQUGoK24bw1wKHJBY3lRtYMGwPFKicEx/4wkJ78k/kHO8OgJBWyqX00SB7QziCabi
	 h6X8XGetDMWrXmrQMCL+bQaKfCcydDUtMo9EcB5NpTZfTxVAZbJROJG7oXbF2fTn+h
	 7ctkz9j+vbVPVyUKCH7HOc9nQ8HB6XYXCU66Htk5EXEumgCtwtVo6AFAct2/3pBtJB
	 q279ncCDLSyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2411E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673155363.14364.1626275772766619053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9181c03e79751490423e85ed2238d4142f32183b5b9f85ca89d3d85e61f93e16
Date: Mon, 13 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736731553
