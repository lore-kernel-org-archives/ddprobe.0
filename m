Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426432DCC0C
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748284195; cv=none; b=Koa3GsEimzyuAzaexU6VaQZ3Zx8335ZI26EuHinZd8Fn9JMzsezEpbKaNy1Rx49Gw+h9GlDGkzGDXYDcQ/3LJMLX+ukUKeNJqLUmX4C7cTNQ7orvzVz7x7g25o1j9RNZ/G5bGkmcvGis0fdBdJUtKqQCr4QhnD/TzP7cufuvR2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748284195; c=relaxed/simple;
	bh=Zcjlvgd0NXHoZR/uSkg10GG97W8aIu/Sm7u/xeZhuZc=;
	h=To:Subject:From:Message-Id:Date; b=JZlOqjdqpYoepdBeZcbcjmPGfbqrSkSqFNrw9DBG1QesaGdrZwYs8h7kTpRKP1P1CK1xAIKEDZxzn8jQou5jQd29Zg0by6k256ZBQn9NWiV+omPO8Ll1wFaqmVipcvAj9eJ3syXQZrTsFagsRWFCjSuYSfM/q2a6G0o9kcJnE/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYkBCMiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYkBCMiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E20C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748284193;
	bh=Zcjlvgd0NXHoZR/uSkg10GG97W8aIu/Sm7u/xeZhuZc=;
	h=To:Subject:From:Date:From;
	b=KYkBCMiRUxV73DjNQw0jbyobKqrWj+3crBKYZuUS9v48PO3gBeGYHo3d/lX2bCkXO
	 z51WQBSEoKx/9vH1EI0Sod7Zj8MkD4khfP/6pfy/I6AbN7EAvy4lYaCh0H8gCqwaIv
	 zFekbbfgIpxW42NpUydnCAkEy1HamLGOXsZ4gnCTcIqogrsDfKlnFvEqTxo5GnBDNl
	 A8Ww3K4jKrTJvaL9FJmqS4HJzXnVMrZw+poqmFXoGjE8q880Nk7MRE/3+J8Vy8MUly
	 MyLnLCvsI2kMHUQQdI5XwYft+Iwz6qNbb9pEjZT4ae0UKlWFHN6LfsptMkZYFCiOs2
	 HIzQJSy8oiO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105DC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828419357.32453.10150163669579987314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9271d4ae22cc371646a5cd82b4053f703fc11e196fdc28c8f039dcb8750d3ac3
Date: Mon, 26 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748284193
