Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5557CF9CF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719792263; cv=none; b=ItVjL78faqXf0VxMmgJCBpnsUPFv3YTcRT3gi+pxCprd4Bi2CsJnt2jRFE9nTTjZIthRsbfs+6sU6VgeIZQizrK2/BdMTPvu88GpZ56hfaVUIf0KXJjljBRq2S6AYzHFMszwc8d2TqjtZIpdgoekfaDKMleFpRq024jyyw0oxoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719792263; c=relaxed/simple;
	bh=1CsfcHOv4+cv5ZD+bej7YihPJ1IWYh74rtFurx//dVk=;
	h=To:Subject:From:Message-Id:Date; b=TQJ+2PTgO+4TzXJf1VuYYUM88T6HYrZC2clgTr8IrJoyEfxJ9nHUsLPJq/1uljlEGspKjKnT1nyXJBmJ0eiiNdHZSnRFiw6/0vGk6NpEBYfQo3b8/7uQNozteh09JGxVyE/Pa9oGQqOgQSS+ftD6Gr2yW3hXflile/I0VtsAFJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O52R2MHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O52R2MHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71F5C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719792262;
	bh=1CsfcHOv4+cv5ZD+bej7YihPJ1IWYh74rtFurx//dVk=;
	h=To:Subject:From:Date:From;
	b=O52R2MHFRcSncTmfPaEPbz9pxoyMonKFs0uTGzQCk/3yiUZKxwPr7FnjRmUs73LOI
	 IM0FIAE1nm3hTvSeTUwP0KFPK30wCXzHUxoKnGZu/rLgeE7FJB2rkA1EsKc1eUkhbP
	 poMxobI0l7Kl9jbZYr2YR2thv49zXshUcIDqrfU7nHD2SC9ydK4kh6NWOnJiPlS0Jp
	 OBE1vRAjINdJYssW4J/8HYTlk8zU7J0qiXFSai1qa+6VS6H6iNBW3OIyli4TcVNvHf
	 TFJ7w2LKBwrCktKx8SISKzl3Icdknv1tyRZAmORTYo1be7Q9//eMHQbzzsHi9qnN7J
	 3tBoOJDcMMa8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CA3C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979226276.7592.10843071327279449879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7197a707a25009f9ed9d6596f0bdd9960c34b530239b18fe2e209c5332e92f6c
Date: Mon, 01 Jul 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719792262
