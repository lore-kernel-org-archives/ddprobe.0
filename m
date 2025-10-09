Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246FE271457
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760041794; cv=none; b=uVKb+KFTtc+kOa26jo4yrTru3WhNmpIFYrsVlI73YN8XSrPhLMutqnUJuxNHNscJo9l/XgSs6h4erlNrPxVUnAVH9b9gdl0xnRvnwGMb8P02fRjDX3lUzLVyeWDrVwHW0LUl6UAs5rCQBtxu/VPSnwLLVVX1vyi9FyPweaL9ixQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760041794; c=relaxed/simple;
	bh=l647LVPc1KuVOtxgFjIpzQ7noQ7rot4cbRgwvEC5sJU=;
	h=To:Subject:From:Message-Id:Date; b=dQDNIYWPvNNr0nQ1jxLLyGYFzI0FcUu8RvWT6ypT/t43VXhyw8kpiilzrw6IG+5Jao5NzSow9q/aX5ixMjdT+6R5RPm1uaLySdAOlwcbuGwL73Xx8ABmGOCQIkIc/3zLihxM9E8M2d6PZCq3TdM9hPxj1OSNy/pDAenSWOdxcjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6P3kpln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6P3kpln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E81C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041793;
	bh=l647LVPc1KuVOtxgFjIpzQ7noQ7rot4cbRgwvEC5sJU=;
	h=To:Subject:From:Date:From;
	b=L6P3kplnn1OhveYZYeAFViZY/rDv0JHfHXsIwDUgwOveYXbAdf4J/oAqS3qCudBA5
	 BjfqfHHP9bpdW+vT5ryMbtGQjqopQ+D06OW8vi8t+QXUhuCrW7i/NEfezOGJiCwdTD
	 BF86uk54L/nVrTVajtev1tx+XMkZ4FH9Q0Li3KtntUrQzmCNGlDIB1neh87mcJrWNX
	 oy1E7QliKdzGvDsC9MoJHXr9qeZV5MnYviVuaYpL8Rie76naCeLqG5PcU23Tc1bSR3
	 I4xKuFtEiWmI0bd3BT7uYyE2t+VAiFu4zJF4EuJASpqkqYKZ6C8RdPzmT9D8i+10Mg
	 BLzWO765uQ3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C98CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004179358.32006.7031449751208960264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddc568e7fd1d7e57bacb5eae38fe48a87ae7fc9040c5eef0b93ef862a6b2051
Date: Thu, 09 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760041793
