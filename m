Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7C925777
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717560383; cv=none; b=LZtCA09LodPYS+GCm0xUVzq831zDxGutCKVsKIM/7TrMCP9EWgq0VcIzJ2Mz9r4oNgYZr8RzHiv890eEfM4GhaR304xfGv+Laoia/NI9Hz0mvZCW/hErMvrZEaLxFqR1FyqLrQFngSpiPcVAMkhq+HSXQ0b0h2bDxmRcqy7XyRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717560383; c=relaxed/simple;
	bh=Mo8ywQsxEEFy6KMLFq0dboL4eHceLW8aqRLvAyLYsS4=;
	h=To:Subject:From:Message-Id:Date; b=iWJ3PZSBQaMuOnn9+pYip6/7YcULUUVgTqS3kg0K/Xubrxg2DRk7FAq4czK7XBdKX5bZkLPtVqzXvX0Bip7X52GDtUn/wf1eiDiO1iWjSJH/ApAv2hZciksKLP+mEzh2InnuvMekx/n/jzk775GnVS3HED+hozl48V8i/JMm7H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G80hjZ/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G80hjZ/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D003CC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717560382;
	bh=Mo8ywQsxEEFy6KMLFq0dboL4eHceLW8aqRLvAyLYsS4=;
	h=To:Subject:From:Date:From;
	b=G80hjZ/Xz6i8PDgI7TZBbMcxR8rfb8HYb1cprm063cQBtpa863+ZtE4MQcqXDGIxZ
	 bDIdAs/MqApruHjn+PjUn/v0gGVRUyWUW3dxNfNEJhL+zjAIjtoYlrLIvhhN/vCI6z
	 pPYko3KCzDfAEDXpgCbjdTsXdkKC6b4h05E+H6fY3bRZK+6TsWgqdEBDOChfcAwNCq
	 O8lFDQS17R+FD+nFKM28c7ebx4uLruQWNcN3Wo2a09n1JxDN7DeJau4mQ2k6QZGdqu
	 1glVbDneDiMlcO9bfiLxFCcoyoNlHTQHpXaruydIP67CBpEvzcDuvDShijIrKxyxEa
	 b0MVfk7cQe90A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED1CC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756038277.29275.15865137381618150839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e047ce41d0851fde3752b110d66333334e08861cab6706a5f8158c805016c68f
Date: Wed, 05 Jun 2024 04:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717560382
