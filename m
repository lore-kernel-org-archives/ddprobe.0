Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E412E11D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749945594; cv=none; b=DOGHp1imnJRaC0QLZftDo9ApVZEn4wcqhi2Go+FAuu8ZibclRtsjL/liDIR52P0klSB6sRF/AH2YYz+Q3SsJa7F6RkiKyAN4d6lKIlyXbucJoamDgnb+J6wpjc2fy4fgbYkGURUkNCvQZiPP9bKG6h6T6O2HMBPq1XrZxT02/TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749945594; c=relaxed/simple;
	bh=krLGKn0gU9ntBl28Q099N3A6BK/aDkPNCTUFygwDg44=;
	h=To:Subject:From:Message-Id:Date; b=NwQFtPucKNd0rzuI8wZeZQWkjhgVMuEgucadD+tuggOYQXHj8yU1zwFuD3HLeqtJjlK6XISY+E/IktEO6XN/mxlVSFxRFw5sv2P81RZ8BH82i0acaMBExDsh8m6CO6Xeo3MaufIEFOKAs9zO0bjKbPtRAdw28E6/RE0gqZV0RcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4oAmdhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4oAmdhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749945593;
	bh=krLGKn0gU9ntBl28Q099N3A6BK/aDkPNCTUFygwDg44=;
	h=To:Subject:From:Date:From;
	b=c4oAmdhSHfC8vQzTibHazews9W5tLRvFgXzrT2gljfEbAqCwuqMI1GUL+TUcRBOgq
	 pQ7sU5zfgxI5P+Sn/rbGd6j1fwTeCa/hPw+2APAR4joCp3A4JXiA76eV3l+2Pdmvjl
	 8RJbsCOaex04LjLR7zbsOMPxFgs+0HBbC6xqLNYU8a1trxSiQ+sH+yV4rGoWVJeT2v
	 PRnRdY5xGnKIeAamN29JCPtTwG7iEZbFQqi7Dihjz6hk8TUaMwUWVfRY99NbdE438d
	 Sm166IWDmMsWaJ5aGl0iyEO0yuUh4Kso7aBCx2cni8e2xF39GlVy+38A820nN4Th1+
	 IoopGA2yShObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B8C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994559357.5072.740260804743590269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baee59588a0f18aec2087dcfbd9f83a4832abe7ef237ee196ce83b2f77e215cb
Date: Sat, 14 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749945593
