Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD50523A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751161794; cv=none; b=XxTmo/C5DSKmz2ZdzjGtlxS/WbyZRD5984oieg1Fd/PqX4TTY4EaHHKAAEARAmhPFeX+YEcTzDfXzh3gU+Oak2OlVUBRDkvTszIdx0D5rBBGIStV0F+DItVPAjTZ5IGQV4GaZmL1DHE45SLhnISrvgxp4krHDaZS3VsQAF8otE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751161794; c=relaxed/simple;
	bh=XCVK0EJ/2VjOx3EiCm1+tGIgXEs4y1b58vf0hiPU9ks=;
	h=To:Subject:From:Message-Id:Date; b=qNeNR0RfImObhQenZs6pTsMQ+C8UM1IiUs3azA3AsLCmZvKguUUIhQYEnLPe93GwCuLKWZrI7pC9CtsOumqLI7ZxGtgjKrtP79/64uVgZczM01lKYlNrPzedqOeM548i9ja089z18h/SIraH5LbSgWKpqYxbwDRJN1T+leJv5kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POQe7sQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POQe7sQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751161793;
	bh=XCVK0EJ/2VjOx3EiCm1+tGIgXEs4y1b58vf0hiPU9ks=;
	h=To:Subject:From:Date:From;
	b=POQe7sQIdt40ICsUBbT6NXdjrc9XVPPHJ17kMGHa1MzrJdPjgE3sO1/yOcdmIwHws
	 VkDtUvudh83p7OP3WrCIoT/kwkFJlb94/6rXR8GQn6bCetONXt4k0krjllD92P/pSw
	 L87vryfI8EBaZQX0sIzf1+i2GeFWCv/ILd1sm25YBiz0tmBX2pgazxmC4kTf5aJ0cI
	 XvdQ8qIFVFCHpfJIuwBlDNrSYZDh3/Wh7lDgb3gAqfVBrveLDAVqjTLJ6PxJCG8Ic9
	 6PFTecxTfT6Cv7AyH0z+QA65+QR+FcZNA6JtilJbV8A9MvCrfq/ssVde5MOWQXAYxZ
	 xUhjhDDriNLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B7C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116179357.8686.2089727290832293666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7638cf4e10a16f8d772352ad8ff98509c344f7e699428b724bf6bf9fdeb4799
Date: Sun, 29 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751161793
