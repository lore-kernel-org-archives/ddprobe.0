Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123FC126C05
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750787394; cv=none; b=UUZgxABLANdURjUZEZuNn/csP+pClVRxG4bQPrlivwTl48TD6UC9hUFsC+wrmp/D3XnjPS2Y0llHinoRcqmnBYeexrNFnH28JdpndVr7aYCk+OXjFai4VD9lw8/jKHICT5Tls4y1Y2SSpXWf2oqI+8Y9kS/3gLOeF+HzZEplbWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750787394; c=relaxed/simple;
	bh=LbFn86fDKRvEWUOSsV+sNwI5ZTcseSyOVXAHhoAN4zg=;
	h=To:Subject:From:Message-Id:Date; b=PvBMEGnj+5ozWjwy8j+aBO3FVHYlrBpho46I8J8Z8xlsOTmgDMa4wHcvTabLGDVWbx8GhrMLElXH2pt3zm7KNS3SBihS3BzF1FPVR534pWvlWeU+zSvWHia4yel5f9F2CHR8uOOC2g78kRIcCHGz3KjdjnEEcgnyGLRwbMVWZhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKEH5i7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKEH5i7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F56BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750787393;
	bh=LbFn86fDKRvEWUOSsV+sNwI5ZTcseSyOVXAHhoAN4zg=;
	h=To:Subject:From:Date:From;
	b=oKEH5i7PoP4//h7/GhTrMgUZM6VSDU591+JJOqre+NdjJnzjKutlfFKlVa36yeQJ8
	 wiSz0VPJ3xxb5jjpezp+KnDXuY4qeQ8Smkgjjv0GGbmiyigOYh5lB28r6kNIrvK2RJ
	 cOX0FYJKcgfj/WiKSqBy+P6+FZHn0Owv+ieF92taVBoD6599G3Jg80sB1+BJDzHbVy
	 J76sQixHJFo/nUVFQ+VAzj78t7LEnVEPHyLvqY4NrvDMIpieMbpdpRMFBi1lrdWIZm
	 F0qlaWpKW0M5PaDP1xhiSACxonxbr9dlETrZE3q4cApV3ghMqQ92bOgbFShFoXPQ2H
	 UTNaZTP1SgC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ABC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078739358.25292.1930853244653061195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d22d8804fa2618cbd9b0f025444115b963af46209c75647b043e80ebf239004
Date: Tue, 24 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750787393
