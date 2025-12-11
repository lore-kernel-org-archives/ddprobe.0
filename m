Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E32D3A70
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765452774; cv=none; b=npreZhSF9eenNUsSEZIVPa2oPq7YL2ozRTUv1yEbpa7GPey86K5J6AZIdMcQV0iXaJecQ1tyegUgFkMLCtsiTSUEDi6EE45pqbjOSHGUN8dD0so5f5kNXValhbKtIIQzlLnZrnx1m569baNFw0nvOC2Xawh9PJw/Q3SLE82QXEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765452774; c=relaxed/simple;
	bh=N/cEFkCWmwo9hdrJwl8e7VuJ7gqm9bqrMMCkok3FXUY=;
	h=To:Subject:From:Message-Id:Date; b=AzkRN63LP95jyNCfdY8zLy07IGuZM/gG899UhzsF9VVEuTeYDvXmpY1RAmNMBrBwfGnHzduXv7nRW3sH8IIaeMtfHGYxg4LvvBk0C48Xud6RCcBQRHAZBtkwVjn56KMVmeI6yS6PMMc9RPUaE7/4G/OHV+How/qbXr4O/PjCgkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBBBh4AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBBBh4AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FEC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765452773;
	bh=N/cEFkCWmwo9hdrJwl8e7VuJ7gqm9bqrMMCkok3FXUY=;
	h=To:Subject:From:Date:From;
	b=CBBBh4ALGWx16J4fsaFTmYz9PLkKLjhR0ET8MrQ4o2e0zG6ATMvFlTtwoh33wbt2f
	 y+7C2T7gLoBKYqJfqCmDfWpdzKyoXXPdqlVEEo0yOiL50XWZPdbn+d0fDydLulXhKQ
	 TxGTwOdl3IDswMVOJgn0kbUEnyiy6z69R/Bkv9UqKtzJ66eeQKT8fvIyou+FvCGAL7
	 rgN+BEmgdcuYSuoQdp11BAAcPKdoXBD8KO6XwrIugSr7J2/EyEoXnyvMwiaRUSYV5q
	 K2ENcgXBnIL5sx6TGCIfhzeRSZ+720KfA2qUM080a5e7EzFRBfFL0mf6L56/+4Og0z
	 t1XTg89ovM2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D26D41C1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545277358.26098.13635277591166261413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f1449174296153ed501a29349702aaf15070408cb20c2c01961913c9c62237
Date: Thu, 11 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765452773
