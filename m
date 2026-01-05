Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15131207A38
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767617034; cv=none; b=ZTXbQ5so5+YmPFk8WW2NwkR63ialXlv0TrO5N+L0iJyNUkqdwuDCIX1fCMiftfDQu3R1Ql9z5f4oEhDLCwSGbzUYj6xIGug7ycyeuExNUnYk1/Z8RfYOZkskjB6Efg8B5BdR8NZ9dkAuUeYFPd7TpXCOoiZqUd+ASV4m0zu8cQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767617034; c=relaxed/simple;
	bh=HN7NCfe6L/rYQ/1m1SgymzAidVSj5ZoN/bUuJB5rCik=;
	h=To:Subject:From:Message-Id:Date; b=mPBbswG5AQdGmmT1evUcp1Ow1FRxbPS77hsYto6XyBIiQSDugkX2rLFGDRmlpY6J/+WbOKyo1wJI618io3jUgnJV2qIPZ473aLJEzq5Adr42MjiAN/hD9LbafBsWB52iSuPgb9n+0OOqKqQc0cFU5nJ3QjwMvbChDu1uvxD3TIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw9ele1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw9ele1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE29C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767617033;
	bh=HN7NCfe6L/rYQ/1m1SgymzAidVSj5ZoN/bUuJB5rCik=;
	h=To:Subject:From:Date:From;
	b=lw9ele1GI/e1K5hVu1BM9D0ggAN5QGgeZhL0qfEbMDE69by77AU5b3B7uGOPXtnFk
	 nMXDL+Rs5VNLh01pkbGSa//ucCD1iECnCnMdD07TDZjHeCEwIQyC3E9oUH9GZrlboQ
	 T+1ZKZTGLxh8is4Twl0UCaZlNwul59tYeM0teKS31Uim2F1yIlj3TFJOZKD0TyxaNd
	 88DbeYl2fo7nCQGyLCjtId9Ye7TGoEmgnlpR4+cFJQd8ls/wrbrLixDVPPbobMcAsJ
	 YkNHPTf1AZiZQeeA31CAvB1pcjlWru/vi0le+uBYMHBE/mILGD2Ybrp9/TKmYV4iGk
	 yZGAXQL4iSbpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EAC79F87
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761703357.29152.13017426466013617263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1e704cd6b7a899ecdae75c3b0f9094d687a1bfc944d47ecf2df00d3489fe27
Date: Mon, 05 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767617033
