Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256AB3C463
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753084794; cv=none; b=cq7mFbobONUNQ3QLgDAvm/DVkfgo8iRe8o90tCvGxPJ99rU5TvsdiWavGnDxqSfcZHUV16yJIo9S0bgziSuLhjF5rCvzw6m66NCMzeGm/G7wOIgooDsKPfO0L4aRqfWjq2Px73w6e75Ios5inlx5I8kEuWSTpyUvCOtRmSqeI8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753084794; c=relaxed/simple;
	bh=zq9hHzSO1/sG6onuOr0AH387rjte5Y9ggq0HNQfmAK0=;
	h=To:Subject:From:Message-Id:Date; b=El68VxAA+y86Z1bVdwigv/TESPRRA3bZeChZW1ZkO6W67qirJ5sTxLEyCVO04cx+96uVjUN65SKzyuiNadfC5ucirpopmY7+NpmqAhnIlYM3XvIkKVqs4P2pQx0QgyBh3MbLjP5xVZqLpDwUg8lX2d7YYLIzoTW9q7IA/epAhes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO6HzcCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO6HzcCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA51C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753084793;
	bh=zq9hHzSO1/sG6onuOr0AH387rjte5Y9ggq0HNQfmAK0=;
	h=To:Subject:From:Date:From;
	b=VO6HzcCEePrlBZgu5tLhmgV1RwByGJ5RYvz39SQZ4d7pW/fTcdkuGYs05YKtiL5Nc
	 voC4nKactWW3p+iIyFO4pJSCsW1bW2FshyuKtBknfAd6B3tRkWnZ8TcATMA/OtwNiJ
	 LWu8FAajsdEsvN5aDBsB36UMbLTIEaS56OpRqeFAND871/gEZEbeHBqBv9/Ez/AIRr
	 Rb1JEVvvRgs+VVSAJkIUKGLOZN5W7WSg69vVMAaGmSclOdPP5vpcmTs70E0kSeO8+c
	 GSxo8eBe9PbjxRyBOSzd7j/d33FTUGCmdo3fKeJe2n2O8XI7inAqAbjgu8SKVKlMPt
	 kyzgWOub7ZllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF6C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308479357.25499.4211395805315955693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172a7aa0ec40334586e3c2b0fa90810691b00371a0db464093a01f364b8ec1ee
Date: Mon, 21 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753084793
