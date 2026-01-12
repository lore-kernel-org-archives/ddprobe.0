Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE42F34DCE0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215234; cv=none; b=gTDRbFRUsEVIX56R+ucHi5yFYDtuvJ88hzeE6ew4aL+yWzZ5NYdYtlvDBPEu/lveqS2IrhteWKUqk3DCAGACsLml61CZLCjS7xvW16L6Ackq71sexXdv5ICen3bpTa+0wh1565O6gIc5iRNIZ7fACXlPa2wQhnQW4BOM4SNFZ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215234; c=relaxed/simple;
	bh=08IMP/fAR5gScgNjnH4/eLiu2TF3bxK9mrOlLGGPT0s=;
	h=To:Subject:From:Message-Id:Date; b=MddGtXzFEoODgGeWsXk/bodE7XwbSID4l2cT+nmGAiOizRS9xbOa8xTpsZjruIIU6QAIHp8zeRPWBVz3XH+y3xpE7/xMou96wIfFI0Qg0wE+rrfDadzIv6tcEvKuteons/QDNaSM1ljENWvzs5GCevxVQL+LUZMI9cah6tHFo2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gynJePhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gynJePhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91ABC19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768215233;
	bh=08IMP/fAR5gScgNjnH4/eLiu2TF3bxK9mrOlLGGPT0s=;
	h=To:Subject:From:Date:From;
	b=gynJePhrkChllFNFpiVGotEoH/63PGJoX3eIefoKJXZ68Uyt9ZwRRSWnuk6DshfBw
	 7NelZYp8iq7r3mmKIlt+1a+KrWYIeislMPokJTQLDcOhxgHYTDM2psff/mIIDWURtj
	 9CpZLSiNC1MbYg6nsrkXYywA/q4qH2/nZ9ljIzPf9+SRHwfBmBGWZzI0K8/86Gml8P
	 qcjL08RAB4Q53guLoLtpRe5m9V4PHi9wgOCRkNVnVcmP4SMEnIFnBGjAYgk2+NCDJ+
	 IOtMn2grAUaRylLaCgKr0pyUUWbe0OyGvbjqHpb187GrQUxmwc+rs6rWQ7/w+tnunS
	 7GpOhci1x0Qmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984C6C9EC6D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821523358.30416.11087027520106453952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5108fe5272c09039473eed102f08f84210dce9c701f578378521eaea4ffee6d2
Date: Mon, 12 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768215233
