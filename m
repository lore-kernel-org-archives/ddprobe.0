Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F043C8C46
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791662434; cv=none; b=jwmrA2yueBG/pyU7KkeSWR87QxVhPDu1bsHu/h4NRl5j1MvsArRCGlr68t339SLitWyBd+nnZ1u9HaPZx2Q4UIB/iMRstHAui8Gb2BEjyAZJqnSpOjFL19Dld2e/DzvKNrxQ+TikMkPNDeTwhPoyFoWge3MxWMEtxiH8+tbF5VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791662434; c=relaxed/simple;
	bh=yvYNbts75xdzk50PTKYUadaufQJIF43unOFwoaBlXkE=;
	h=To:Subject:From:Message-Id:Date; b=UpuR6b+0t8CcDbAdeb02KzL8BW75mQSgwccqjLUeXwHbbzcXmVnxzI+svX41Q1Ct7CZwAmIXiL9GOdEPcqg0kRbRNd0xayNmhieDPgropDQoRk7Zna5uHgomwDdIY7htImwrbArxihZwwpztgXg/yEEzlEE48B5zftTh7x5NqyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbJoqWmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbJoqWmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF32C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791662433;
	bh=yvYNbts75xdzk50PTKYUadaufQJIF43unOFwoaBlXkE=;
	h=To:Subject:From:Date:From;
	b=PbJoqWmcCPUZBtmFB2za5aAAd75DdIGPiLwS5gnQNeNrG5WL1U8bbJom0yRuWkXdJ
	 hB+uPr6YiJwtJfZvV/7eFjrgqsL6jc0z3O8j9LD3qtRlsLxefrPjb6KIzS59yYKu4Z
	 8UVaXFrZsZAagCVaU3USXmIny+Rj/xjchcWkOZCiOtPPLWjBf+ilBUf1DfnU/yXyhG
	 n5JWU2B/l+xtzyg47GafbIXoguEQw5hUnpWmnoWvxde0ve1iR2JXjUXXKeVisEE2Cw
	 lRz4UWRP2LcBISkxTvoFYK45dkmr0Hqv2sEgHFKQ/ML5o2bGZJcYQlAbLxlvq0wjZV
	 CAX/DVk3zf/xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0A6CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166243370.15087.1342185964651620764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960361435496fd37d6bab8fbcc1f5a213db6896413a6e0dd16333f4f2c38ec9d
Date: Sat, 10 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791662433
