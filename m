Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7080F291E
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714801943; cv=none; b=i0gJth4fq/czrGIkkgt1rZVXNxvINB8issuNXxenpFgOmaYqhODFbtAA49zCHE8CRZkMO7JBUjMamNQNvebYobevfQHi+4pANTsmOrKOakxnj3O9CmK+bL/0MaiaVCKblt2c40F2VlwkaddUZZH3Usc5e7Df4ijrxWnWWRKC1OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714801943; c=relaxed/simple;
	bh=JfY/FMjKbFRS6Rg46ca77Xh1OlrjSILuAT48wshKTVQ=;
	h=To:Subject:From:Message-Id:Date; b=ZVg/PgZURV9QZlw9K2ZMQ9d5KYiIcIVEN/aTpXvRL28LbulEXLRYE8yhrPBfXpE0o8JTz9OuNi1PZatuRSnjLoUaDV/HzePXf4t3gBeSdjionCNp8PMZnFA9wCGgnj6hjYKMaQ7XzRwPoAv8tHE199KNQBF2ApR9Qr/Zwghwg64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQWZg/rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQWZg/rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2F9C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714801942;
	bh=JfY/FMjKbFRS6Rg46ca77Xh1OlrjSILuAT48wshKTVQ=;
	h=To:Subject:From:Date:From;
	b=TQWZg/rM1J9EFZh8GxJC5ryNOWWgXsmBRGET71CfWt36l3xDBUx+HAaHX61+HJtqR
	 rm1rFskNKjaDbsRpfLPAaHu9RcWbIzjwncFDfSiSZF2rO4Mn1Mgfuwjgn/vZFIaXU5
	 1Kx403qadmCaDvf7CHuzdZ4hfRiSVAI1JtMvphhs1ICmrgU7GBieccMTEXb/dXVbVj
	 iR1ykhXkYFQ4PdmOAW75ttRJP+iRFP9n0jCaI0Uc/FMC+diQWkiR1ymqWVTKCq+ayJ
	 d8U/D0uZ0BWjHXKfjhBDwfT0OaX9ZEzu9lSJ0L5SP47sBA/OmdN+GYcJ8HZaS0Mlf0
	 e7wJJKtF6DZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35CDC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480194277.19758.18240093053677567644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e16f5c7f93ff555a47775ca3afcdfeee72afa55fc776052d19062db1fb6fc48
Date: Sat, 04 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714801942
