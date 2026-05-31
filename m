Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5D1283FE6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780234474; cv=none; b=ZwZsuNiNcWYK7CYs/NesIWJ5/jBkzcjswhFW7XJtjVTOM7+T3XGtqtIp3UlzBng7WHwRT4ETISwnzqIFru1ulnsxPRf1L/32IZD4FjK7KQ1v5m+ni1lvF/E/wkFC3QV22xL1c8LAE80PPeCX/xLqFI+vn1yEedjCjQZS+V22MM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780234474; c=relaxed/simple;
	bh=h/Qj0u9PItmsQYeSiZ96Cw2pMhZxkXNodN6JyOrIJqk=;
	h=To:Subject:From:Message-Id:Date; b=ZLPeZGJ7KkSZFdnOntUeo2Bk9JsNd+z+nJbDoZQ5MUY/jhKfdsteVo03n4hxtRX2xFTu0kMOyjt3wrrZCsdsVXWuZiyTHvbQecsX39Qpce6y5WZFufgyPeTx8ip+1bcx38y9tQLk7u4bRiST6IRG+zbC391+HkuOWuc3+l4rS5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2ZOATDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2ZOATDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32B8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780234473;
	bh=h/Qj0u9PItmsQYeSiZ96Cw2pMhZxkXNodN6JyOrIJqk=;
	h=To:Subject:From:Date:From;
	b=s2ZOATDus8F5pfH95/8rR5MWxlCTNG32nG7LA00bjkwWAJbTx8PT6neOUJJDLEb/O
	 Xxk/nx0pdw52zKP1RySW6XHhYy2lFNqkAOT/I6DdrV5JWCBreDTb3kRSJT6XDHS3PQ
	 G652IgpdDKflvsaGEg7jqpMhJqdxOon4NkDTzzeE2ObP11N8N8SQWDqpNhIqNbeDXg
	 bqAHK6cVXYSRipRXAgUCJSXGlY0rEXGysUVyglaDzLAoVLNpNhzrZ7bYw2jmAf4u2N
	 uELbcl4v40kXPL03q3BRb3+1SqYDcxp55KtQ0n2h09ZJcoAr/ax9hr9EjVPYCShCDQ
	 WicvQYDhOb8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9714CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023447368.28280.2599317728977036307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1f16c875d806903bc70eccc19c5f186328a324168b53eacbbf9f7bef202cd5
Date: Sun, 31 May 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780234473
