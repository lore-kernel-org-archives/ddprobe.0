Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231D52E62CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757884794; cv=none; b=nP+IjvyB9qtahLod4cOS2fcJ2pvAdsYRWYR2ep6h4kzpcgLuvRvqLsKtbTJaSilVXnx+SQJt0C8DAVrRefujTrsghgozxUn6uUkGHM1N3BO7VyS9zfEDgs/zr0NR205GLt/s93f2f4Fgn12553mzULUc/6OEDw8+3wG09ccxiNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757884794; c=relaxed/simple;
	bh=LBcXBf5/9Fc5pTaRda80suOQS7HxWvZyvniwTgHWpHA=;
	h=To:Subject:From:Message-Id:Date; b=K4OieHFzWB+/CHFd/DGcCh5KabIGQp5rIRkKQHr77Jcl6iUtF10AEe/wlZOnOT+0uLgrE0IhMb/7fHW0uW36SO2AsWho1JSn9Po66euSfOu4WTPLmpEWIhvN8x9e1GN3ItBWdAKWg452IpmgRECuhlTlVE7Ajz3nA9gHYVdd6T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgcav5Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgcav5Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757884793;
	bh=LBcXBf5/9Fc5pTaRda80suOQS7HxWvZyvniwTgHWpHA=;
	h=To:Subject:From:Date:From;
	b=Pgcav5YmEr/jKQsHF0NXYQMaGib+WPQ76WoYMZaCni+KILteqxvn/az0gT/piNFLL
	 /zzfxHH9SXB0Cr3LIVeSf/iUYnvqhFTynle674oVBFUyCiqQ/Cj8zWRM1C6kScqum/
	 Ak1JYb0lsAPm27YGzfAI3hXcumiarYQajCzmAeQ/nenC+vAEUAirj+Asb0T67+FLH3
	 erkf085C2BXXtCvG0Nn3SusvEebUsjGDHOFktu/0n/cjL5pVEFZY+qddvlL9od/+Vr
	 AXPLvLVeRBKKl2gSnyatUsRYgPX6UppQkGZ4ZMKSjDSXJ1NS+dgbKb1Or0l3wIJoMx
	 ahJrimDMZ4HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D8CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788479357.18556.15820491467488033235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a521a4f35c128c0e00ebd55a05dc43d1c610ec21183dcceb8ecbb3392cb335
Date: Sun, 14 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757884793
