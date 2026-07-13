Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D47EACD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783921114; cv=none; b=cJuoHyXVlEDhgwl/dGkA/L/dXEQc3C0CjY67W8i4VTkL124ZhFgCYjOmisub3z8GBTHYy2Xmeu6UduURfOblgo3qKTSUC13z1b90CtjvP+FyvNeawmERJkmFJfnHZTkDUAXLlUqVpSb/JlKOh/g4C1XtMJRNC/0u9UNp2vLg1qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783921114; c=relaxed/simple;
	bh=RG6uCTIC9r2LLIkf44WOAfM2QCrxgYnp53RAUV2aczQ=;
	h=To:Subject:From:Message-Id:Date; b=i/drX3WsAUmUFwVyvItCggsyCL8yip6jnJEaEaE9U3HyZBJ8dmdbQb3Bh7h7fTw2nqqkiP0kYfERDiSZEwCpxD46FnF+oGcaCyh+LHSJH9Q2pAFoOfcSUdGUqcSzgiM7clhKEDx6VxRI9PHn4gnTpM0ysL4heJ1zSnylqAsfqgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGumXG0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGumXG0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8504C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783921113;
	bh=RG6uCTIC9r2LLIkf44WOAfM2QCrxgYnp53RAUV2aczQ=;
	h=To:Subject:From:Date:From;
	b=LGumXG0d88W38PlHazesBJBgvLduX8fzHJW0iiXOl1a9TKlU6bJgDB5kDukIO2YlO
	 Nvs0W1eQttxhMXao+g1+OwEwsS5eNcqpyYzJOiVpkKkqZ9aU4tl0MyZFyxcBr8Ivtk
	 /QdIh5szQgiHDYrhQy9rKkCMwdRXckWV6PR+ZB5m2FlM0L9itClZfHcsn0VROGpr6B
	 NvK7zxD7YzD0AMJTTrw6GsK64GtjKX1nKKuQOlXIIf+f9Xv3uX/3mezZ2nJnRMvAyR
	 GMAb8BX+qvzmnGzJCNyG4/WazRgeG8wSDOa/GVI9dGrF36ipim/1DCgbOAq48P92uc
	 sA7BgGeuLuygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84DEC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392111368.24526.7914917995774802950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71862e2ff6ce6076fde11b926c02eb5968bf14ae5203ff87bbf18d3ffdadd8c0
Date: Mon, 13 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783921113
