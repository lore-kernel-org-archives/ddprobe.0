Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E52DC359
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768550633; cv=none; b=NjI4n5sNeF2hOZcjyvUlUh3Yh0e+a55PppHPjocd+HjG5VKC+Kji7pGMwSgF7ImJXtnlOSKBLkLPZ6ir9y5Bi/ubzUzMXI1Yw76HNRx8HHn7oszxHP6Y7aHDFUPWuKEjvaTXdS3AiTFq8niezhFejVmb8ublsQfhZIiye2MIkEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768550633; c=relaxed/simple;
	bh=DHEXw0DNZrUASnMZb9/Lte3Tk8ElMxvXmvvWxqncOVY=;
	h=To:Subject:From:Message-Id:Date; b=LjQpld6NvLVC4sD17WGN44fwixdtzCcXy+PHILBzKw4hs3KfdGBNl/6Tgf0bIcSJ60KCR0pUmw8Vq77005sZ/MwuO4IXO0X37MoBd5C2arWP4h2YtKTLVplaaLhx3F3Mp8zFXyAyeZVgdb7WK5r08PxtCw6hjenB3K+JYNBMbhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dtuhy1i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dtuhy1i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF95C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768550633;
	bh=DHEXw0DNZrUASnMZb9/Lte3Tk8ElMxvXmvvWxqncOVY=;
	h=To:Subject:From:Date:From;
	b=Dtuhy1i+yZHTvCv9d1HRjuTswDavYg9c9+waoPJuzY0nPrhdwO0Tcs/tUm373C9EB
	 8RVb1ooasSCJvzDolPSI8+D80rOu8LXZj6P/d9pg65LtWYccri3vWTThdnyT3cBCnm
	 3gSoarkNWqwVmswGZ/yqm4IjatzOyH0fTOjw3caMKiMRfUNqLUKZazKsLSqtt3JEY1
	 ObeCINBlebOKqYDqLsP5vp74dg4eXH4CE/18p3R/G30mEDauMjwR15FjTsnkBuDCPk
	 fms/WMXXZTGnPL9jSA1ZJgfAKZpqpV8TQCWIXeBMtkg1ot6x/+QYlejNG4loYpZSia
	 E6s7z/L0Yesow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCFD4A609
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855063358.4000.5129873283947181603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da066b3e0c7119e0b86181fb384214b133d5194bd03a23c6c087e2509e12330
Date: Fri, 16 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768550633
