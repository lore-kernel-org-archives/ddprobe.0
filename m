Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEFF2D3ED1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788092434; cv=none; b=rHK42thGOjmiNt3XKjh48bbZ/SDOanLKSrY/A9GrjHknbfLahOuVSA8x3VTWIQG/V4V3a3SEN/oZKrhK1b9EQEX8mIW0SBZ052ASUAnnI33FRVruqnsMu5Uf7ksbiRU1CAkGRBU555IgJXTl4XU419C7jGYxP4D318P+3LQa724=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788092434; c=relaxed/simple;
	bh=uH+bfhpc2my+hb5nv8Ty3k+51dt2ix7lCsQCgUWFL+w=;
	h=To:Subject:From:Message-Id:Date; b=uDzrLA9HO8w55ncuT8F1JeA5ANK5HTTbcEL1YhSA2h2xCyeU9ei1qetY5Nd4gPjrn6Xmu3R2D9afLjQZXdztHTgGROAYCBsAcrNl2lPjCT1azbxzTM7B/aaf+uW4IPCA9CH5+CTXwlYwGwhmwEEy0siHf+kO9swMHnZK914ZS34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx4feLdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx4feLdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E34C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788092433;
	bh=uH+bfhpc2my+hb5nv8Ty3k+51dt2ix7lCsQCgUWFL+w=;
	h=To:Subject:From:Date:From;
	b=kx4feLdQXpuX9J5f8KHX8XXVgcsc9G22LmlTMv9dffedy7VHwE5w7fFv7rE2Hitjj
	 MBx6ORvcqRMb3dTaqjNBlMvgdeqEUk4XOLXiuTECBXUS97IWq9BKTrG5c26vbvAkwR
	 SbDZCPJWfu98PMsmGtZ22BysZB7iRBof6KQSQVPatsBWJpfzl16AZKVwgTOgVwg7gx
	 YoWcikkjdH7MRHGK+5JPJIHe3H+fVRr3JIxBh4DepATB2g+cVi6NGJmBHl0zrqk/lB
	 QlAUCGK9l/D1kaD3kRR42Uvd1+4pQD76BqWXONv6ofptKMhzY0Rq/spebdZElnY7Gy
	 SQONIu/F+g6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D70C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809243370.23328.6612115301822238012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865c367ac3f08d1fc820158870b5a287d8f745914f314fd0e4d16627596c902d
Date: Sun, 30 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788092433
