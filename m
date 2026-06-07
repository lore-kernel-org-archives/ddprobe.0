Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BD117D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780850674; cv=none; b=hVdopQD9JzgoxiY1eY/ULFXMkk1efJWJ3oL19aXlxCGPOiFLHrvWCgis83EDIPPyclXi4MVJZ2Gv0WmjjNS6gK6vf0Sw5wLtsPLpfQVAZh5/L4anWesveYYrrFN6Q9dLPNmOm6kS2GnUcBNT2oSi4alnDMfAXZhaVPUhjdpsXE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780850674; c=relaxed/simple;
	bh=A9uB8EXmRYAaaGM0ig034DirN2KsCGp9fgKOoQIj4uU=;
	h=To:Subject:From:Message-Id:Date; b=OKX4QM3HcpqJ4mwV8dfM4lfBwST1EoFTOKPZfUA0Hu7jlImlPCs/JjU8QDb4I77R2M+1yxwDmOJi6Sic1V7X3MaUYH6LEiq3p38Hync/f3g0ynOBa6gqGcGDf6HOGa6YJoZ/7eFqZZStxVjayanJX6YkP59MIT4+VzvdzRup20M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPzhWX6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPzhWX6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61F8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780850673;
	bh=A9uB8EXmRYAaaGM0ig034DirN2KsCGp9fgKOoQIj4uU=;
	h=To:Subject:From:Date:From;
	b=nPzhWX6nbmeLZIIslb3EGlg2U92r/nFt4Y0L5efOvdMDYWFV2D0QZqVq8t2evoETK
	 j6ZEOaq6Qh5qO29G9p7M/OGnLIByt8KeartqOQXUcAC/ihH/Ox5Qy9bJBs8kK+P2Sr
	 Q113jQlq29+rhCQEa3YqmSdtsuqi54fmwNiNyLqk2MllurVgjG0cal3hem33wFv8EU
	 C4mjYsU25odJcNqsNmO+JPubu2NRmzftfPjkUHxI61Fz9LRCgkcIN2OvKj76lzufUZ
	 dqA37ti6a+gu0zWym84hgtGEV9OHVCCV1jiyY3u2xgOApcKO4Wmy4rH4QJ/c/xq1JS
	 wzypJZAEi0o0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC60DCD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085067368.27770.5863136702730094631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e057d78db24ef90b7436dafdc9297d8f50565299db41ca51d074c0989439950e
Date: Sun, 07 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780850673
