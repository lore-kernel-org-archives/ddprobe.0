Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C643200C2
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525634; cv=none; b=AOtwixwr4C2EDM6Gfc7SOEfSfNLCZ048ZVjAdOLnNJlS2fhCuJ+VwKraw57QvPTjmzdNuH39aiEQL++OROKIWcY2UgDVamVqahV9Aj8bywWwezieju0ZhxrLrbSoChgXjRjEawCYbQn56H6nTRqZZBLOhleyx5XdV7Ftx6fHObU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525634; c=relaxed/simple;
	bh=0StmQGJFaXrOcxMktuEcrIUG7SLOCdLRieOdjVCiikU=;
	h=To:Subject:From:Message-Id:Date; b=pvEIDvOrxdtG3bxWdfTwIyb6oGnCyOl0YDJmyOjwK/DlWVEby/opkBKJs/+PMy05Irpybx0A8awUR/sDgzPX+MO4ttzL3hGyUdc22tiJr2hFb7hUf51ZD/17wVha/JrgV9xVCrDN6AxnGkmc2xP09bi1d7Wc1nDwmFtVAEurou8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYEcORQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYEcORQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5738C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766525633;
	bh=0StmQGJFaXrOcxMktuEcrIUG7SLOCdLRieOdjVCiikU=;
	h=To:Subject:From:Date:From;
	b=WYEcORQ0RkJd0OvCiKvKG8wRWtEpUsuZeTnojg64dDUrgyDuc3BC9twXmIRniohcP
	 eRSafZzNsWf5F6LVbs2jN9ZFnu/zhH/btj6CpQcoif4GiNV9QR7Obqa2UZY5dVbiaC
	 8AckNrk3HFH4Ct2I6sOl9j9wUS8qplhTzzo9u2ccoliEwnHLM4fP8cWUZHdUhUX8v7
	 r1YfazZceaacPNG9qL8R/sOWaj21a0UlAhlkgWnjWSatZ+Ffbd5popMbLhyfsD4KnK
	 BSfHmnkVgL4IZaJ38H+HCP1yE0tan82fdX4O0arRbXw9ImgyVNExSP+9kEEav0Gend
	 BAQhlFfTEtHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958EFE6FE31
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652563358.22597.9503252703562595980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc26689eaabceccefccb7d8cb0fe755413caf38517dfc2cbe6efbc861b8cc606
Date: Tue, 23 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766525633
