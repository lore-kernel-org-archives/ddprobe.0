Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D9C20D4FF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775288134; cv=none; b=fXVEHIuxLOi5ZmXLAqoro7yGcvcGOEo+nML4O5qf3H94yMCTUbpnjhmoti3HPyQXgYxzjhoY5RWoS27bCAr+X64tBGDa2JqOJVGrO1ua5TDk4CuwbcwEqFafRDPQkpY/bvuSKcF3Cs4K/QkHvcH/q0KyTOgkDoBx47tZ2QUpy4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775288134; c=relaxed/simple;
	bh=yCWXPojEJCmZRyhaTv2XWEJ/aO65/cvJpG7br4LyNS0=;
	h=To:Subject:From:Message-Id:Date; b=Lk8YebNxTbrTLA6JllOj0whRZaLtsQoHJSAEQtg1m2PiXhcB5jISlMAo4bxZz5MlGsrBnfEsaLsF4BehLvnCrWLii32bhSeDMEis2lIn2BTiw3dzmrg5eG6BbNh1emyvjXhn/Y5pEBgRh8tIiltHiE7sjg0ijmM5R+7dA8ZdPl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+C2W2k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+C2W2k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C660FC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775288133;
	bh=yCWXPojEJCmZRyhaTv2XWEJ/aO65/cvJpG7br4LyNS0=;
	h=To:Subject:From:Date:From;
	b=Q+C2W2k4B6RO+pgNHGZSaib+lp4mE1TkWCMvLvdoMpmIJeNai6CQTHa1lePDOjtjD
	 dCCQEihlVdR9Tj25z6vnWMJP3ZUJTBm3yvXOOFvg/bLFv4djiftSfyYPdNs1fDh47T
	 oA6ihvCFdcRf2qA7ILT9EqwhUbDwu2u3L3hdn6jNHwTDwggTJDqsygXgu1CqbDVbKC
	 NBk9oHcP4Cq8MSRQT/eNgsawJKSRgGE0bq7HqFSit1DAnYqx15avRVYG4KsduPsxju
	 qiYxf/gPLI7nHOyqR9nSSDf+w9ozo6SoerYp1r3e3Nyh6Ok3j+6j7VAZTNV8HWjAnL
	 qD4gX+UxV5uKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B245EE88D74
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528813372.24887.1302612331320931894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f76c98a82271831e1e503816b287c085d9992503c3443734e21c8f948aff6bf
Date: Sat, 04 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775288133
