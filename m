Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8DB4D8A3
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733062554; cv=none; b=gg3OZF7evWTJBZ4YGLu0x0xjY79eOir8UuQEIDzKCu14z/Wwxz4Yq9aGvSE21BxEgT99cyyzkSbanBo0YRdCTJKVgOYbzvC0a4A0z9cF26aJjM7ji9e6JLe6P/+UKljMLp8BiB/fUcC2GP72DcPCUvhSxLO7GxrUl7eUqGJY+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733062554; c=relaxed/simple;
	bh=Fmc2bd/lqQyfqsVbBxkgzr7B60X2Z/mwh6ocI7k1vqY=;
	h=To:Subject:From:Message-Id:Date; b=YTtTeskstKTxCSox4cHOw8F/og04qRlGQwkFIi9vQIf4QCHgsHgMHmLKnlzsZl1jpsrmdxe2SJPoDjsadk9IQNYKkzv38Go4I8RbjGOBjo54LvsZVYv0OHdUkLlI3cC3H0kfU/LjfBMO1C2MLjAMKtSRli4iZZR9vwbhwLpIPzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIwU3KAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIwU3KAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC338C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733062553;
	bh=Fmc2bd/lqQyfqsVbBxkgzr7B60X2Z/mwh6ocI7k1vqY=;
	h=To:Subject:From:Date:From;
	b=jIwU3KAAnEytdXFENqd9lARHI34S3N4ZPz0Gj3d/6j1MXDYxRy9NkynhNYCvH13EE
	 c8X1pLcBdtgO2tl1UmkhOgAIpby/RDbXgNmpTgcC44yx4J0ZyS5hst5zYBHeZ1qLEa
	 XHokKlJJT4OKli+dzUQyuY/tWJXGr4kGlYshg5nAu0Ss1UXZ41j18P56CACr8GOJHc
	 9heAV4VPmD1o26YHld+e0X833ZuaBo8bLCAH4k7X+jFdwwsUCT2+E+xHt8BiuHYCX9
	 50qeN1t7C5b/dtOS24MGoTmLjcdG1OFp0UX11qgnHWZOtaSnFznY9rfvKMrP8jUH+J
	 27o2/NINgXZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E215D49771
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306255362.17045.16971903918254311918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da59144db01c9ca4ae50d2ed83a9ecec439400dd14ca218934d55f2500567285
Date: Sun, 01 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733062553
