Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2872416D317
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725006954; cv=none; b=cLBo1fxYkaor2EgjlWwMtJf3fdBVcGKG3aIJdmu/a+MCzbPgNLjhik4wOSAt0FwLNTVTVzVEJrSFfOKlQS1e1VecB6yOcghtxgo088R4dP3y/dE+89EUytCaJBb6beqQGtjIIzikTlQcHmCnB7J7NaidO5biVRHIL4tNvjlc1P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725006954; c=relaxed/simple;
	bh=SK60Yomh32tDUVV8aBTG84hW+ssf/E1OF+Nyb85teoA=;
	h=To:Subject:From:Message-Id:Date; b=vD3V6b4xwLX5usLJYjfHNCXn+LcnDlrGrkHwvAxF9OZoll/EbagBIIJUzqKeUgK7mAcToiKv/G+Yn0Z7teLxCiWzMEnFtldtMFDov0w7nZvbZ5A4fgM72vLG80ZUQDPnLoHUII1wYWNNKCaIGO1nLfczDJx0RDfZeMBVCJj4WEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7crRn5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7crRn5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C2C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725006953;
	bh=SK60Yomh32tDUVV8aBTG84hW+ssf/E1OF+Nyb85teoA=;
	h=To:Subject:From:Date:From;
	b=E7crRn5xcO4D8XJWtlhzrXRQLamvUwXGmdywY6igsPRn4s1MOuta8DpgN1itSz7ry
	 71qryx/9TxgaqA+lpSPcdXNuP+7Hhh5yU4juipqi8Cw5VvHr93b2HC6PCT3QMsgFvP
	 c0Se8BgOY2gzxxP6n/gPoQZZ70WQhtWSd5JJj8ElxYFhBvMtVmuHdHtSdFf6AsZMzc
	 vaDhQGcN5rOO/op9Ht7p3qWqVxdp3PjemOnHh8xS/lImSGJgA9tVdMafk+2p5gDTtG
	 6s3g9uKapT8a7kT4wgJsugkkG7SjqPSASMapR8F3p82JAzn7mNi2OYO5nH/DT8Qfia
	 ywny0Iq/wTezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724ACA0EED
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500695359.2066.7024137959194185688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12597e3d41d464f06f7115853473edb4b40c7f0065ce3b276c6596aaed54b412
Date: Fri, 30 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725006953
