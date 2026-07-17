Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833EE231A21
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784315914; cv=none; b=IhTMyIPIZC1NXbHDprZ9jup6hjPZgEwTYveC5rN23Gd2ERI9aRE6xYSa2vxa20mpWbhOU1JRzUAW5Aa+ZIHQLmlU8yu8ov2rEGQRF0XeRkWrMX3P3NNOZ2Uxe/WCtrFcb3Cd4ER99Fwdhi1z7lG/yDgBSxONOcm/FdXK6jE/PtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784315914; c=relaxed/simple;
	bh=dIvpNL4ioy8jeM2sQMadToQnfaQzEct+mBXHgXb6Y+0=;
	h=To:Subject:From:Message-Id:Date; b=THsF676aLoKX3v/sOHx+T4vBxP754dzNLKLT/zJdFVpeZrGSU0LZZFu4pxGnw36OqxAOcOSKA0jhuLc3uQzq93SqmSnnE8N907ZZCGVklsAnfEQATPM/zs/EMJb7bjRgMXPcey50lWHWVNL3GqEfJlgJG+s7NUQ1/6t9YkHYaCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2QIMcCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2QIMcCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1232EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784315914;
	bh=dIvpNL4ioy8jeM2sQMadToQnfaQzEct+mBXHgXb6Y+0=;
	h=To:Subject:From:Date:From;
	b=c2QIMcCrHej+5UNSjeRqHAKC/WpSNT6fNCFB+are8HbmH898P0wGE5Toin3O30lsd
	 I27wiApz/ybvXos2/JrxEWfNehwZykiPaCH5l2yGXVZEPwkkwZ7A8x7hv+C+S+9/ty
	 P8UJyE9leZsQiokAqObdGgXiLvPnmmMwPv0vnTosegPpGJssfSuZUv3X6SKZ9IxUoH
	 CdNPgKsyI8dehKpQOMhgsriTY5UI4DQXu0jAtnZNtkybFzE20O6aC223V4+RUi2Kpp
	 trWWCtUsTaW2H+lsGX12bpNc06nl5mDxg0f1NUhH7Dex9w9NRfcyepmxjx+QjahxN9
	 scbDql180EbvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2527C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431591377.25550.431165576666332448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e023d1dfda27b5403d97a3762f957dfcc8a3e2352b49c55ae42e80524807f76
Date: Fri, 17 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784315913
