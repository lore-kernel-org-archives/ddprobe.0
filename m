Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E188634F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758451795; cv=none; b=u9IPpMeBZsGWgrFA6cOwEV1YWNPpxinHJwJOufujaZBDSaaw025JhibjW1/UnuCHyB3CE4updzvJ4snmafgoOcRDVW6v+GBMJTbgvMpURZDC0tn/pcr0ycPC5r0bYwdnBR21T8WWAaDIZ7cP3xcHGeA/mNCm1tICjvdmo208iJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758451795; c=relaxed/simple;
	bh=2ODh3lWzHKn9qfke97MkuXLFXmXRi5dpKHNhVR9DbU0=;
	h=To:Subject:From:Message-Id:Date; b=ocnvdWl6PXM1dYdHGDf0uf5ouoLDHQSH4wX8Vm3/SwPW+nhVi9j7UM2J+9HWws33aYnUdsVjRMd1cm/qwhKb1pAy3crbl25cZ2KZNDfSfu/UnNg8GhScFJKf8vOy8ljH1eN3FBsC9Fv1G+n8nEIgyKhbNFCf9srH7mA0B/mRzAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TutsJ7f1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TutsJ7f1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6104C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758451793;
	bh=2ODh3lWzHKn9qfke97MkuXLFXmXRi5dpKHNhVR9DbU0=;
	h=To:Subject:From:Date:From;
	b=TutsJ7f1NzcrJpD7e6VAkKfGOtipkFtNZfYyUbVXjZCIfuARWmN6rzxQ7FstE1fw/
	 9GXDZLso8xZzQtvdCjUcheBbsSPtyVIApc2VafpaEgXHMl/GSOVWDQkUD6pEwBrZDe
	 e1lSPgULWFaG+X9KUYj+KX1KjTi5TVoYJfdG8XzERoVYQvBwxGy7n1Us53TBgdlNnq
	 FZyIlJzjMeFMzvUITf0rpJqn+MbUTkgeM+8X8ch2zUdHjoJVkiPX7VPqT4zFPfW26E
	 IJ01G6nZea3kzP4MuKEiAF63TcD40ionz6oYkAPn16tWxU50t6MyuZI0XTkW8f+Nu4
	 fp0u+tu9ePrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9387ECAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845179359.6741.14803252008377997927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca76c049067443a72953f8e136775e7faa81d8eb4af1b83a6ce15244d6d3eacf
Date: Sun, 21 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758451793
