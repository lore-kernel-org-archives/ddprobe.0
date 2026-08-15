Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1613783D4
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786789234; cv=none; b=VHToqg1jyFxmC5BRK56aWHlXbU8agMTXO+pNKo7odUICGyBmzl/CLLhQwP4VhfWHXzVfnYIdPWSDyrXPmmV/mVIE3o53H+SAqlmQqy7RbkSRWWAiGqDWRtimxXlKtl897glHF7USs4qy67vIdxpKfsvCP19apUmiv0HjyEG1tvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786789234; c=relaxed/simple;
	bh=xP+ZBe7sffQAfmT4ZWZmKDjcKLLb3LsgBKgOazmBvYw=;
	h=To:Subject:From:Message-Id:Date; b=Qk7RZh4RqC+/Smq7Qwoaw6SydCtrJfnLUbIwZAcdwmxGJXkhQ69UZZRqjOSDkLdH2b3rYwsJ2qFxhDR2ooj7ko6e8t5neKe+9DntQvhtmE74espg6Sjg5iOTuy6zMM3nHAdwNe9xv8kpxsK8SEw0psK1nB+Ifgytzr7Oj9ruZ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0SxCbdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0SxCbdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A53C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786789233;
	bh=xP+ZBe7sffQAfmT4ZWZmKDjcKLLb3LsgBKgOazmBvYw=;
	h=To:Subject:From:Date:From;
	b=u0SxCbdl++W3QmfgMOqboNF3f6OVZqyT9L/Z9J8GBY6jHaXlKw+tnDYfgk1raAJlT
	 IRXK2rz31SljlM3iFcolC7x/HQnnpuAmnajJXiKTpXxKdxnFqOLLtkXVuwx3czFe2W
	 kJuDnMJ2GNN8UtnPVrZLRNQvF83K+rOGYbtR9HhkRIRcuNF0dBzxFTtUmuKdjniSWr
	 QUZSbU5HG/NoegzFaJNgjOr/3R22gN5aUQxB5o2SyI17kRENL9c4UNhVNQkve0t6IU
	 qnSim7XrKwD9ZnvnIVgN/VyaFnv+eFjBAbHTP+mbLBFAgiOfxrxh6QayHOifGw66Cp
	 NKbomLrOFZTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD644C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678923368.9195.5736826436642499477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7b07f834ce2c92a039944bba6066bb57d908a63d3691e6d94478292ddafadd
Date: Sat, 15 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786789233
