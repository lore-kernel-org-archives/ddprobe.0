Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315663B7A8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767666834; cv=none; b=RhV8tVF4RGyeZ08QZYfZdw15fKPPCaN/HGAYgeMhn89ffZfv3y6mgahI7t8sNTKWMrTd8xjG807WuH8LQCDMF5YOh/Efbf63DZHcHl+UvgZ2y6juS7RKtd5Y6B0fTApjo9eIRj/F5BlIS3n7en2kkiKHizcMs1U5MQxPeVWZGUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767666834; c=relaxed/simple;
	bh=28JZBWyoKurzYFTAO+cVgVH+09480b4ioBDzNoj+GDI=;
	h=To:Subject:From:Message-Id:Date; b=s2L6iVySfTK1UcT9FZCtlY3V5ToAIBJSHK1/rDfE79Eo2bB+mSJTXzgG/FiWSTqpGuYaf/2gzkREm1revOhuvHszc5WmCFfFO7MpPjzNHo99+1JyhvOOKXI9kc+zMvZ3dn6CnaJHO+a9lwQhvSYDrnsFAeEGXNL9/9e+4kap39o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbHnAgHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbHnAgHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE0DC19423
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767666833;
	bh=28JZBWyoKurzYFTAO+cVgVH+09480b4ioBDzNoj+GDI=;
	h=To:Subject:From:Date:From;
	b=XbHnAgHpPGCd8sgepeo10zl3xviyanIbkSK2EtrFSxFERErvpCdSDBKpqUOm0Br7V
	 a0fryUtXw2AQ2Bd9ED1dhI3bmfN9PFGvZ0uYF4LnvjfTB5pEpGsEFNorkOWtbMJL8t
	 dYfmDk4ezQiha6B7Wwqa1Ih3Muo41kLg8hpZ1TOfOpbNzF6vxB9b5hmKmrI9QD3dnB
	 txIwyqEfA6RtSAc0twj4P1p9OjQYBHgjwNlZ8AEskcuggUEfiBhtMbGobve1VEexDz
	 Cpv9KkOQl6vxx2syvyKWxtIIJz1rfzzMYgW/0WGhZY55k8BSKDnbSzFYdAF4HNcmYP
	 7/GVSh3irtECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C3CD042E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766683363.8259.3887146879265467289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61139354fff4cf7f32850fc0fce6a14a79e5545c401a274f73384f330a1f5f2a
Date: Tue, 06 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767666833
