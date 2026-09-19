Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FA722F767
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789841434; cv=none; b=qPrZH1brQXyq4K+LGzVPyHJPB5Hxp/bjU+gIdEYlGc5Ki5V2WvTRdtpH7wG18tA8/ch8ukB3qArKr2ZShAu/dTP/FRxaoztiCs8c2S2s/WHz9d/R0P5WPQZm6RgV5Ny5s1kNhFkuW6+zQYESvkgG5f09vlrylWJBXzenoAyewZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789841434; c=relaxed/simple;
	bh=8lKwfcXGOuIKTKpx2vbc3OIsK64p0FAmc/ri9ieiCyc=;
	h=To:Subject:From:Message-Id:Date; b=ZZvwJ2MJfgW+IsenI53uMdCW2nY7X6dcXnFGtfCAoCvyfXkGE9qqDu5xBLowRmGVoaRW+DwpgHpS75xMcwB/XVWxAamhDv1HpjvX/B5WgVQSWtlsoPaQ4Gm6FA7HmbMram6WCYrdvWTq99bTFxY2jfa2w8oRUXpk/HEoJ9GpLXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CijqP3d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CijqP3d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F87C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789841433;
	bh=8lKwfcXGOuIKTKpx2vbc3OIsK64p0FAmc/ri9ieiCyc=;
	h=To:Subject:From:Date:From;
	b=CijqP3d9NCceRBx0zdAKl6b18X+KhCMXWvF4NOpmygapBZ/qgAcgpT2QbblA3yxdl
	 Ytt6Ze2GwiAfGH1VTB84IFsIXt4bnQ4j1ysB+3JNlI8DjakGJMGLMwJ4+fqfRMWJLo
	 WK0uiYSXK5nc44Wq3bIGWDuK1TXjSD+8essQFqgQU/2U+Py6wV7IkUnsLC01kJa5YX
	 wMsA/gaDLPAU7mt3qmUfyRYFJsZiVU853nhE5Fqk2eTv8HfJSqi1FeJ9GnjMgkTdAy
	 GHixin/ahy/0wWY71sk4Bh37EA/xFt/FzEuiANk2Tw0Ou47TRNQntjAjghbsquWa1I
	 kWmVdivwrH4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0850C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984143371.19775.9688905022882650635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c8d7f7417595533f2b06827525008be5c362e25cd430119ae02a0305f502ec
Date: Sat, 19 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789841433
