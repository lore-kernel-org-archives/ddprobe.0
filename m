Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFD21940B0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790297434; cv=none; b=B3XlCI0TXQeMGg4xPIKMmXuKPVzXM3btZsVwYD9Ov0+VAIBr5cJ0ruHZWXmtsvGsqIrh76O4gZBOGJFDaKKyvUsAASJnUNwfN4sNvzWXkJilPK1Iax0aXf7ShTohaIP/mgx++Ei7t7nixoYZJ1T4KsaOQjGnVdcrHS/AQsidXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790297434; c=relaxed/simple;
	bh=ERbffehRE2KOsERqAbTiCdTGgsDKubuP8FAVXWxadNs=;
	h=To:Subject:From:Message-Id:Date; b=JdBR5yHBm3rab57di/z5YIo+RD15Fgb/51X52Ax3M1ux+2xlgof4uOdlrnHa9JRtRBBOW1UwoLMuRQMO8csqFlGtM4omlcS71hfUz/XoLjcVFGpp+uFB1dUwovZizU7gY/B1UD2uawAlAriJwLJ7ZxXry2B5lw3n6VHui1xm9jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eed43U82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eed43U82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EDFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790297433;
	bh=ERbffehRE2KOsERqAbTiCdTGgsDKubuP8FAVXWxadNs=;
	h=To:Subject:From:Date:From;
	b=Eed43U821WK8P6ehgvUR84/reX38uqMMan6SpK1j09M9MgNilsUulnQvi8FxUIWPl
	 hZ2e/2KE9S/jmQDtTnxUB1Eho0x8KTyywjBeSFLbIsCJ3gQtYLPd/eNDBrU93bZmoh
	 a1CDJ5sPm/gwkJNbO21anzO+czEbupDIs1sEXxr6SZEi5jVXZxdWdaVIxlZBeXC4uX
	 6GzGCgY+CZ1SvFvpOvayzVtDjxz/oA2tJoJmJ9y0Rv223/muHt2KXNb1VabOW+TIwt
	 G77Szp9w5D6Lc4qdjM3g4pgUM4xWK8cUReMHxnM2jJ59JZCIAmZKzUwy8mzAZP9N+v
	 mOmU80OF95Nug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0151C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029743368.771.6949757273490193604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26a2ff6ff50856fb97419abd35824209ad4f1d5c4aafd3c35400e081f0730ea
Date: Fri, 25 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790297433
