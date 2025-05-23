Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DFE23C4FC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747994394; cv=none; b=YyI1+NoRz2zr6JvwKcYk4z8bzhmOjPAKwBfi4PXKyXaU6Fo8MtCBxy7tfvvnlT10be4SkW7nzIUyVirx4fLcuF/ZYJBksBIiLOHM2gMFcTobmGemgnzspz8V0/OQSzV6XqxbLwucClMyQW+YSx8hIEiYeBjJLKK+3vXart2OU2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747994394; c=relaxed/simple;
	bh=m88PRjqouIrjYii2gqloKkuLhGkTqI2IlA7dbELTFrA=;
	h=To:Subject:From:Message-Id:Date; b=SGF4EOf/M99UceP1x6mUR/ZAKMbX6AzOY5N6Xriz0bIgwYT0Er5LvEQoDPu4r74F33fUkp/zWuqwuCSfmHwZiToXz3mLOOMpeFS7wb3S9r7Oxs2qtpE1Jh7p6lESkeQscAQMn5xgDXNVjF9cCjTJF5v9SwWm2Xldxgbr0YUQeIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwV8YkNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwV8YkNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747994393;
	bh=m88PRjqouIrjYii2gqloKkuLhGkTqI2IlA7dbELTFrA=;
	h=To:Subject:From:Date:From;
	b=JwV8YkNiq2LfaXj2pqtt40B2EnwrBXW1c1qo6dWBaiEGPfKgMXQaD4DSipsWA+KHN
	 5RKvALXuHIWarPD70Fi/7WiYDI8FNBKeNEBx1RUYyTB0kYHPgVexaCrVVwV1kdRKtD
	 x/aum8spFdZ0fD32LzajgFXLs/wP6Lw80tn3XLimeewBuriqcems9pf1tc9KnpU00O
	 nRukjBXIyxJKdvWqPfpTLRHyK7GKiVQBfNjbTxGAuUhC3c8lfYSfRjLIm8si3QLa/u
	 V1XtXDx7wEhLKtQSL4Nk3vrUJZ74E/ffiOJ0GWJUbFWYTDXJ85aOiPDWdp3SuobrQ+
	 m/+A4g4Zj6pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FDC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799439357.4283.17875493071241587718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d809e7c65401fef46704f34b4c39883110995049359d2fadb2623baea927552
Date: Fri, 23 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747994393
