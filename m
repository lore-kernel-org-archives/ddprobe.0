Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE2E23ED60
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774401294; cv=none; b=b5ZIukm2TR2ys5cY+2jtX6IUfrTaVBkBH3HCdZ8YMNattXO6kW9tRCCTHjSXe24ShHJHn9y73U6Xl6AhiX8CiDmJ2W86AbV0gnAnaisBXPBYzaYU2A1vYm/85ltYhX5l8n22gH5qQq8UTlcnExKhDyoEJ1SFsTFmlIJZqs4BIQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774401294; c=relaxed/simple;
	bh=8FbBvdTUhShcquacGp7FvPWNl/Qhg8dtUT02YLP5FsA=;
	h=To:Subject:From:Message-Id:Date; b=IdnBcotcviKrC4wkoJlV2zetjCMghstqdvq4B0ZKxiLjzR4lNXTCA1o08EkETJUYTFbnoboWXYUIR6TK4AAqYlIyN4iufdJIBV6sKr3CCtPtHGxgLC921z7jshSh/BV3y5EePwufYGfRC85v6QjxLFe/ex0pkAMoNuowGwoCfp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUxNL04P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUxNL04P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226CC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774401293;
	bh=8FbBvdTUhShcquacGp7FvPWNl/Qhg8dtUT02YLP5FsA=;
	h=To:Subject:From:Date:From;
	b=jUxNL04PVEIlZk7aw41SXTNwAcfmJp/wo+il8AHTGryI4j8OMyWyvGpMe6+M3wJAV
	 fM+ZqFPo3Dr80pT1rGrG1wI0SnpnJhaT/CLdPZ8qBCLA/aieVgGxI9Zt7ppKirKRjX
	 2gOuI5cCRR4FEifgCQLkmcCmgQERS6C+P/vhyv2CpqPcyFmlG4FNSSgrYh8ubP7vKr
	 rSPjaqQlrQ9yN6uvDnm7lCUB9OPGwrvYIgJDQCpSizNO8sV9zZNIjjiR3g5AVwNgQh
	 z+xpmzKZi+WGZSD2UixGL0mX4CAxbYJ5a+I+kKpl0pUBSU7oGBva7GhoiCTNnGpNjp
	 Q1q8QjE5rSuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EAD108B91E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440129358.31628.3821230711723360876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c5174dc953be169f8e18108e27b2a1d3f42289de56dcf488d082a7ccee81dd
Date: Wed, 25 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774401293
