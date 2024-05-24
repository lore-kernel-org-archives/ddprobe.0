Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F2C328DB
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716536603; cv=none; b=C/3hvji7GlpmFk4YqlzZnLKoARi7ymBJOZJmrUTHMxi1EE3L0tnjfByhlTnghTk2uSTZp/qsGIyfn2N+/IFHNDEBzgH4+VbJPPs+OwVoMRdUVnLBfSjYlJXPgzqfslYfaudzpTcnbdX/vj3tdAv7ebnKIIDypDZShEAa/r3pGV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716536603; c=relaxed/simple;
	bh=BZL2LDPGJvupF/6t9znd7Gxg3/j+AkjE+e1FNi6zZsU=;
	h=To:Subject:From:Message-Id:Date; b=Pk84E+0ZeReEgEzZB8gcrWn6+t0yAEpt3YcTxUH4vK5j8Dlyb7iRmf/QilFC/GL1Kfu0T766ZDOmB7lym0ZMXv8u4/0D5zq3VuCWSxKvKeXqHfx7qnna6BbjeFpwa36P1+fZv04pkJ40ouIKU3k92MZimfNTDOrxRnR6zpuSOO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FixwxY1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FixwxY1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB96AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716536602;
	bh=BZL2LDPGJvupF/6t9znd7Gxg3/j+AkjE+e1FNi6zZsU=;
	h=To:Subject:From:Date:From;
	b=FixwxY1JSGi73mgOfr2KQZYKXuvoeeoXRRFhv3pXq9Jtu3nWYJRlIdauWDTwNBkQT
	 PyiqV1f+J/WfLjWCAC3u7I920dy2jkJVk3wUk3q4eCaCFKaB57OF5OdVc9+O3E1hic
	 kjYVe6uS7OXi8ILUFzXpEmQPDUie6vijWJBqDh7LIhiZHj4p1a3fkdsjTjexVFUATS
	 f5JsmdR/fpBJmL1KToCw+Vs1dQHmHn8pxVC4XG1Gx6F8MfMaNmhzo5FH3wSQ3APLQL
	 9+xxTaveYaQ5Sp1JegHe59OGCU4nbBKA+itRWQOO70KpWWwqM5gJeIvR7mDrcxR8GZ
	 p9g277S5xLSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60E7C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653660280.13662.4613687926498855642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39762b16760a51e2d830905d240a9537ae4e6750a0b1401bae127ee7f266ca07
Date: Fri, 24 May 2024 07:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716536602
