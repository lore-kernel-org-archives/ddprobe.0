Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF7B1E861
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718506103; cv=none; b=XtaLYvdODWPXYVpJWaGC2fXCTUG+WLrHF7dMSUBWx5NebfiZVSDdNYlYS2iTHqOXFev7stQnuxrKb0x7lTidANu+oQXS43xWSh/5a66Bp3snJGWWo0mmrdM8NuhErZ0hQ7UHrltyLWyndq4VqSGfbgFe60RTBqgzjuisIzL4//Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718506103; c=relaxed/simple;
	bh=FRk6vnfEkNd5nessZs0aWWgONLufJfNt975UBP9So20=;
	h=To:Subject:From:Message-Id:Date; b=dk7GIrY7Eq9SdNIMpUI6bp1fxY/1b8/aLlxo2E9/rRYPpJMqRyYC0aol0geX2d/MnHzzY/l8Zboi8iQpxsygV+5Eyvo/eazBQQ8A14Sl+PBZR9uvCORVf1UJQrN/ipMt74bOHB4cHsinZLXVKsHWxo8n3eGfBM93hc1PLmG/K7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcXCZCs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcXCZCs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60F0C4AF1A
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718506102;
	bh=FRk6vnfEkNd5nessZs0aWWgONLufJfNt975UBP9So20=;
	h=To:Subject:From:Date:From;
	b=rcXCZCs17Wli4PWaTiHDmoEIL9LVO6/JXyIH0L6IXeNGPfFT/yHanlW6ZMqOUaRqV
	 CcNqapw6rpKWVT1h8VKDjoP8Iu9Aphz+0uNlll1Pt2oEBUDjRZ3+5KB9nb7H8naZ+2
	 9s9bB2hl4u0mRyP2CyPjXWK1hlCcB+3aYRVJKABVMxI5QI7PCKDtzo1qtOFGwWYvOe
	 Zgw/rwxasE3EcBSzNWLRvUNcm56ROEXyViKHfAdXFRbLpSl/PfISyS7zQ/PN0s7q5N
	 pTJpdNrDIs+/b687tUMgmDvkvLrhyVkCCCiTFvv/xql5v81TEoXCBuG9FOrUp2J840
	 jdo0mxlwlBGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D67C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850610281.7440.15796657411108462758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb1c7fc81d853521e23d16524429d260a54d8660a751ed39534217d27e71bdc
Date: Sun, 16 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718506102
