Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E9242D72
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779759154; cv=none; b=HOZZ5YeO3VYis9qi1c+1bdtbDB1zt08q8rbgsckFWGshYHMr4o96hc1HcuixDTzBL2OlPh+aedQkcjDe87qjSC7lRvy7GBkG6JGilgVqcJLJkd6/eweDHU6DVgUtib/UGCGt0bc3RgTt0V7J3ZIa929NYvBE8geIw6UL3XlAn3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779759154; c=relaxed/simple;
	bh=meJ87skYZyV5pha70Jpi2aEhfEev1Q08y90D7pUMd6Q=;
	h=To:Subject:From:Message-Id:Date; b=bu6q2PPrpbHQbLxeRnWakOHiyO+ajTV79/SYnpiMxjclximvIRnG96ZELiC68iJ1wKGPcbBieDETAyyAmH14iFlYl1ry0hfpe0W39D042celMDPv8UORP2u0NtjPuAocnnultfgw6YMhFtBatM2phPVRCkroQxd4MzzUBKaZqzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYEnWr7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYEnWr7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1510C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779759153;
	bh=meJ87skYZyV5pha70Jpi2aEhfEev1Q08y90D7pUMd6Q=;
	h=To:Subject:From:Date:From;
	b=eYEnWr7PHcQp4PxDVo887qj2SCkthOSU4xK/28YxlagymILVxhLW0EIRtrqyo4fjs
	 7OuY9+DMGWcKvtibkgaxPfToRAlACkyybq3rYd2Z1gn6ktfWlStEFTHPT9HLcbJb30
	 fG5/BhK37vClZIqVf012xVMrH3mdgMZs8e0hOkOfwYm6vI8eE50I7ymKUr2T+3iY1m
	 JZm7E0hPc2lWAndSVSacA11R/Iq2+x8cpHWJB+o7angL07gQy8qNTpLsRWz6Mlv8FR
	 ZRmjj8aV2GxPdcu9P7s+nU7D4BUnDoixB+Wb19gcnVrbuOMM5IxzRfQAVxThnND3N6
	 bjduv4FCLtpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD0CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975915368.31787.6535621558167144619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f40413f062ce64ceff715ca3915a0d009086e06e2341df0313366d3e80cb248
Date: Tue, 26 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779759153
