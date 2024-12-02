Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402324204D
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733108754; cv=none; b=sy9h2Q6A2SdMlDwFSwNEfzZHOFVODvhzS43SGg6/D6s0qN9qLXAjs28BTIvR5V1g6eqTQmKEo+H8FDBcvPmNFp2ytruPFY+xniguPEJ5TUnTBQ2YHtYhLAkWeuRa+anRhionvcX6X4BynvPV4dosxmMxt1voz6CEYhAV/VneCZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733108754; c=relaxed/simple;
	bh=Q8ZNIV9ojrUtLKoedXNPkihPfzz7V15r2D03NJUCbfA=;
	h=To:Subject:From:Message-Id:Date; b=PjSYcDHX+YiA94PDQkTcv+Z96vx3WwYHOhCCjZ4j3ZjTFXpgMd8M8frMFzsRjIQPhyoejtZgpgixTpoqLiJm7r5mJjMGSQkBvNIfD+uTqJdLVpa67Af3uybrdtgYiJtGK7AYKeYo3IlBWvVnoNmB8jmK+K+0IqNT+MShYBe8adk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEgign/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEgign/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02B0C4CEDC
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733108753;
	bh=Q8ZNIV9ojrUtLKoedXNPkihPfzz7V15r2D03NJUCbfA=;
	h=To:Subject:From:Date:From;
	b=PEgign/iM9jtkKmRu7WBJ1fiJAQRQ4c7Us33E1n4XtainNXhXUJ0Kav9zsGQFBubb
	 BpRy8wE0LspCNYHW8xB24tb9ymUGLoKYuJjHB02ZzTHWF7m0ABjnUHrbSzSfq6wnjz
	 RJvyWu7ItmuB8hdMTaAmRBj5bGI9NSa5gHiQfsWCY1XVA5xHtDLaUmM+rpq7w1eb94
	 eCYvKzNUouPkzM8u3TASyWZBNjzMk6l7m9bGW1xgFsvfLLP123bjOHDtcVLC9wxiIv
	 GbpGUw4GzUG0Cu9WPAgQAKszpeCqzSKpiM56dzW3o59tEzJXWjpI7WhApUNUNTV6gV
	 3c0IAJgRhKiVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF3ED49795
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310875360.5209.8365037215203105264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020311513308b7e5e18a82f050dc6a7e752748dd9327c09fa8cde32fc8430b82
Date: Mon, 02 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733108753
