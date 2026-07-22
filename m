Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29F3473C7E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784707114; cv=none; b=C7SbROIheHq5iTll6nBPqbFqQKdig8dSDdkKRvl9ciIIGD3jpCd+phe6OOtmKSb5/oeeKE9IzwLGc83TSA2hMsQq002GtIJhrirNod5yuXwO/c+9PczEmtwPz0hwSQ96m9IGKg39DEQf/raWMllADpPBVGmO0rqe5A21VKreZbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784707114; c=relaxed/simple;
	bh=lCvB9pTLIBVp8x/QT13a0MnTi6m8C+LoN1RTY+/7VSo=;
	h=To:Subject:From:Message-Id:Date; b=Fq8WqrR//VRiIdsIWaa0BYjRymC2kjPjnUp9uxNk0kp2fLh/cuVtkc1vODFLjZvO1SnoZqc0GXA3FhdJ2Id3WHnLwffTIG07HWzQ1r7hKxEzXVbZPTYUDHIZOkb+ExpdTgfYmS0Z15a++3yx8XkdbfXThgPxIVlcECD5a8pWG1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCEOs96n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCEOs96n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BB76C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784707114;
	bh=lCvB9pTLIBVp8x/QT13a0MnTi6m8C+LoN1RTY+/7VSo=;
	h=To:Subject:From:Date:From;
	b=OCEOs96nz83Jq6/s5BhkHhIjyVl1OKPyAB+DDYO1rN74/O8dgfdKH9yqyviO+LVsN
	 Kg0gJn9hRsb2zwAiFt9gLuvMnEXtoUDiOMcr05YIDe5rCsRZOVI3QEPq58XJ+SPzIF
	 dEHHOLmg4xpH7tj39vH+ubkn8ifp/YyrRE6tBD5wd9b1pfYADx7E5aFyOgHHAQnlSJ
	 xrwSJItyTIDFdKWMqTKHOqZvf9v9JWFkKJpIOjQCejutkSZ8M9MqtfmK1Vo5U1dv50
	 lTGUzRMKS90mdyhL9RilzlNBJ0EQ7M0qZJS9u1tJuN3ASAxk0v1CM+FQFS3bzMDWwH
	 lY8gk0Tw1YbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E466CC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470711392.15841.782094939131973083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b872b34b9b6f9bba670cdfb46d45b2d7bea24147267a50963861196a4e631a
Date: Wed, 22 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784707113
