Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E1B1A683E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782785914; cv=none; b=WEwSUV9zZQlQJKrtMC15P05GdkUKHX74/x/HqAxjnVHVvPquSMCYr73rx3s9piY2gZUcQKYFB/oeWY4Z5XihBGuty9tVZmLTTOWCvsUFdRRzJCC9iHL/npdDiTinG30cV6r4sh/w4g3mGlqcixhQpcWBI4oIWrgcgYuU/AAE0/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782785914; c=relaxed/simple;
	bh=3hG5U7pIc/rxro8oReGV7FhmE0dxk6SWIEiTYYVtrOI=;
	h=To:Subject:From:Message-Id:Date; b=Bx9OyrJuzaQe+h5L3KTeTxWzstwuQfcKUIPIkwig0gNF1HUxyEiv8GlsgGAe7+2ecXOI/Ywi8BSez2iRyJ//nfSEcan63wcyLfpeWu9Wr0CyTOaTkhS8jSUn1U3qQlxhG6HWMCTDLQdu2SB6VRkRrfD4/1GMk9Ozovc5u8FrgO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUfNvw01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUfNvw01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ED5C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782785913;
	bh=3hG5U7pIc/rxro8oReGV7FhmE0dxk6SWIEiTYYVtrOI=;
	h=To:Subject:From:Date:From;
	b=mUfNvw01vJURVVzYGud9Y6Z3nhp3mabrFO8yefuOeRxae3DthUSBsgjuWZfAgQeeS
	 0AieZW7H1g/eHOhpEtoLgmN4tCRQcX/HL2WJUMutRyhkuyzIU2rtZsE6trZCKXTt9M
	 NOkNfFC3rBv4tve1QxoniLXXD6K5M5YAv+FQc2LnSymRTn1FyaDW/zCCehqslZfWP8
	 5IRflySdPCk2drOaYf5qp9tNQAz27QiGPsl4beDGfgLQ3fJddf7uFymEN37lIaXvG5
	 tivyMSTc+g0qZDyS8WLRp3f30KuJyxXhteZHcCkf4VieyJ4MOiT3IuLYOrYLx/7JjV
	 aw3+m0gPOJpBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DEC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278591369.21858.12149501583118292600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df017e17d05b5902a9f5a9fddb47f274f5ac4f52c5a7fb1577e0a8522a06362c
Date: Tue, 30 Jun 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782785913
