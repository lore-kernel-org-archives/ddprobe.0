Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5099427A91D
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786592434; cv=none; b=ui7s/fPhU5oG7q0saEz7HQnoiag2Z3Z8FMXwTjPKYyoMq5GDpyR2c7uXT8dJaKEdHX3A836armiJPl1wlclQm1Npnw7bZQAcEr26s5Y/mS48rF6rK5WQH6XPdpci+p786+UIQvac9mSuJjKoiW4CbcfRC5t1oGxD1odCcJlLmY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786592434; c=relaxed/simple;
	bh=qGPAU+t6FAyEdROHoNwp5Cy4QprzlBSfIrGfHlfiiow=;
	h=To:Subject:From:Message-Id:Date; b=m/Iljkzhgp6825ZrYNAP3u9JfhWyOozqosZlC412duQNUH/hJml7Z6JB1AWd9Bsplk/57ddOJOo+fXyJKSQxtf2wItB1EUycHBnPjyDLrj+UORGoscvpmCrgFY+l8QYhcWD+E/pVrhInbUuMxMRq7u9QP5iHs+QXKU78BAuYf08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOA2smJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOA2smJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC977C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786592433;
	bh=qGPAU+t6FAyEdROHoNwp5Cy4QprzlBSfIrGfHlfiiow=;
	h=To:Subject:From:Date:From;
	b=HOA2smJlKgye6nZnGzCerV635zRPnL/22bRqC3LrPEgijMy06Zk0IHaizi9XOwG83
	 RrUiq7I9oyoFxS5b/sZV3Z4pqgY/yGAi3esbk8rQ5USIjL2DzafGVU5RaCKrSgI3e8
	 R4dfjT6K83QBLn+zcGFODpqngxjN556DWAZP0fpXTJA5Rm4f+Wz2x9Qi9zajEa/aCT
	 CloaA/lfVQsAcRy3112BN4tH9jl4qjRmd0Rfm1NrbbnrSteVT4zQXTaCpcNIwJVq8T
	 LsEAS89qkB1LaG5K6bNcBaZP+pPX659UzQl6YvGHXbfQJc7ZqBxS8y5MJZWnSBA4Aa
	 iLg6FMDN8CBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF1C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659243368.12985.10653082110666509276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef9ac3dcee8b6bef6c6d9aec00e24a69d5fc89a9169ab927ae3c8991ce475ad
Date: Thu, 13 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786592433
