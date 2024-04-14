Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E6F13540B
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713114563; cv=none; b=ChA1gsf1N+V/7icy/PmuWGCNWp3c1+ACPvT8+bCfwdkDv8wORiZA3jduVGVv8u/dqkhsOfVmRLrQ2THB/M2APLVKCY3C1lxYTt4PFgfuVsgksZRMZtsu3r6hERgbaToHUvumptLYldiq5gcipYYW21GKriZscu2AkxX66gF7Rdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713114563; c=relaxed/simple;
	bh=OaU5yRI6yMCgQ857wBQSCkq/C/hKiD+kMWiLQHVcfs4=;
	h=To:Subject:From:Message-Id:Date; b=n+X4XzydCCbBfV8Qlt5Wzh37Dl3/xMkSkK0mWY+FPHA937XRKbPx4bmd6fMd/oKpXotjKsu/bxsDHjY+AFerk8jEmk1K/b5aBuBmHmxTzIkI8rvbDEYmbr4u5bFixDabAoE299qLeDcKSFxz36H96iVY1m7XlGXqmGNMrIcI5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIqkL728; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIqkL728"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B40C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713114562;
	bh=OaU5yRI6yMCgQ857wBQSCkq/C/hKiD+kMWiLQHVcfs4=;
	h=To:Subject:From:Date:From;
	b=KIqkL728jhHJb7GMbZR2T9HzKIVmt6Zbp+JAuod9RAsBr3S0GzaJ3Voqx/wbCS9xp
	 9Or+10dklwO6D6svJduCFEFqlopWDQUcRi+0IjYf0MkCFt0h6yDOHT1DoE5Isao/f1
	 p/t9xSovQWElCQznpzCTpTph/Bu1OwQZJ1Iw3bjFqQ2CJnzEXKZJiiJrH3MO1iILrz
	 9vj0MG3kXBTdggofp8MadapfxNlcRccchW99ko86v2HCvhBDNsRlB8AcEE0ccgCaLF
	 1Q33/FPrrIYwZxEQFWZua71fHMk9NW+oER1839UUw8ii4DvxcNUEQU6vlE5r/v8KtM
	 i7I/ajpI4uPUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF98C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311456276.14060.12997148939431343288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8ce94e9458c122d108409c3adf07ebad0e143683d8da88df7b47bf42530407
Date: Sun, 14 Apr 2024 17:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713114562
