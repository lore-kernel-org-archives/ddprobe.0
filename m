Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9A01F192E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791251434; cv=none; b=cHg5HqrZkWodVk4uDBKF7s10ctX7Iqp8iFTeSGB8Qz8eNQ6EIG5pDq3UxoV69/eFWUS2WRCfwMaUJVagWwyvMo2L4tUis2Q7ZJe4NWaC+lB7HcOc6fYLrdIC9gwuHc+3PYkdR7XpCrpsoA8pMofldBbogNY2Pys8sf7HikfvMKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791251434; c=relaxed/simple;
	bh=Ere8R4tqBcsiv52vGf8IX8FtjAEE5ToDaYGWAGVPMRk=;
	h=To:Subject:From:Message-Id:Date; b=MA8cFbmYKqcxoDNFzDJ6IR9US3qReuyjXLLA87R9u6j8Z1krmWzLCavgIUbxMekk3vTpfl0bz7xoItNmArjqk7P9bgSglkcSu8OthDGKKvkfFqT7EgvROz5wGfpUS8yi62TwZUoJWV/koZBObyVzezjNFPGStihwoOm8Rx0ZGxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSaW670c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSaW670c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5F0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791251433;
	bh=Ere8R4tqBcsiv52vGf8IX8FtjAEE5ToDaYGWAGVPMRk=;
	h=To:Subject:From:Date:From;
	b=sSaW670c7sUlhzsSNkxAKrEyT3PFdZuJVuxE+xBq1qY2uKdXRRLNH7KsMBnJY+gqJ
	 zyrfpmHDFg2YEaaqMdktrVXkYHa+pVn5x1o0QPb9HlQB5T9P7UQrabbyT4nvkVeVSU
	 TeCMbGcPJao9cbF+kP47SucHyG7EwKnQSc/w3rKVH5eETNB4blYgunl0YHXptzzhRw
	 XAgWOoRbXUPkkzrBHqWRCSUcIYcxZ98syla8224u5rK20WTA4PhUwOBHvIi5m3/0e/
	 wvXVyBK10G8MmrWo1x1A+WDPdHrHMhmgbR7Xo4DVrJA2ketWdKCTT+UvQsMylF6irL
	 HNOJuimKSHonw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A3CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125143368.16355.7797829038798461166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb6a2cf815393c971eab34f002d0e1da43e4f6cfaf123e6800988d1932a9322
Date: Tue, 06 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791251433
