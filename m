Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D35182DA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721463354; cv=none; b=BXBBNnqpHjSxYZaHr8S0PGS72jQS+exB6xnzimtnFNBXKPqtucwcBC7MouzGf63d6rMm9edUEaQEom0d4ZDr49DZdf26oUrVDvimJ5lSY4AqLuNyd+KKV6YgL40LuSjA5uBCJdIjaEzbhbuiaq2SosR5Z56zpgkvOhSwJP7HxAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721463354; c=relaxed/simple;
	bh=nQcEy6DH81idNeLDhLZz6xqeibDVP8JOKQMwDS4SK6k=;
	h=To:Subject:From:Message-Id:Date; b=JL+ujsoox/X7+LuzKVTGK8MQWtKAvejU7hjaZThEqFWx2sfMymrF035qHGigGChO2zGttpPyC5B0PZnRHxt4mEpdYywRh3+nyL0mrPupCZyuH1LtQiJtBvT640nlZQ6+k1aYSfoOyPkp65nHZ/5Yd2F0eUAEvsSUV7NFMq3GIXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IexSfPaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IexSfPaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0856C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721463353;
	bh=nQcEy6DH81idNeLDhLZz6xqeibDVP8JOKQMwDS4SK6k=;
	h=To:Subject:From:Date:From;
	b=IexSfPafc1/F1u2q5RGkWT6xFz4+MU1rK7rPyILSpQx13DhousSYK4+Q8bXp9QDkM
	 ny+FScpQjUtPHOUoOXkVsuBekCFkPrKI7WCmON6Ibwpru7lIwt0zMIEfLfi7xckdNt
	 0g7WV80Jnoe5Ox5RF49j8ba5y2QnJpQLQNalukEHTjW1KBm8N52VDgBKseRao364Rd
	 XNNGcAkYQFCoFCNIWpCs4dGGf7JYyoUr8S34+m/12CkxagKCIxcY7pzMdnndR361Cr
	 mxX5Rmk3VlTWBFxV8VvUO4qOMt9U7BfvBGm9FABQtecdtwsDQnZDnv2UwvjHlB+PWg
	 RUUUPNP4QIRpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A34C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146335365.30223.9519577623534368339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cebb86ae2e7252c16a2e7a3c718ca5d6b2146c6b87901b4c9521e00c8777a4
Date: Sat, 20 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721463353
