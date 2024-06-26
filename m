Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E563155A25
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719386003; cv=none; b=V9aXReTxXVJyyM0D4cL0/UITkfeB95haHgIl4Iiwft4BSX8UvayTFCjmpbHgceL3JsZ1lRir7hxGAP+uzq6IMOLnbYNlE8bSwicIu5ChjeN7CWoBSbEvDeF2jsht5g2fwIz/fp2lZQbrTQ0+7bSnwK6rp5JVpu0OoYbBY/N7HvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719386003; c=relaxed/simple;
	bh=bXzM27qjOFkGacTmUfQm43XGM0hKLF1CoHIPnVxLpHY=;
	h=To:Subject:From:Message-Id:Date; b=jsyPerAkbTedJSMkcyB2xIjqn7/tL5C9epWkex8VcnkVtiMwsWx3nxo9jYpJzmDLXxCyEeOPRUZD36dwwySYhh9lMpx7h+Lfpdccuqm9ReTVU7CW6yuPrGjoAl+QCtxojAkrk4z4ZvthlIijrJzn8L1AQels9wX7mKX6Y5WgIBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yfpgzb1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yfpgzb1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C5DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719386002;
	bh=bXzM27qjOFkGacTmUfQm43XGM0hKLF1CoHIPnVxLpHY=;
	h=To:Subject:From:Date:From;
	b=Yfpgzb1k7OtYHuCZUm1qIes9xPUr1qCCpQ2wNyfWDeK3I/J8+M7KCcsmUjFwNdR+g
	 FzVA3YD3WcPAmQDS+uqofbe5flRdxzi0bf2vOmjWJBXP6YffZK3fLpz5eI/2r5NFzZ
	 qtzqFKDNlTXLNCZa2cHCsxCbLdHLHbEOx6xA8thoB3FZZi8HqQQzaBBABUG7XtkG3L
	 8Wq+eWzc/4hElOdWbxOCFVp04ceGJLzN1HKWU1degmIMG7hc5AQF7gbA3K9tyn7cym
	 SJxgKMu7NJu29avZsoAIFcrCi2hB7N0OTc+UdcBeFy3+nndoKJM7wP7h1Gb5lqiRcy
	 aHhQTUPiHN/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EC1C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938600279.6469.7419471538818314948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28275db9a1f3d6738522751fac0186544411bea313f23ba0521b21ed72983168
Date: Wed, 26 Jun 2024 07:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719386002
