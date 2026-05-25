Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62933EF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779685354; cv=none; b=KXLiVxXfDIaKVjIatu4DasN6xPpIfOcp9+xVdCzKL71M5B9UDSpDuOTUz1ptbo/7mR69ugJ7zScOuWZ6W1RMB+Ksg2uFpUQymSt2h94aBZt0nB2jQxie6D2AwroXDqvZmoKXjsPqXQoyoUPM+bmhA+Nsp0f4jAz0eUpVdBggkHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779685354; c=relaxed/simple;
	bh=AD3ORrI3z5kBGiIz4XxR4pdjoAJvioRg9JYMT/WY0Wc=;
	h=To:Subject:From:Message-Id:Date; b=NrUMp3a4KZiH9p6RHMQiW81hRkiOEcw3NzV9McgbbZJyWNWJkQo68toHPIjOBvLV9EBuBt9wDyLkcVW7uXbdJzeP7bnZoVYdBFTZkTX7EqBaJOiPgSLb9sNGqCCL5zOz7vmqEZF00/Nr52w6jKfULOuhLd9LL4fIVE6p9qg4qx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRiFDF/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRiFDF/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C565AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779685353;
	bh=AD3ORrI3z5kBGiIz4XxR4pdjoAJvioRg9JYMT/WY0Wc=;
	h=To:Subject:From:Date:From;
	b=pRiFDF/Yfea6qjubTfhRHBc63kVxUDi0m0RsxkafFkUpVyDhWLL8TWR96ksF1nPEp
	 hjJ2onAQaTfb0S8zflPcUtgVvtSVUUbtpyHJjMav7dJjQ8ChjZ8fA/s0DkgqHJSLQ4
	 udMzCSVCJcIRXIVRS1EkcdKto9Ncp05mVHBBRdOXunobbX2/bqLRPwpAdUPYg/ux0D
	 e4VXVOh51FhsgzkrrtkFx+sYn3dVQrnu3HoN631bY0SJPFmnhZCqPa+5q25RaWAj1G
	 n0tDlJCFNz6EbmPxAuZkWQxWu1aTqTZY6VKX7gJPIJvwZ2xNxvJndgj89QkHrbihH2
	 1+yysUS6qLHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC08CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968535368.18400.15910369040788177577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af3a6b8e1d614649680bf6205166f20ba795b79705768ac43616e5f3d311ecf
Date: Mon, 25 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779685353
