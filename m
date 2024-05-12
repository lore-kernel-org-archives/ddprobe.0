Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F62AEEB3
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715507543; cv=none; b=azuPXlU7dBqerDdVkY4RbTugWN2OieVw5Ev06yVibFueopR5TRacPbTwwK966hR4yT8Hgc6pKutKSZhGmKycKbPiJYhm2lhTjUcGeMAhzvfqthR3DjzWHxopt+g2FTM9nlPVZ0D1kbe2KzhTZeLnpt4K5W9y7TP7ZiPSEBtaRYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715507543; c=relaxed/simple;
	bh=5CPQYfJgSDqE8o19h3gWGG1hOgVJ6Wc1hwJAmg/t0Lc=;
	h=To:Subject:From:Message-Id:Date; b=DwTJgztSEQzWRTkigbAsZ1LZtyVph7FZEnLbCeIXAMlb4MmgJ6WAd1UQD2JjL0/7NtjSrdZqKFfB1pYjzsugh5av2wRRyQ86gymtNglxyPsiegF2qX+/hPYLoogcX7LxwVlLxSua/eCgnjRXQYjm2yGo/FEF5LkwUZSrNVdBf7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/oYwHXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/oYwHXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0175DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715507543;
	bh=5CPQYfJgSDqE8o19h3gWGG1hOgVJ6Wc1hwJAmg/t0Lc=;
	h=To:Subject:From:Date:From;
	b=j/oYwHXpXU8ZFAAPRah76PQzdeqZZSaaZdKRQ9CVTvEEv6809RumoC7Jal5ivgxWO
	 s04Qx9Bix+0mRNvN/xcQUPskrxZYaxs2YkKGmVB5uGVuVJ/7AgwPCDAIrg3E0ixnL2
	 Izwn0hHW1d2qGEFy1tdz0RyXApWzCIocBQMXn6mnKEctr61G+C48PJkMEYrpoL3v46
	 7Ps/qfv2d90dvCg4BM8nak/5lEJCTb6eOudHWhXlz5yyPRmIv43jj5G+BIIiib43cS
	 pJxFbzSd2FQ7xACfhMl6ewfLQZf8LfUV6WflclQcMS2lIVAzHKefOiaZYMVBi7m6ge
	 454kIKQFoOFYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68ABC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550754283.21576.15180488371221894630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fa4fbbb40256c1c9fc77d61ff3263652e4d335c590cf06017d96d5fb3bd7cc
Date: Sun, 12 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715507542
