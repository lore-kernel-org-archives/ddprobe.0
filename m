Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF0015886A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719584063; cv=none; b=ra+sFkmWYg0e1coFEG//hvlWmAlXlRy9rs71rLE5NGq97JXkEcvUbh7YxH3pV8mzHsSL0rcwZHAZ46Arv61DvRxXI2qtBF9xJ6Rj0p2OC7RUbVZgwnvTwiIlkShtRQGcLhLqZurYu0axLefKteftLLwoPEULiX4Z9WuBVnr89YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719584063; c=relaxed/simple;
	bh=YHDNqZXMJ7Hc1Pzc1PMBPWKx5wpwAA41IUAzpTG2USc=;
	h=To:Subject:From:Message-Id:Date; b=NC9AYPFozCKqMiqt1WbOL5D/uzyK5mhmA8SyzghTwN1pU8lOy4wkO8vx/SoZukdlULjroIHy2BoyYxGHNY+yvsLUEQmDxI2A1Mxg3zNmCW40z5AJwfqBu0TmIUtHvqtkpJoACcvHPYp8x706G+5eJSFsa8RCJgovp/YFtZiEGKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2eNC80q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2eNC80q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38FFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719584062;
	bh=YHDNqZXMJ7Hc1Pzc1PMBPWKx5wpwAA41IUAzpTG2USc=;
	h=To:Subject:From:Date:From;
	b=A2eNC80qElqDSeRLphiKjc3ELyI/DNpYQbtDslWOpcr3dt24viFSrd48y+DXB6Fa+
	 6uvvFQ8hdoGxmSOO1XqmVpauIk56s2hgPUljm5l9lG9su60d0CV9oL1xb4VHATTkLP
	 mmyULjMdgO+D3nnEk/iSi3nZ1BFaHLc24kBy+ZvieITXZUE023o9z1RnRD5z5dz+iN
	 gPLNdoAZTuLp2Ikhvm4w9zfsId44qg9AjjbIyYoxbd48C9mOl40WnI8Axk5QzulT5Z
	 SHNCeQZQalDzuaPW6//GeEjVTQLZznnctN3awyn26VHWSiOBdY6SYf4UCylEYdpe4V
	 mmDPgublHkUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3FCC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958406276.3700.16801442615497622163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b975e2bd68dbff4c9e21211373dd69d0baf2e12249faa14c7be7a4ef897cb5
Date: Fri, 28 Jun 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719584062
