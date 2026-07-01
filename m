Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A602386C2C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782926314; cv=none; b=uLYy9YpjhhqIDBvHvjQH3w7A6R3+8Plq92rWxxEjLYarHsQKk+p7nvkaTcqVsAZT8YTw+tdm5+3G1eixfNL42Vg9QrO46FmcYVkXAMUpm2qQb8E2ivMZ5M6F72/Qv5p6xk+Gld5y/3YCrNULGTeve6xgH7bsXJsWT16FPHR3C48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782926314; c=relaxed/simple;
	bh=ZPs/ANo7iaWrOyRS+TnIftZcyzuYW1Vrc5yNhY2Q4b0=;
	h=To:Subject:From:Message-Id:Date; b=rmathBxfc5HvfM9ZNtJXZXSubxdxOpltHlu4wgBtvMdH9F96vUDgqNngpW2x590IeGQyw0N2H2+YLjzua5IWL4xpf88TMTAQP7Vh+WWDMS1MataUfeLcy3uOnDtpHKvQANseda8aHHZSk78AdlmF1DTwmFa0p/WUHwa0eWu3xVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OshD2qdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OshD2qdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B31C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782926313;
	bh=ZPs/ANo7iaWrOyRS+TnIftZcyzuYW1Vrc5yNhY2Q4b0=;
	h=To:Subject:From:Date:From;
	b=OshD2qdGgKtfeuk4yBtHwGTxNw+/DEzcF4BXgyW8bfbkiTOLpZ5pMDA+oAxVoXkIW
	 y3y5KdoMLECKuncBO2kzrZoMpicmGl05HHDu8UPKshglIU7ru7IJLrtJeDm8PQxrC+
	 wJLNi6CrpP4fwqbLePH/oEh6gmCBdouw4zIUhd8G3tgoVS/j4xWL2Ema12aubPJpiP
	 JdTiqGnL3iUv+NLsXzz+wPQYlP05/uAc4ok3zH8KQd5WEYxtc/Ppk5/4+rm+DDEbsw
	 R/rzP1DnvItuW2VMubai3ku56ViADAWTyZejDzJpuXPIfb3MEdv8Bcj/uZrvyc0xii
	 VMwXQSugXnAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D01C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292631368.12625.7038855652836213757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9626d8bdc4fab223fd5e9cf2193d56ddf4f9d1a121b8eec9d727dcf47cf868a9
Date: Wed, 01 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782926313
