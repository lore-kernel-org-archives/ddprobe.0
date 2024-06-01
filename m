Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52354B66F
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717257263; cv=none; b=CwhVWlng0ha8fDroj9yKtDVSczMdiM1KXECGvnBytT7qwIbRHwbrEhPkS7EbDUYdzHJoI1QjS0nNRhbR/QDVXlqnghjYDL9iHbSM/NyukC7K+3i5y+s9nbTbqGl91qj8/HXcD3QHzZvMN9cdXMBPdi2Q2+ud17KSOEl+GP2v1F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717257263; c=relaxed/simple;
	bh=3H6YI0XHsCeubiiHN3LVBWNCGKU2r0FBYfeIlDnZhJs=;
	h=To:Subject:From:Message-Id:Date; b=Hte8qteTiAJGj+W3XeCVa8aJpw7sIDc/1LOYvREPyuyjF5p5v1JqACVjLp7GzIsEpQhyRvXF41CT+V0czgWYrzvqEQDpPE6LB4Ubp45LgThvuUAl2jyRtn//lJVktfzI8S+he330DdJiFhM/+E/iQXme8fZyLBIwCLNF+/rokz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp8Zru43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp8Zru43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D970AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717257262;
	bh=3H6YI0XHsCeubiiHN3LVBWNCGKU2r0FBYfeIlDnZhJs=;
	h=To:Subject:From:Date:From;
	b=Cp8Zru43h/rTSkjuwxtCWspcvsDTKsOuKgQvdmj3vL1Ro7ed0Ukiz3TwOdTMJ74bU
	 tXvufaY75yx9zuw+YIX0i5ycd/SSLH5qZIkXkbU8bySXuVz1nUZalC5s/EnrnPtDvF
	 MsLrG9RnUB/hxbSOXBKD1IUmy+WCkHv0uVtwpeJaLFf2TrSp6GeTvcxdURV6qnRoyS
	 RbyEIvBf31jtz6vz4qJtD4PVHmcbh10+FcXpk/duJlGVGe/PMHBlMDKxSMKS3FDJhs
	 XiUKsxwul4QM3IM70Q0gAWNwM0zqLKwr+SMczMha3J1JEEE+abIS245Jlrn2Rj4K07
	 7MUJ9uDJ0E42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF93EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725726277.31912.15988820884486338572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343a548b50e5ce2f5dc6c03baa825297ad0dd5f5024ea54df1e59f8900acf922
Date: Sat, 01 Jun 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717257262
