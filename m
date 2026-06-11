Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A03175A72
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781143594; cv=none; b=e+ERy0GkNsUnnCc1qqEzNDuSSCPGv2QRuD4R5PbKK/UwQz7fr4vsr0/Wkjuccv3I/z787EjPevKzrAq42fX0jWxyThJ9gS29aRE9x7FKvhUsSlmdbK5fR/gC3R+YsUGlbhhL46WIIk9WLa0D8MMVYZTTPFoX28JD/lgGRfGAdag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781143594; c=relaxed/simple;
	bh=bmnrcNcWSdtsemwz159vHpUZT6btBZh2qfgu+pIrJx4=;
	h=To:Subject:From:Message-Id:Date; b=XinALAqG0wAMKjXRkOGwxKRIVvfzulcNMum6lDp2kLJdmYB2GQiRTZpQ6TU1XcNZ+k+luiqxXe5A1ZKPaqR95cQ35Dzy5w5mTUcA6NICCki/0UCJ60P/0xR4k53Nmy9YJzq0i4ziGPjXaY1lPlHSY4vR4KJb1r7tRoaQQcUnuY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYU2TRN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYU2TRN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7358C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781143593;
	bh=bmnrcNcWSdtsemwz159vHpUZT6btBZh2qfgu+pIrJx4=;
	h=To:Subject:From:Date:From;
	b=dYU2TRN5asxW5zFw8zR9s8QHpqddAOMzBfyGVNGZDs72sv0jvTsGMsbUmtq12EgYV
	 MWlU3ol/NI9CtxsgFruzZ3SG3KpD0qNR2bTusxXhmgqw3As34nzxgxE58CX/1JqrmK
	 hwAWwW218qZEYlDyO24H6y+//GPhameFGyA3TbYda1rtCsvS8UbBWcyGs6GKVoW6W6
	 Mv/HOJQ8EmLlKt1cuiahnwHe9xHCfmICqYDfhF3wLSO4hP/4TEsNAHqSO7pE4ltij/
	 l+bFj3QfNjOfvmoE/W9iLrZGowEcEF+a0Y8U5tTdU8B41DQayE2gMDg5zYgUWBSPS2
	 4vAtjxbONMteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A882FCD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114359368.1747.2259905646050137566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d493ed443e9c339c64085eb0d3d60d6666ed1e6b22f0a9c9b55020746259a62d
Date: Thu, 11 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781143593
