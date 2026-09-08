Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C34459D634
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788892834; cv=none; b=IWZvix+XK1+aSXjpdQ1UpcNUL6r/lBFa1DY3JI4A6ffk1G4GhMQ6O7yrBU+qBMGhQa8O++s7Kzs8sS05Hztf33kK4rB5n8YFATotqPcLHWSx2vavy3uXdMmIglBoYzxgST0zOMZ9/1tpBpPTo5Tv1eKm4ZPIAjHKLr4Kqf0DoGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788892834; c=relaxed/simple;
	bh=A41konVWT7nCwjTVYG3Hi1KevnM9FEDkKFkBt1gaGLk=;
	h=To:Subject:From:Message-Id:Date; b=FVyqjuMB1CwxGCWHt4IBIR4FPiOd3OHpCAdTbXVPduYLHucEE998rv6CZAB6xTxbSfR6XMEb21JGnihbWeNQzIGy0MaGyEFkuZa6a2vGGpQBiROIQhyCm1CmcD0lAOtxH3sMvF3eCMS+vHgsNNXehdAgHh8VANCp0cYXx0yqdx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1jzOWbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1jzOWbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC804C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788892833;
	bh=A41konVWT7nCwjTVYG3Hi1KevnM9FEDkKFkBt1gaGLk=;
	h=To:Subject:From:Date:From;
	b=P1jzOWbM8iSjHUAX7EBIC5PGEcPB8vuTTSRXADINM9wSGt1ZWrRIn0j19LsC6sUpS
	 j74wpUHqAAT0h2/BZFRySafd9WFym1mizlUxjjw3uQSG5roqWhd6if0h0CINKlU/5D
	 ejCjINhaezkAS++UJlYwgBeI3ocvMo331XDc1BrdRUjUYpc94ltaahi8qg1K/hLjWk
	 /0ezujpYYDkBEMc214A9Fw4zrfP8GP3C+jYxVFGRx4D9vObmrBZ+BptkUtaYY0U4DN
	 Ck9gMh2KhMf0f/A8BPBCyGqvKUJPwnDaitKtVG9VtgZm1oIdpp09m0kAW+EcXWnWzq
	 /tWU9Mu2iR1VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8712C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889283374.1846.8894165192337221530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41089279d373f426bc5c0126fc95b7aff0e3855b6d18240baa53ac95406bd3f2
Date: Tue, 08 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788892833
