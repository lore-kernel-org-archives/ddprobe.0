Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB34224F3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777222054; cv=none; b=quwNA1GlxzrS/7uNG5m7Ei409j2ss5D3ON5a5qcUgCRJxxP8SVDWqeGyD9L/I889FQc5QQ4C4rvOHUaQyCmGnR0GjBhIm1i1l0Pxqo7gms2qNmlpRlM4niLr6sR8g+MbbMy2gHp6Zt5c9gZiOTYhplsYqphF1Wk7+DrxM09ZpGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777222054; c=relaxed/simple;
	bh=yFTsXxS0RqY3sUZwODB0ssvuMCHqclGQtYHUrDNWRwc=;
	h=To:Subject:From:Message-Id:Date; b=bcjn0A/XnzfcwnQweLJXWc11hHwRLrAlp8/gfWgv1F4EKczWAFpYh8XMo0mFvmOHosIBvmM8WK1M8dCPpLSjZAP75vdmo9xIg8DtUdxhPM4R9ycYbNrqqD+vabgXp908G43gVmj6txllQ2nVsnnyyTGUBwfhbVOyNCSGCEiND40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCLohH2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCLohH2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27C5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777222053;
	bh=yFTsXxS0RqY3sUZwODB0ssvuMCHqclGQtYHUrDNWRwc=;
	h=To:Subject:From:Date:From;
	b=fCLohH2ONFztcfjQGX+Rq9OmKvz6rJ6llPkKAk4TZSzJltx0Mu3JuODTmuLsxLINs
	 NYWFmbJJl8Daxez1OYAghw4sI2S4h3iLYvgHDaovzUCmTdiTpgZQqat8LdolghpiON
	 pE7HSUTjTMxcoqJy/QvWMZ+XiuyL5jN2ILv/Spq2/t/MYy8UtvqZuUjGv42UWHgBTM
	 kMRkl5Q3PhaLm4jtpCj5iH9gs3+UQ0dYhzOOPniZdRh99G1pOVwx35QotPrSPQWkFw
	 mpC2Ck691/O4o92r/Vy73Kesz+50AbPvyuN5JE5/6XSoJgnYLLgaus+2k+KaGhAs5I
	 Oy15YDxblcGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCBFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722205368.11758.5452481510438147822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22bdc835845005d8bb04f8f5b2f6ef58ccaecd5a27d79fdcf443a01754732e19
Date: Sun, 26 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777222053
