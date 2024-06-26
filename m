Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4857A18FC8E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719423203; cv=none; b=AyDU0WGiI08A6xMrkNor+TuoypN5nZehuJGIMr/aZAW+1ibkFsrJ0aFYSqfNThBQnRtQJQvN4oyApqhkv79WE4uDCt6S3cx2yMwAB9hldEzWyNLJqHmwxGA4V8oqIROkyuGw3Dku9sy8MAWCYoryGtYosBCe2LrUYZEwlSKGpf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719423203; c=relaxed/simple;
	bh=qb5Az9Cnt1rR2EvGaA9qDd09bmvsTPsSPcC55V42awk=;
	h=To:Subject:From:Message-Id:Date; b=BgDUwtFk88BW6x/7o7L9kobpeHPIqm3rH61RBDCycEkyYQJCodXx0ZElONtINI0DOvATNNHyzY59F7IgIUzd4mz+E3jm70UYLPwNNIG1o6pJebeZFx+3ABn901f8SvCYEkbllQcweoQDS+APKbRtoRWQEW3NY1JH4ESD90lNAI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG0Qgmjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG0Qgmjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDFFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719423202;
	bh=qb5Az9Cnt1rR2EvGaA9qDd09bmvsTPsSPcC55V42awk=;
	h=To:Subject:From:Date:From;
	b=pG0Qgmjl0qy/p7/owz7iiT/MMd5aMZfQEBN1EZBXlyZ6W5EtqwPCQENoNr0wVNuwN
	 ciZMwtruwrbZ77P6gIXKlEyyipaggpMVDYscPqGMwgRjdxDXsmcF38tp3AYLdLrFqs
	 hy7vXevUlQCjmdnp3OVFqYRRKBeqPZO4SIoCXPHoOgYCqcvJY2cULvCm95Kw1rFOGP
	 CcQEGz30pjVU0B8YjdIXS8fSHHZ5XNyT6h7DzknFIvmLoL20r7AG+Zo2ZbDB44COqX
	 Fz+P/EdRhqmozzrQsoMHIfneE6IAIIQugcem/M9LLOLp6sL7FpvxUD0x9HhqxGbGq1
	 HKVdoTElYBXBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80D0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942320277.22621.7541404976820156417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5846849bf5d8291d1a4e8925087397354effe93c8b352314ce14719cfc52c60
Date: Wed, 26 Jun 2024 17:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719423202
