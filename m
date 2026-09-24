Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477DF4052D9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790239234; cv=none; b=L6o9BwnxGqVZ6ZDpe188kSpqAYaREeN1w04xt8ISMZXFE/lc7+ObUkriCP+JBwHeeHm1vgnDmSFmyzD8cUmvXC1YIIXRENg2dlOA5aGkwyPJS7dhaKtzj8aP/e/IBqdngnJykjLRoM3SXeQWQthUi3CLJ4ddKS2DKEo3kkoi+60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790239234; c=relaxed/simple;
	bh=WfQPmw5emGn2HGDE2kwNlRzxP2iU5Qn3+S8NkNhI7Cc=;
	h=To:Subject:From:Message-Id:Date; b=KeQwuoUHdbqQk8WdugbYpdRHWTnRo99ltq96PNFwzcwrpIti5KqPCUHr6JdQkztyZpWa7jCv8qNJPSWYpGEfpALvVe3McjcGNH6JZUwtAIE1uSNSFuY6YUUzkl8ZunphJAf69ZSsRJ9yWASFFwePWNgM6Hb54FNsfMAliTY/aAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAdktfB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAdktfB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE50C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790239233;
	bh=WfQPmw5emGn2HGDE2kwNlRzxP2iU5Qn3+S8NkNhI7Cc=;
	h=To:Subject:From:Date:From;
	b=lAdktfB1aP7sXstVPsysoSaMy/EAMWOr4/DASwY7PxKg7izEhQn8Bgo+CSpjrzszx
	 qnblZ9CBBChlCLN6Pi+9ny36BuHmFogXDLBee8Ff0fKeiPzZliM4cfF3cNHR4f+df1
	 4BuOHFz28Fe6GSrwoEyfeePMRYuq5q8CCEl+ayGHu2K4TeI6XvyIGC+vg4vyP4LkLP
	 hNwoJWsYT+TN4SNdt0d9LuaVAkkabrE5TsNMN5Y2IU8rmvQBMyFJuiDgyqZ60KfUQP
	 E4gwXGVUE/VWi0/9Vk+x3qcQwmT5/BN5WgiYEdsNb9Ep/f3Lfihr7BxqdAxtNBFj6x
	 Pz3h57twEE+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE41EC98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023923370.30232.12503719706214291292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60755303d26127f8b0a2fecc0fde70bf52d8b41d38972f12490a2b7a1e4dc9d3
Date: Thu, 24 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790239233
