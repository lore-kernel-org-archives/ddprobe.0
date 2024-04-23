Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEBE13E03B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713895223; cv=none; b=Yac62C1EYuRQmhuJiRtQcASLfCsKqf0T51H4fMFq9GZUyrgmDfJNFGXTK8/+FnkdKtQonBEkU/7GwM5Hv33A6uVgVbut2SthTNEWAzSjS5TXU0bgRfJ9RLfNBIxy43ihJnG7GI98HeiKgf0i0Mk8j70si5CslFbOagWfXizIxCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713895223; c=relaxed/simple;
	bh=hF/6CNScaMt5DuBy0kIKbQfeK/5nBfXnL4hhyV70h6w=;
	h=To:Subject:From:Message-Id:Date; b=tZh4ekTAVpoJQ8F2VOZwQS8y3gDq/iD1ttPxoJealB+kmw9ZCfNe/aLe+nEwEcxT4dPQhXpx+6ttoMnDAxOp2/e0htCXgr/+oLFnFR83eWlsdgd1UuOTMkqB7I7Q4QRd3jL3Jg6kOVetqDfZQpNdz2THjbvMw8X6yaUsk7iRaRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp1gO/dI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp1gO/dI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D481CC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713895222;
	bh=hF/6CNScaMt5DuBy0kIKbQfeK/5nBfXnL4hhyV70h6w=;
	h=To:Subject:From:Date:From;
	b=Cp1gO/dIF/ZswziIvp642snFhZnFEIb4Sb+Ndzl6Q/a0c6p1jbaqy4gXio2rHn/XW
	 QvIvcbgg5dW1P64OBD7LdoX4OKCtqYRMQZoPZ7yTtgtMvI8fYuTaVZoKWCeGJnY7I3
	 0lws3ey7WC3ziCkWKk3B4OyVYMwJDXE23vZR9Di0omVeT0mK92zxoWYW8z0Yqm+CWZ
	 IOml1IJRPnXlVxwJOJ/IEnUZ94nbhk6RTEyNBETQGdAQ42oo2Q1h8zRZyWED4RhZYG
	 vwl4wOK9Qvyf9/WezQQIkrqQjLiG3CF0n3yacQdfo6NBv7foJO99GBOz4K8eA9yVsq
	 EPinqWhOFWtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBA0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389522277.11703.4347412824783981062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1588d4d0d1f8ad2ee72a677c90e20779dc0b8b7f39401bf585fc4c6faee817c
Date: Tue, 23 Apr 2024 18:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713895222
