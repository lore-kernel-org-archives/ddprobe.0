Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E73476026
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767813234; cv=none; b=B9M6iKPQT5j1qKcTZIVWixKCSFZWTbsuS09Hq0j3HoBMCAfXkCkEQEq6i3HVjnoPwRYklnchYiLMm+QZuyAB9RuBgNE8ryT+rQuAl1pDZVaHju1qJWj1xf9Z0+Y6MUyzcCgDY4zQry5SaNKux3KqRf+9FEadW+hYLuj2Yhj8oqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767813234; c=relaxed/simple;
	bh=3miFVuNLvRTCHB5WWn1vC/uZRuU4m6m7rBjg7wcpm1g=;
	h=To:Subject:From:Message-Id:Date; b=A7OB0TgsM3PXaN5zluthtmMgQGDEY4fF7kUEzvEFSgRebOrw/gUICZrj7ASJCLQyiEpSI0vnVLVQ18sLQxz6PLtVfkacVKjvBMBLXRbO1PSbFjyxJoQqD+rvPhqqX6/taOMa7atSmuv2xlMUp2FjXuugni9kQ1CBcZTaMvGFs9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+s+2d9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+s+2d9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0229C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767813233;
	bh=3miFVuNLvRTCHB5WWn1vC/uZRuU4m6m7rBjg7wcpm1g=;
	h=To:Subject:From:Date:From;
	b=t+s+2d9tEeLphcQjtQr7cqd3GztE0PH5iX1L4zCbV9FOLumXQFz8hLB1z8Mtjyg2M
	 tw89HIFvStjUZPmBtO2OyvGK/2vEY1BdhPfgZeKiVy8/Z/m92FqrpleGyorBuqpeOP
	 p+sMRqksxIl/xSIyyP9+4WI4zw/8O4m5N2/jjoh4C2oghjF7jxMQQgrEfqeEwoAI9C
	 ySynLVUSd8jJbE4ECnli/FUj7MQ9vduskAEAoWNrB1REws8nkbvwRq4eu9jw6FSRMl
	 4QhXpL3P0jLqceGSL2K6KxERw5c5hrS+3N/tqGIUJAHsrB26AADdYffOJ4QBSHm5eQ
	 s8uOF9B3WbBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF2D0D167
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781323357.8333.4638241486776721612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4862ffb3206fdf0020dcbe265285a0578103052772c6f606d339c4f4011e32aa
Date: Wed, 07 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767813233
