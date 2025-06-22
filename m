Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBF42EAE5
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750626594; cv=none; b=ompUDxWB4iTS03vxHDX3F1fi+4GxoSmYpD867Pnrk/9A3ICkTFZB1SCC7CWgCS2Raa7vQWnUb7xqxNf6NMo1r4MCQy7tAtWyQubCHXAUHuC9kLPp+TreRhmAaBPgKH6sKzVVv0BRq+Kn90J0N09+CsstQfySEhk1Vp4emI5a2EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750626594; c=relaxed/simple;
	bh=oOyAMqsTMzhg0EpBKxXY+ttzpbK4D8NyOA3eV75OTjU=;
	h=To:Subject:From:Message-Id:Date; b=WT8Tg8Rg/I7LvTi3e4IoU+d3WnCYJ5qFMmDr96VpuXJJ+y5kNB8W248LJbDoqF/x93xZmzL/6phvwKTLlwomo73DCoe88RmU9iqOYcfw4/9hpkrsC5b+qCeVzJz8EmAFjqdNASnYZVMt/c5FAcbh0/7nXIw6k1OTIG4UN93C33o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guPAGucI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guPAGucI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A958EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750626593;
	bh=oOyAMqsTMzhg0EpBKxXY+ttzpbK4D8NyOA3eV75OTjU=;
	h=To:Subject:From:Date:From;
	b=guPAGucInP9VqR5DEbUnvpqI5k+TsGTmSIgbBpy3d8f7W9p4PMTZhtWolQUs+L4l0
	 TmBvqqtgLyQ0nL06ekBNHWcUhqWzS6dpwXrr7czDHLnCzIZ/4BPNs/nAV7xANJklsH
	 GnGCbZe8b01atSsUQAfEXSzTsIL1NJnYptInmDNvlYOXRO9/68XyJA956Kx8/0YdSd
	 AKVSOV2TsnB9Dw5vsp3cFLukZK36P4BrfAiFXVOTYGrOdvml8SRoqiS5OlZ3f5CRq1
	 o7nZC67UEhv4dFXIDygXYcTX/GaXXVsOsewVqIKvSeB69YOGAttekd2A8kOWBnDy+7
	 +47WB8DBmktPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1EC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062659358.13429.9416407249121313528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2f44d4281eb6e2c2b0c6d0a29414a3867fce8fefa05340fc60e5969a692bb3
Date: Sun, 22 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750626593
