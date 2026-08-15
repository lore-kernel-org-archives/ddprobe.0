Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560F817B50A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786792834; cv=none; b=CGvFO/aq6IcjRPZBy5Q0wrGWkre0p4/MMKg/5mvXAGmlPhDRnSfuFJosaSK4hY2ZjzrnIJpqkqAY3exPDDSwmMuFvGk5R8jSwKyM3i2FcSayNnyanA6a74LO/laghSTWmsQ4x+VakdF2OkOBbEIr6f4yjsLq/Q7BI01sT9iWrt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786792834; c=relaxed/simple;
	bh=SonBcWYM0IPEiaqpdTEl3svKl6g4CLv4PV/rrRwDK5g=;
	h=To:Subject:From:Message-Id:Date; b=tPTjErB2j866fPIsdjcbg96Bg1K2lyOJPgQR3qyTgIO6qP1tVAHwx2R6cnlD8EVFqgvd5YsRS8x7kwPONXc1vKPdsTIPTlbB2rsZFZ1AO7xjQTMmR5qBryYemH2zrr1nhkLMHm4ivEaiFNmsoElSFhtHXZd5lghAOds3+2SLHbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kvhp/M1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kvhp/M1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BACC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786792833;
	bh=SonBcWYM0IPEiaqpdTEl3svKl6g4CLv4PV/rrRwDK5g=;
	h=To:Subject:From:Date:From;
	b=Kvhp/M1+hljIEF2tNSO6UQkF2IbS8YMDTykkZfv6CDIUNE5IR843vEG8IMjz0K6HJ
	 laeEsPdgrtpydWZNCSd50UyyyP++nSYcCXSld/tLTcjXjddFS8qS7jaVg3r40vJaNX
	 uppPi39+nmBYnKJiSrDN+qbP3kEJanWCmcsF5605CH7LFrSE6VkiRJFdnTfB1ihqlE
	 rplSJkt7qvlFNp9fL+kHB65DcD6PLkK/P5zc4Kicavrvr9KSWSU0+0TUTljJ5OlMCO
	 4Zvm/T7HgZob9LgR80LxPziLwXtL9KIyr1CABVpBlhaW+dUzZXGPIjd2res7gnXFlR
	 WVThpQg1b4Kgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE027C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679283368.30964.7477707814227055486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dd990fbf88f25f58eae8b5418047d1ce7a31f336397e6ab426ca2b49d6c11f
Date: Sat, 15 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786792833
