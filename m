Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3DB2185AC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750919394; cv=none; b=S+le3IMUER1SHW+ILZmRhGYR5zaL63HS6BYnIJ/AbBkp10hFuO99EZJbVHpm1Z1u3DrMRu5O/aIMTbTdhkoBMuvBuhtWFhDqTHMr2XiX2Dr20fGwgCZGw0sr2G6+5IraZOAPUOFVfH/0aVXC+N0Dw1Y6umuHYRWs4FheXFABUjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750919394; c=relaxed/simple;
	bh=ATC1Byld9W1SI5M1wXOyXtMeubSBpPiCCe5Z4JRRRLI=;
	h=To:Subject:From:Message-Id:Date; b=X/NVfYdQBFqpIMB4Ygj2lZtKNwot3kfo9SKmT1au4lPKzIfbMHdznaORmYIxOmF8Z4egkijvNGoEmnJR/qlEn5wCnyJVNX+3wetMDhDTvzfiP10bWWq4DzkBSWfBwCRL4o9fGe1Ve5lir6dkqZ2Cu00XPUJQUhM6Ze3aTcn/sXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3pLuSrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3pLuSrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750919393;
	bh=ATC1Byld9W1SI5M1wXOyXtMeubSBpPiCCe5Z4JRRRLI=;
	h=To:Subject:From:Date:From;
	b=S3pLuSrVe7iIVLnaZaCOhvE5NJmJhhJzlivK69nzAnzPyY8ET97ccK17T48CSJQdN
	 YaK34j51hbqWwHLltY/sSzTOgy4xDMrvvVl4JTLHEpc68AjxAD7IWq0KjCKGGkMqK/
	 4ng8utV2fZHVbQ1GQ0ri2SaKVjQ3rvB6HHOQvG57eblh5tplsz3kfg2m4XEX1ejKDf
	 7JfpHtv5XuPWxeAM49EU9PZfd1q3ivdGwuvpTr12Jiy26DwVGxRD3flA4qTgrjOW13
	 98QSX5QkZCmWgWoIs61qMcIcpIYms3e2KATKAvtH8nBLg/DC+lzWEnnS64JoHy8qN4
	 9C6++/tI/oipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB2C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091939357.20787.13158951636102442850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9be3cae25e8f4b0b41ae43d4cc2a1a678d9f6208c64020001137d45fbd979e
Date: Thu, 26 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750919393
