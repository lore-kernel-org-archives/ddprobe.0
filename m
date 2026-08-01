Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E34E395AF0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785578438; cv=none; b=SbjSP5IAO+/LKTCrGh6l6Sgn5sLAg7wmLAV83nvpSOndM3OK/ReJdlASu82kFNchSwMWaXD9bkiRpgFN9uTIvovxzLSbDbNQRDeI6drt695EYO1V/ONnpqthgJGtG2mWlx+Sq5zoUO/0wBs5GhrPTxE6P73499S+0Xx6+Z8zdck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785578438; c=relaxed/simple;
	bh=Tsw91hNz4g19OvkiEuD7Z8CY057JdUSHRP3sX7DpfD0=;
	h=To:Subject:From:Message-Id:Date; b=OdefnDp+R/UwaLNWl4sCb68biehBfjUkgGIerGMXA5QIfFwwvwjnj8kUCBAxcOqYkgEQN8jx/xCTDN0W5zz1Ufm0Ha+MZXneXBEmqkZU2n17LNcYLEUE+a3w4N/cCdUTMibJVbI+lVirrsr/6W4H3ej5Ru280lrF/Iomv5ieX94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XszwrYjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XszwrYjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6200C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785578433;
	bh=Tsw91hNz4g19OvkiEuD7Z8CY057JdUSHRP3sX7DpfD0=;
	h=To:Subject:From:Date:From;
	b=XszwrYjTi7I9wY7+2Yv66j5s+gfpcxKfzzeZ70tRnzX2A82mHn3JXbXe780ga6EEa
	 z3creKTVILN1Rbnlb4VeLxOtyUlsYQs6LxTBQ8eS2cs9zw3ObX4Gb25n5eci2kOL4N
	 H85V3Xd27bsfme73I+Cx2qKkNU0DIrBhYVWSU+P2rmfssKOYhJSw19aRyBRZLhblNy
	 nNyFDy6f9ltJWuux4BV/9vOBgCAcY475n9qadJbgtEH3M8Kpa9zqEPet+ZCgNMv8fG
	 OHyeuVbFKtfiE+yfdbdM1u9C/ZH1iIqvkWB3C6/Usl1wX5yyTbeRppqcNZ6Z+1gJsI
	 sRHS2GShLgP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B426EC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557843370.23057.14651120507772874576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be204e954eea636df15f0eafc47a736f77d56d8ed16ed963c2c9be7be017fbbb
Date: Sat, 01 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785578433
