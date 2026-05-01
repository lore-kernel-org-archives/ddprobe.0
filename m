Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB6D19DF55
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777620454; cv=none; b=kznnKNFB4CDCb98Hjv6NDxkL2zhiPChyIeImBSLDS15itfuKTsOgNNaD53gW/yWn7zVJI+D9sSIYrG3ZV3RErL+oHmp2ZSVh8IevAqnYvTJLQYXaGxJJzbPFQG0wDZO1eX9fU4ybaTeZR5lX8fDcE0IiQWRAYJp3Z98eHbX7wKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777620454; c=relaxed/simple;
	bh=a7ywXlZSxfwN6zV0kTueLoMrSWJAx7T4fzbSZuamTEM=;
	h=To:Subject:From:Message-Id:Date; b=nnWJlsedkfIb07QVsvIAYGWAXxO761ymUlposPzh3Sqc4t4OctH6wTt5tlPood7hqr1BSwcBBAD1GpK7SnXYyQigKID/cubZpM/p6kAjezluzeZ2dHEB1gCgvrGhaOFYmneD7p2gKCkub6ksLjORqNCoYUYXCmbaad27vc44Mt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5R/p4Zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5R/p4Zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A2AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777620453;
	bh=a7ywXlZSxfwN6zV0kTueLoMrSWJAx7T4fzbSZuamTEM=;
	h=To:Subject:From:Date:From;
	b=n5R/p4ZpivSM5YJ9ahrf/qmq17GOj+AxXVJ6XEh+9UKTlEj5U6xtp9g6UX/7mCu+c
	 PrvLWqa5dyCimpiXRUrF1fkNllHKVRBjVBEZv4hwjRGs1zD1jszgQtCRqwnwVxGpcZ
	 PdTKnwF5zOJSVb1CRFurd5XHxOyTqpymjT5cJgWzHiq122o87PvWlA29gbEfTgN9lW
	 2p5ly/RELs1NGbK38oyF+nTdrFbRQ5rTGmMaZU+TXmj9O3Dg+NvWvfYjZm3UWUv9PC
	 Pf9rsyZ4niGzVIDr9kl8tcZlh71PNoAX5bYLF8j80b4liu3xpwljQQcBzlZCEoShyG
	 ZIpnonofuGwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE77FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762045368.22247.1426013924143174401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b68f77d7350f8ca9f965b860f333dedd3148a93a03f94060016991379a85256
Date: Fri, 01 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777620453
