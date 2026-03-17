Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0036374E55
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773789294; cv=none; b=AA86XUGT4Jom+GDqUH21tzMrMPpMz9tDzTl5qvTSk7w6+zkbfsNJODspRFzQ2SQNl2a/8io+JKAusT9XXDC9QT11s0VXT3fo1KAqSEuSVqHuCRmFQZm4Ka/KQntOKmtL2dhy+3kE/wurh8Oo7YcJ4nQogAAr/5R5MP0KphbqY4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773789294; c=relaxed/simple;
	bh=xiaSuvNj1bIL2SLy+QE9i1/BYXfCxQnKNEbKZJQ/MAg=;
	h=To:Subject:From:Message-Id:Date; b=lCwo66xdf3LglklGCXGUDWLq4H+edoU2r4m9/BEjOpydjyTtccK840G6wapyB9ZSUm68cs4B2NzTxh6JosEYMUouXhB2ynqtVp3fqEtiupGIUrreQkD1Ib7+vAwYxLfExn1RGVVeBHUR5c7vL+GwwNx2Zi6BfapSmwhJ5FEo7sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsvuLvn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsvuLvn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F22C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773789293;
	bh=xiaSuvNj1bIL2SLy+QE9i1/BYXfCxQnKNEbKZJQ/MAg=;
	h=To:Subject:From:Date:From;
	b=gsvuLvn24bopwY+DKUr02TlGzAleuCP/YTmqNKbVxWpmQQeD9hrEKihueV/4QAy5U
	 4OdY17KvGwczi6L9DThdEGQIejw8EI06d1ETcjaLWo5g0tyXXyxT2cebb7xo9TQo1T
	 ZCw6knfsnqF3TEIam+p0GzTK0CK9pTh5X1IfDqXfk6oDKPtzLiEs+5OSFIyhUNfYPX
	 nZtbyKYF9sfwFFht/7T/20tOdu88gvEZ/cjEpwYPhFav2B+jD34JABhWuJribthofZ
	 mV7mGebAILxSXOYk/QAdRZ9XWavIRwADcQoa9+0xmOab/w+qNGjbwadF4C7Hqr0q1y
	 X4yaLE6GFdQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A27FF6E9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378929357.6786.7925445313203348661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8817b989927a11e8c7a0496dbff6152e0ca10a0e0875a357f32867ad26016725
Date: Tue, 17 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773789293
