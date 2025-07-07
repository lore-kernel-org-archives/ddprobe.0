Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399328640A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751873394; cv=none; b=niPCu7aWoghZUVbCN7jO/uvOBgjLHMmfQ41g87ji++EwGr4hU7iGjFN8XLHpQJG2JvpKLePEU89ZBpbXNKOhVcYtfjS5fT7YAq4yvXBL4sQ9JfzDIsni9COR8ZGaoCzhM+DRV6cgm+c1oPwW7xLZWDSMn1DSlpIr0f9wAB5XdNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751873394; c=relaxed/simple;
	bh=hvELRw1kxuzjtEDZqXUPSZmDC2HBUf1VOfsBIB9Dj6E=;
	h=To:Subject:From:Message-Id:Date; b=BQ8Pwbg9+UXOLeT5e203xspzfAFCyS30JOI4gxHTfe6zTE67p6AH8dJ7h+XcKHucuM1CAVltvPCak9b9Xucgx7MuTkRgxX2o6gIrDJFIFCKQ8FxPNqpaF3rH5kY6NWnVCNjYIg+uMdkK+7CA8mbnjxcjJWmKtz5X6kXPp2WCdOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqYOoS96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqYOoS96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751873393;
	bh=hvELRw1kxuzjtEDZqXUPSZmDC2HBUf1VOfsBIB9Dj6E=;
	h=To:Subject:From:Date:From;
	b=eqYOoS96mPrnRvEbG5XAan7eWPSeov8AJCFMiGIVXe14yUPdW8aqFW6D2nkq3FzFQ
	 B0fKn5h1MmrH3bc58cqUU+n32fJTebPyjWaFoZxYFTtqyWeKnEY0FVVPDoxfjsR4xE
	 KKlL0wbKUq4xXkqbgc5X2Rlj0Tjqs86ter158iZMFpsuxxRK/gtdtdwQyH/RFE0Ff4
	 paKX+S6a/TLVEVmBvNjObfGRw4SS5v+Xx4oqBuCzVdWm1bIOGruxj5B/pl8+Nykc3u
	 dRKZIP5atRYvSQ2irrq/dV5RoR7nQ0gatzeMmSYheFkMivmR/9OzRWReiJX9upYwJ1
	 w7DXIcviYKxrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F589C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187339357.32418.9638894904521780747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813400ffa3790a4aa7d5420b08511e638618ef0d245b81b2e9effe1665e6d3c0
Date: Mon, 07 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751873393
