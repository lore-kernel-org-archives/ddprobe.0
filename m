Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BE1AA1DA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750676394; cv=none; b=cC4bCGwnsJCp07Tsq2THIJAXXX5913YBbHVXKJzcwL/O8aM+hBYjD5BHWvevvQpTFPhn7V2SQEM3HOV1kTBTkuiDbx18wj7wwQc2Rxt0+Y+URxH3H8IFzILYDXMSV2JYjI1toTQ0YwTtjlDvotTrlmKeyG5xZxEeqJKQ6+d0Dsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750676394; c=relaxed/simple;
	bh=gfR9L2PVfJJOZ5BBVLtvSSNETYrbsh/9hPi4wu6lDB8=;
	h=To:Subject:From:Message-Id:Date; b=hxAcw3/LAz8oLkrl+FMu8egSnwIlH1wSQdV25adpy97agXYz1eAHreGLkXksrV/941VCotFSIiy/ZwrMC3ZiJH5En44MGeakk+7jnXg5ImYGm7V1WJvSylvq1m0/jtpSGJStIbPr4hiCWVFlv2c7P3wbk6mTAM3armKHL4ojwZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgxKN+zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgxKN+zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E38C4CEF2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750676393;
	bh=gfR9L2PVfJJOZ5BBVLtvSSNETYrbsh/9hPi4wu6lDB8=;
	h=To:Subject:From:Date:From;
	b=BgxKN+zPMOTf8ErWmik9Wq+Op+2SjjpVDPaTvMe2QfOU5//DMcyzYpzH3QpLc160K
	 ih8QGu4xNrDZfqTtgCkpyuZPekvsrkaH1frdEctRPaVXPOP4n+VUxF5KQbZCPysf3J
	 NBcXGJbHAFhUbeRlHjD0+Z1n8MypPxagQ+jfGc2qjAA8BHJHInN7f8EJcg61wSQY7b
	 7Ex4W/t108x4IyPu+oJja8KEQGPSqNqPvf1UI7DwZC3lW1buZjevyUAYqQfpMlDYyz
	 hv600ZtsWqcO4Xgctz7+6In9rKaYH3JayCOcK8tbhW2wzo9ajfzTery5QAQsAoBKox
	 ApNd9F/qV/KQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC5C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067639358.14268.17116953646560972925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e55cf566357d3b5272bcf677ba3f7da62f6e85eff038cdd3f2228603fff16c
Date: Mon, 23 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750676393
