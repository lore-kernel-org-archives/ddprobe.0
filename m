Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19725771
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742132994; cv=none; b=t2mEMrGRBGEWWQFRMTsGIrpsg9i5my0UH7l0ax9B6XLTSD3UMBcYA+aTjqKTTrlUM52vZ36KSy9JQtWTJ2Gpy1qn+h3Unw1mfoY0/IZ+f4HWpwJgElolAOXqrYcUbwCchXFbH2cuWVnusSvBYDWx9Zb2oACTp4R+1cosDzA6s6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742132994; c=relaxed/simple;
	bh=Zdpas5A0buMAmJAbME4xHZZ84dLvB2oudYyoWd4A8aw=;
	h=To:Subject:From:Message-Id:Date; b=MinqQhzfmGrLSjcn/1dqLLGcffc7691icm2Eyfe7wPvgjQEqkEk2/s4zL2qMMrIvSH61c5eC+AYNMSDcTqfXR13xCtv2IfHwOJaTqfeDyQLBLXMmNN3MXZsv4D3LWocfqJZGjGg/MgZ9Z0cmNP540p2y2y9CMRzJbUjHRGl2eLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7S/pmAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7S/pmAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26CCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742132993;
	bh=Zdpas5A0buMAmJAbME4xHZZ84dLvB2oudYyoWd4A8aw=;
	h=To:Subject:From:Date:From;
	b=M7S/pmAG8Si3apdqr2zx/HuvwysWFhd/72Hn98lVKmqQOPewzGe9AnCfy/gFEsijL
	 HKNKCWUpEkbHJ+mgnu3q3ajqHJcSS69Kcs2ZO/sxLD4BHophYQhkgJzpY5hl8SvJGx
	 o3Mto8NWwpNAXKLlxTvTTrhpjWyT4+Bd8XDEl9I0qkYIrer+8qUm0CdxRwC/xF7MFZ
	 jfdnnlCBa1bTqdAHqWeYKkI6ds7h8ZUgQ4yFAc80bSdC57Nk+RBR22+WYNTzLRbGG1
	 xwnR9V5SczOg9XnjqVnbcVQiqkv/YKJJNI6FnoCsRQ3dX3MU8aNxs/aRTWWjYPbYiU
	 WwIoSqAJ3P4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9748AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213299360.9993.10806791783191056827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d5a6a8e3bd6e73c4bae338629f507cf5fe81b0fc1bb19ce567c97c5fcdef1d
Date: Sun, 16 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742132993
