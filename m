Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397218F5A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745830794; cv=none; b=ezSiygv+vKCuq/Bdgp8F3grkSEN63W38LEocfElzwH+m0ehVKznev5mF99JCxAbMPeKdr8TI/VB37eV53KGTc9BRre8sja+xuIJ4KVBeoFVzijz3eSg+hOgULe+Et4wvBVghfNYzEVyhIO1OEZyzR6dawyzwTMYvC9zt33bNckE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745830794; c=relaxed/simple;
	bh=X+gQnDPXkLURf9sRSPyNAFb/7NQGOyoGYKsFSCYgwAQ=;
	h=To:Subject:From:Message-Id:Date; b=Z6sgGs/09g4fTwBHenjDIuzUlWptGVczP0JM/4QRpRv+vyqjEgfMuiGEiUrZPgILQXG4w0YWMo39mIJCcE8kLFmFP1uNiQdZlD22WxMw+XxdimOiRc4RT3TaMpuB+QNuNkhrcUgIn8cjJqXlSHtzCH0OkpTimFqmZEiZSg0T640=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W71OOAId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W71OOAId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1079C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745830793;
	bh=X+gQnDPXkLURf9sRSPyNAFb/7NQGOyoGYKsFSCYgwAQ=;
	h=To:Subject:From:Date:From;
	b=W71OOAIdzJtshmA9HZwwRryWHSTPJl5H8V7gpgU/C8J7eryWRbW3wKO2g+q0aLB/3
	 spmuYq9mh6m7pzYk8fNKu0DksYep0LoMhy0/NiOYYT8zrqQAju4iQ9I+7bD7U5pJpt
	 w3SCKrqDOgjixN9vcY6aZw6D7rcxDY0Cy/5nwChtuzoOXHzGGL/AgR7EvhBVTKgSJa
	 BCczUyMEDjAIAqXTe2xFGQ6tcGqaQbYo4qurBQrg7aoJDkFdRTuIcvWHnDvTDeI/2e
	 UICsE3BdsxLymTaLUaD7p2x0g3myy8/U1VS4aLokJrgV8njUlvAfXWS3SbjISNfryI
	 g9T3DGlOXjXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F514C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583079357.4337.11166331098914446833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31ff7888f427e628ed7a2e28fa0fde8a7d9b4bcabfeaa2248ff44f0895f4896
Date: Mon, 28 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745830793
