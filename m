Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225A135A936
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763482314; cv=none; b=a5XXAq+lUkhjCsABZPwZBIF75x84hnFOFvS4qqk3lyRZlc5kQH8d9+MPOvOZl3a10aSa+XH0QErdBZLwY7xypNPGoMdBByI2KOux1uXvArR4l1hfpvGk3hjD1ard7jugAtkpdJcBR86RG+/837+V8MSeOwFGciU6vqanvLz7n6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763482314; c=relaxed/simple;
	bh=6mZdxM7yu6lzei40xs4A1pS7OWWpVL+osUiQ4F6Y0cE=;
	h=To:Subject:From:Message-Id:Date; b=jY+WquZ7vRdMdeHud3yrHBj6N7NoCU7Do/9+YxivZPVbBx50r9gE998fcB2yWs9FHHSHAKYwNRbSD5Kus5en/1f8xOCuGluxcCbN6vQXZUUAG8zeSeRX6RuwYeiZvFnhW4WrIamdGh+snClgwOllug9jdErVFT5lJAf7orcfA0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij6L1Qjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij6L1Qjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6296C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763482313;
	bh=6mZdxM7yu6lzei40xs4A1pS7OWWpVL+osUiQ4F6Y0cE=;
	h=To:Subject:From:Date:From;
	b=ij6L1QjfSSB22KPlT0hmOM4zVnAt9kj3PtTIVpflNfwYJTGFJES+OQ8ASJSK4JGbs
	 YHkKZI8DMWjZ7v+4sKiLobWxyEkVixqTq0hw4Y1pLAf0wtlgdwesgpr6R4LTXF4VqY
	 TkiHgnz7r+5VvourpztFdDOpeAhqbpkPnsAt2eMZZPsB1HtcZ9hgsj3HBbyaozXPJF
	 g5NyuwB8VlozQplC64qaAGgs45XLggObJW4qW+1TbwiyBnypPTvvi+URKvQAKq4Ex6
	 6wcMVlzGW39GjK5A5B7RNXn0HkDk6dzmldKtuzRw5DL1I9PCR/O2wWatlcvEMA/dA+
	 qZ6KeY770XJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A8CEE339
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348231358.17482.12281968030214029914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea48c682a70ba28f21c87d0c6dbe81929d1f262e438e921c1dc37f5a6c7cd6bb
Date: Tue, 18 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763482313
