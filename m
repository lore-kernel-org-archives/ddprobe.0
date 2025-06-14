Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425B62E11CC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749912594; cv=none; b=UaocZz3Y9z6fE3ewIlfe7S5PuFm5Od5+BEVYPDREQv11VI8tMFg0BndCp7UICkh+gNzpvVanuT1TWWIT7lsXrafWtyE8I2JgwwLuVmnSextOOvPfAMsAf4lkLtCNeHuJb3vob++2krIE6tUkKfvpi9nqK7CeEtBdBBX/L5PeUrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749912594; c=relaxed/simple;
	bh=sjwxLYGdXg9tQ14RT0iNYsW0JD/CNzN+upxFVLiYEcU=;
	h=To:Subject:From:Message-Id:Date; b=o7buMEmPHk9dSbQFP+ORVtt7cXY7cMN9Ct6qze2kbTRluJx8fwO3ot5N6a5l0SvjK8672hxDM0LHpHNdi1u+zLIVs1ASLmzUDcTW21s0CbZ/uBB83W3pxtKpzXeM6CwW5MjVW7vxFPwzu32NcktAvlTq9LgghMagU+yAHNPrmmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsSPFWZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsSPFWZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB9AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749912593;
	bh=sjwxLYGdXg9tQ14RT0iNYsW0JD/CNzN+upxFVLiYEcU=;
	h=To:Subject:From:Date:From;
	b=LsSPFWZewhULB134uvf23D4HeqT4lmEg3Uuy5JKh2Db3mOyQnbzaodKlx116lXBG4
	 NbXkLS1ZzBeMXfTrXE6y5bDtzMwWI3Cj//kHODZHBfowHyia1JA26HZeBDzQb+Lff9
	 dUkPbXYINXhvTwrLkzwgoL8EBlBLmRuiWmnUoSdCxMz3NLj6hMhmDDchyreSVj1V6c
	 3FTbtnCLJ0iUwYfBCmB3et1woBmm+EdREBPiIRUETyDW43pXJyZRZpUwg3sZPIef/D
	 OUCchIeumFU6MEoj7jOV5H9sHQNuXT9JAhe6pfIrlf6DD5+nYloOrBF8p04pK2j075
	 /GIUTcYDfSQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B21C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991259359.1744.3956094450833671680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6624066fcb78262774f92dc8ce2a7205756acd235b7f9e5d29e48cbf8013671
Date: Sat, 14 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749912593
