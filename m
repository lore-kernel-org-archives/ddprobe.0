Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E126E70E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767844434; cv=none; b=tJBpxkOFoE/kK3hA3c3dcLCIU5hpcyx75sE95DdKP85HiyqQEcAVqzpsIrtxdzmjh5mJUkaR4PPyi0V/N7lvrf6wD6vtaK+QkZ4Q0XYovTzpjXVUnwRQ8PBz39NOTdJP+OuqrGwI1zn/6LFFvr6MtKBVW50lRsl/epuo0vYjZ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767844434; c=relaxed/simple;
	bh=jt7aTiREY0SlLi5U7E8QrVMxip2/jAGAHD4dVqYBtes=;
	h=To:Subject:From:Message-Id:Date; b=da+iNdVZapK+eUci9zqHoP/fM7Wshkrfno8AoOioskj5xKZ9w3t0yceU6XarBEj2o7e1QRlinf5xsXvNMbt2RhaPIbSyKuuDgXyFzgO3ClErTLZghuGZurve/QOhUFMeoq1L82fCnW73/1BQt2u24Z2IYwrktSYWp4SDQsWg1v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQQApJ2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQQApJ2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4868C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767844433;
	bh=jt7aTiREY0SlLi5U7E8QrVMxip2/jAGAHD4dVqYBtes=;
	h=To:Subject:From:Date:From;
	b=LQQApJ2NlQaip+p8WJjmfsr/Y0EOlBlY+1nEHsHPt7El9+ZRjzE6h0Xvi57p68xVc
	 2rozl4HMfPHMh9qh1/traleeOBC470PT04cCOXSZUxnkbWDkwGFlfv3kbi0nXxd6mZ
	 3WHSbsIjNG3ywyBdy7Qp0WSBYaYGlvuSQcn3s4YMk5PDQbdy30zQDTUfB3yCY2/Bqf
	 4KqwNvnAjzfpmDw5/7ZgtAiiXZwCPrIvxo/RzOZ9o+SL2FrBSUKK5fNt0cSowHz0M9
	 oI36alP02wGiqzKtE0NTrghKFxggPSWClKlt5Wld2bgltaRjOLMMy1Eed73VV4KcLJ
	 /Ggmov/G+fMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA6D14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784443357.18989.4888330649926585616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd38a0f4f4631c10b8e9fa5cdca28f8f6aac17e1a71f72b995948433e94d585
Date: Thu, 08 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767844433
