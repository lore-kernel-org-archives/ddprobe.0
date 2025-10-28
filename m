Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF58F302150
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761647993; cv=none; b=urDARVC6xQz5TfKLS2Hqv622YjvlFf4RAqeBkIuiVinTAXCXqwMeeYJRU0zWbKWqp1IgpL4bjXrtgieNDredBtGbwLtfat8i8to3H6f/X03fh1kTB+AxJtx3Orgki7OSzA2N1GXxnDmJ7M2nbAOOVP2LVpNBm7XDRJ4Zl7puhPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761647993; c=relaxed/simple;
	bh=bMWXIvbTofCN8WcDHLELZ6cqezOcDNMItlOz8cEfnqw=;
	h=To:Subject:From:Message-Id:Date; b=lqXcOTHyKCYikG0qLe03lyVvFIFr+rF3VQGtekfmhYwQPq0bCxKcx2Yd8P0UKfpUtqXpPu2VVajkFqmP0IqBEqnjQ4K1IhvHu0gyBo4MpdWu9a24eWZhZ16nhul1PGkDbq3ex3vRLUoyOkGODhUSyRhOem9R9CWrD9+Uyc3hI9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/BYzEMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/BYzEMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E05C4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761647993;
	bh=bMWXIvbTofCN8WcDHLELZ6cqezOcDNMItlOz8cEfnqw=;
	h=To:Subject:From:Date:From;
	b=c/BYzEMVL9lmgh8SQ0o5yEwgnlmKgjvFawbPEfBI7ZFS/CQbYx3XFVcWfpyhNAqtk
	 B/mgZZkEOEb2Ef1epm0ebscXKQbBLhlJmhNq4aqbVXXb1dzUkUU0Fx98JKebLnn3zY
	 ttl+7W1lf6S0ejXiugerh/f9erChVhwAhHYaL/4gEc36dGo/Zbr0/VzB4GTHBmcg1h
	 AMLdFMBP6Nao2xp+Y75s4fQX7o1H1oLTQjOlmupe/6/wLxNaozZ2IODlBpy/WsbpTs
	 tftdCEx29KaZhVuFuqIT45oXGQhN6YT36WFrWxlRE9cS8wgmgECLWryQECtwDo6Gba
	 HXFjsAHP51dwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F538CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164799357.25014.4934649116698034529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4e82e83f6dea9de5f3811c47f52607411f9170d93a612e6000006ff8b58879
Date: Tue, 28 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761647993
