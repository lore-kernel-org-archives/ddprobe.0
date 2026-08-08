Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E433812E1
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786215634; cv=none; b=CStLHahYIfQURSJiWIfe4nzlQ7rkMliQpiV3/FY1qkAhhT7c+m1ZbIhSZbiZq2iiGPx3FaI6wOractugFTTcRSDxCLzpOE08gg94bfmCZ1TwF1yPUA5DVzwpHlCRWm65sH/h5Wvx6eECAi/GC91pTHE4EcYMyWHj0zl9jbkldKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786215634; c=relaxed/simple;
	bh=SaV8RR6T5ovxRAGlWHejVS4VGtfIxKr9oHsbUAl4Ubw=;
	h=To:Subject:From:Message-Id:Date; b=bN0RyovQFmHKVvgYpi662IKza57YlM4VI5a6mrw9ERMCKfxa8AeDRyBndSqP1U5JUG7vsyo+lgJeftS+/VcaBhoTGrt7NDAgN6ODCLsrpEOz3dvM0CryQhPN8MZe0n96AhTL3mcx6AtgEoE/qiTALku/OF/TJgy4WxQBWeYBXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXg5GCqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXg5GCqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61CCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786215633;
	bh=SaV8RR6T5ovxRAGlWHejVS4VGtfIxKr9oHsbUAl4Ubw=;
	h=To:Subject:From:Date:From;
	b=JXg5GCqoZtJmAl1zRDNXII2iY6qkB25/aW2jFgubPGwGSpl8k6TTePoujUkyAegIx
	 8wD51vDMRcXhpBjVoFqqnV6CwLfy8l2NE+ht4oVsyjyx0J3xOWJq6/2tS0gzHYZPZQ
	 /avLEXN06mj2fFg7icbXZInBtG3M3BfqY0BjQPz1DIiXj/w+wEGLbfZ1cWhQjDHKAy
	 c7jrwrDS0fpsBrXaKMoC1y9XsB6F0GpBQU9+1oAdb6YfJt9Z4sy2AE5sWn8Ma4kMuD
	 zpSeJVlTbEC5dw6aqSNru/tNqi/Mlf4Rs593i0X0oafkvtiKIzAfmdGSCHX923CcTI
	 N2y4oS85VeOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B322AC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621563369.10122.7318478826941015642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac44d43d61a67997b0bfeb3d248c27c89a737b3c12fa54dd831eeffaa2120ed8
Date: Sat, 08 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786215633
