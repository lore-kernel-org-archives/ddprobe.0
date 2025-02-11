Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111481E3DF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739259775; cv=none; b=GoJnBIsw+jhJHDrNq21QLj3MbMs3v7ouCqWVNOt/4hEJF+YeV6Kbf6wG//yGtTNStSID0MWfwfc0fLnyTVEaNk+JcWefs0ags8OujhnM4VwuX+l5D/WJykGW/ATpZ+b4XxyHVZrGN2kUcxFNVDE6SQM6rGZ7G12Ht5eiOxLp87k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739259775; c=relaxed/simple;
	bh=gR0FPDm8boOA7VmHtmkiA0deN9yh8Utgpa356XW8WsE=;
	h=To:Subject:From:Message-Id:Date; b=V2QEybWVxQJIkdlLmlltVlg26nH58CRHUvekvGh/ItFSxRKNybGLEZbhNNGS69mu0486E0aAIW8sCnmaZep9i0ID1HhI2+6tO99PVLfPSE50LwofrqPAse0g6AuabRnf7u2y+QPymfxeS/w/e4E5lQ7S63Xd6koPNXD6tAxjzXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XI+UiQuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XI+UiQuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7999DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739259774;
	bh=gR0FPDm8boOA7VmHtmkiA0deN9yh8Utgpa356XW8WsE=;
	h=To:Subject:From:Date:From;
	b=XI+UiQufrGowFgYfgp1oC/LHBuQhLWygHZEOqkzUqTjwC8DlrEqhvqtW4A1IJjtbM
	 rd82lffwaXImgP6ASTf7AaSIsDv10RF0F95UYTl6QeYgppLBdRQIVjGpnLi5gePZKd
	 KjIGN9Dx0xkNtmaQlV9oxrqER3+nYH0y5lmLMsxAd6wk4LfGIK4UrpeQIbEokwYMFU
	 vK5Dmyp50wRYrJ/1og+r2mhDyNOJy+no+pQW9b/hbR7i141aJIz4/3cEhP0Q3KA32k
	 /+JwgVqeOP2WrcO+hojiflcFys6lsv1fdgCPqCQKgDcZiOErfam88JQyjPdD5lKTlw
	 iZy2PpXTsmp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00169C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925977398.29446.920193085123984564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e74e557d8552c584e4403902b442625583c14f0336f13186d2e296f1802d05
Date: Tue, 11 Feb 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739259773
