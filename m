Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC335E1A8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784680714; cv=none; b=skZDuZozfygpVBiMdyzeycZTdk8fXheWVZqW9YUKG7xLxwXLgbCk/afQOEzEk3FfzPX0AKs+8Vh3/9jvlw8ytIpKBOHwbM/OXoorsYNMMP/t1/j+KlvBEUotKDwB+oz77TnaqHAuJzMMXW+ARy4bP/qakpvM7CYGsqHaOXqFYDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784680714; c=relaxed/simple;
	bh=cAOn7yPprhyAG8og5xLG4S0DLqb5bdgl4vMzIfcNPnQ=;
	h=To:Subject:From:Message-Id:Date; b=q8+Cy13hgYXY3G+QQu+qZkMGi18xQ2gfQo9CLjqPRKDdN/j/aYOf5jJppD46Em6rtOJn98d2r4MHF3c7NzrKpobbpaJBwrlm38MEdgmYi4dMcUMBmaEWdBsXWO3KfR7ZYAcH2cI3cw/JaFMVrlHvw2s4ecP1LeyEmuG8T8vLDUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwsozwrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwsozwrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE916C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784680713;
	bh=cAOn7yPprhyAG8og5xLG4S0DLqb5bdgl4vMzIfcNPnQ=;
	h=To:Subject:From:Date:From;
	b=JwsozwrsjDpgt1o4DcZh3hGyuQBLM0aLlrUjGyp6ng6QAunZnbPfex8UBjQ0YjBAR
	 Rid17LsX0gZpwTFmfZ2fy/vcHTew9jOgTe4Z34nEHSPhvYSU+rNTH2mx3WBsDMmX/a
	 yjyLw1qy409vCZNqGwSW30viLyj0uPLGoaiwy+ZEZdgbDUgpHQzMHuA4+uBA0VuJli
	 lgQ/HxwdH/b4HXGZ2Sfi8J+hZbOi28rVz1hg9s/MZkI8e7+7wCCRfTFni91btXYBtr
	 xKu0rflLLiis1+G35mmAHsip/eeHx5cqyqp0JtWft16Lg4MeD3qe0Erz2Hd5y7tXg3
	 QuR/Fv0CJczoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB82DC4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468071369.6922.11856857537743233234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a72159ff5f4e020ed3f461e000081d79c00e78d5d9037202d0ecfbe538d1c6
Date: Wed, 22 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784680713
