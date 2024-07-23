Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4844313BC18
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721756154; cv=none; b=ty6/ILdvQPxmn5UAz9ipl/W9pSpQ/LoH9vkrfI+y6LCbSEurqBX/YV/0KMjwzX9MP5EZ5PSkEFvhbPy7jdZazU7IBbdX9NZ5XFYOoLYPdzAKcMHz8y7/Gs6seJFrWrMuqiNe+XgQn/Ths5vu0nnQh/zabjOr3koMyvzJzxQLWVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721756154; c=relaxed/simple;
	bh=quM2hATOmhMdQcW17EIyCzZcF1sHfHd3e2LQQIoJWV0=;
	h=To:Subject:From:Message-Id:Date; b=VGqrvtpDg7mR3M9xmfEPLwUj9JZ7VUPS3ZLD/58nguLao2ob4RGXGKWE4K/Xjdi0zdee3iCTrPnCwLsUBo8kZQEbUYaGeAU+LQTrINBhRUyzSLIdt5VwgDJttdoTAnJXAaW/1750L9c2mokvE4652uZIGwMSJThRIZv7YMCZgxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH8VxXLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH8VxXLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8EDC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721756153;
	bh=quM2hATOmhMdQcW17EIyCzZcF1sHfHd3e2LQQIoJWV0=;
	h=To:Subject:From:Date:From;
	b=NH8VxXLt0qcDNr/NHmFYVWnW2eV8qOBIDTebO87JTlacp5ZCl5M5u756fHl8TVxJt
	 XfRf7gpkP3TXL58vihchdIS48SsbS8mwL52eY24Qy3AtNBv8Ir2iNXflY5Aho79v8D
	 v3nFRfyvIbXtyRo9CVq54oLNJpAp/IS1N0Bv7xQu9vSsNurctaVgnm9OlXRwR4c4at
	 84KEz2ExZugp3wLJuD8ydxAIJokdR13/viBJC8Uyw9t2pGumaN2wmzLJr4rTgi3Y2p
	 4SkeOHzJ4XSokkt17R0UrzQ71jYy4ywbVXSN0WggPkufMRjlg1+iyR2Q2dPwwQU2TE
	 miN9ZH1XjS/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C57DC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175615362.22685.375623019112441481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfd7d9cd1b3e4e2a5530e7d25801852384881f985cb9030bd2d740fb434053f
Date: Tue, 23 Jul 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721756153
