Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9097313E36
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763466114; cv=none; b=YslT82yqDeeYLBYd8QsmLWn/O1FzD8bbTKYlh8ykBp8igXEc9tyOIu32zhjg547ZBnt61Q0fPSoh2/gnYVEl5TeJbTf4BTU91c5s0AYJ5brSRkvGKyeEveWV7eAuluWWxPy8z2PKtT1CFnvO4rpOs3DMmY0yYoP6gS9bWu7Ead4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763466114; c=relaxed/simple;
	bh=4USypZyYZaw25IDUISKG/vSsHKYrLlc4lMIreEDA+6U=;
	h=To:Subject:From:Message-Id:Date; b=a1X9wrGemqt1XaU3vrC+DzyEq9DH9E+ZtWp5PQNAWeVPeRd8tN0IR5B/FbXQqPFyHPLn9VG2BNQ0oUFmS5e2BLDdsCDPf5ezfO3bysCth30IELnyJT8ZA636qI1V3SsWtTvdrPG9DnUeFzg21asVOtDrZE22QzIP1ndFP0t/dho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSq/f+ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSq/f+ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0949CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763466114;
	bh=4USypZyYZaw25IDUISKG/vSsHKYrLlc4lMIreEDA+6U=;
	h=To:Subject:From:Date:From;
	b=cSq/f+adloBM5+qBTgeeK4Cs/vp5fy8I95NplUEo+EeTonecBJpxDTBPCqSIruzPQ
	 h1c++nnPIGKjH5fQv0907gWqwYdAT3LLjd3a7Vq4+U/Y7pjSHfmojKDmPCXEj8uNce
	 2L+W5ZiKJ/wPlQ5CgLGplmjBvlpHtBKBsD3dJeIcxN0pCOtRRHQjLt36WGsrxtlkMQ
	 pR3Lc8xgjYucV6uYjGgI6YpVAnJiYF4VuTc/ipHFjU5fydEvb1HNJaF+S/hgLgCICv
	 xlq/Ijk/Kkv88kJFtZ7kIAkT4DlquVJsvNkd23sKN2nNpad+gXorPq0oTpADCvqaaC
	 y9/jgGUBTk+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F5BCED617
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346611358.26985.1884140956199725253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5141d6690ef49ea4fcb197591c0c39bd687b9ff8cc28e7d5df214637a311c025
Date: Tue, 18 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763466113
