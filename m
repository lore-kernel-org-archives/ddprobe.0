Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEA942A9E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751516993; cv=none; b=PNtfKftBXlS6HFCVG/GPmwZEOXiW4sND9+crp2p/LsOBsFp4sB1J+2c5RerjEvYxYYdtWohGBQqA1aaeDqV1ZVQbbPfjnT5BfSmi3wYKuBp2pV2+kGuW62/3HYhhXqdOeJMfYrgnvPlVaAECrTGptA1XUy1ynNz9FTH5/7yk7pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751516993; c=relaxed/simple;
	bh=OTnvhrEfdO2wuyolx7h8+df3NxzlOElE7gzYct1CRkQ=;
	h=To:Subject:From:Message-Id:Date; b=fve3452jlXdnpF5uBHhdIY7LhE778QorCuFJEf5vzGyiN+LmgNekF30+wxHTlbAAixdI2GNgjPOZaao6xRtOC/cGprz1WzjuaX8ejWGeFY4DWRK7woFJVs8U9H1A0yAqwTbbwxSXN9fkcuMFyiPauSpZvbxDqgdwDuajAbI1Tso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg+bPKS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg+bPKS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751516993;
	bh=OTnvhrEfdO2wuyolx7h8+df3NxzlOElE7gzYct1CRkQ=;
	h=To:Subject:From:Date:From;
	b=Jg+bPKS8NecMA6ZUrZJdXT0/FFKStyH42vqmMG2c81O6qwge63pm1y8wEbllJ9RTr
	 zRjovDC5uiXbYmc3CtXb2fsf9pB5pOhRVwxS1H/uN8VIORZQy80rl4vM5KlVNZKzv1
	 zssIbS8orWELzIA7HbEqCi0b0X52mSzIIXjhHqz1q34h8Wk6uxs0aeyxUhkpIHD63r
	 NtK1adthLjGeDU/uqvGlob8g+se6N8hEGzhD8bO256SjcgoxHUw9U6UxpanMxvAtHF
	 KzAv15H89cUGC/aAJWSibJqdzO7md+KQ9tUxBtR98iS6Rijtcc+gRsyT6Nq1xcfgoR
	 nDnPcSidddlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE7C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151699358.20958.7646683605234620203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f71507ba53a3ee4031938ef88a85c99edf4acc0568e07353cb24513934c2fc
Date: Thu, 03 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751516993
