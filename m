Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F11D24E4A8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777000054; cv=none; b=a9CMbOrCflGzq7k6Y/QBh+wqbJ3v0BmBf19fWfv0HimXwFXVP2/gpzl/A+qkKVsw9gLXh6YvgWCss4ZLcyFn/fYYOwcdSmCUpCb+zs+MKMOu1jSrAHQNBa6FVJyvAZ81D7xSayu2FimrK1gM1cNQ3sqhYc6X1a6ykHJs+6oGV6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777000054; c=relaxed/simple;
	bh=J1jZAgk1LFsB9U1QKse2DdZne/BcU9LG+i2vJ0LK73g=;
	h=To:Subject:From:Message-Id:Date; b=SbKg7KlrnrQTCIh42cNjQvCBzNvR08lrur6wFjrOp9SUIDYcCSkopJmkoXk6tHLZy41z5hWvymdRn1Ztr0yXstzw7lJwdWtq4SAHUI73Nnl8xptb2m24YLZbKJlGPSP+/X6qsvH3NeWBX0+N9CJ8j1REwVQl9ly3kLB8wJ6DmJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5d6NqPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5d6NqPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9ADC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777000053;
	bh=J1jZAgk1LFsB9U1QKse2DdZne/BcU9LG+i2vJ0LK73g=;
	h=To:Subject:From:Date:From;
	b=T5d6NqPuVLkCfdZJzFh3qg6vWMgzyWPbZT2lUT81hlSyWSBKaER6HVMC0GE3B/Ojm
	 f9e5vYyvor0q43s+EcXROkHohPF5fg76y6aqilhHJOrvtNUihva6n36bDmxwdwERz7
	 3F6z6iStMWfsABjOjCzz+dEsHGYvoJFN+Gr3pdWDgE0HDeuV1xHSW1QxbPaKm+DRrr
	 CNJJUQ9drspcVjhyn9DBVUTycUeS3WxUq/k5xu8RxZfI8itiSx4rJxQ66yLpRdhnDe
	 BkZg86yqiukrSgGA+OpcVE+Ygsc1OmZZeER3SsdfXG40HqKtAfe1Qsrczzwvj0mhW5
	 ji1kTBHo3b35Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91F1F34C45
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700005368.7703.11498122984564083658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42606b612b6ecf13e0bfc600faef9a60e72ad63da4fcd0119dafaf53887bc5e0
Date: Fri, 24 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777000053
