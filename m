Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7925FA05
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780204474; cv=none; b=OrV5qYr1rkMkXOuKmseDUc76RJCJhf8WBBF2lJk1jdNH9bLOW6H18TRAkK4M7pG0M+HzY6zmjnjN1CMSsZEc1FC2vPnSzH+xjgkplYeO8aKzh3+gxZCXXdFxvKrZUUX2R65j82AY/jTWqaE58X9WyKJZBQ35ieJFX/3VCpT+Leo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780204474; c=relaxed/simple;
	bh=EVqloMfMK703FOrHP01rlVYJZ+FreQELVUJni7dPM7k=;
	h=To:Subject:From:Message-Id:Date; b=CfVT0xEIPgSR5FCR6F0o32PWKy5wlXxr/QVvljj6Xr0HKf4/oeGJfB1yXkgfHNUng1doR3V6bPaAa4jGjooGNLEQDO5fKj9qcrWsGUl/+ztZZX23Sx3jhv5gBQdAatvr5e2ee1qYcO6VnzspVH1h+ZE9ktbrwHyCVAOLt4aZsVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGHiYsC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGHiYsC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF902C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780204473;
	bh=EVqloMfMK703FOrHP01rlVYJZ+FreQELVUJni7dPM7k=;
	h=To:Subject:From:Date:From;
	b=CGHiYsC70SPVfFe4rQiuwqhXPLIAadvw4AXB5yRiR2BUXSmcszSt7/Pt+OcJJy5wS
	 RDFjPxQ5UhBXU96EEdtUCRxJI/BPkYbYnW/FRbrs9raKtWk/OejFul2Gb9IQlnvUTd
	 SKOT+2wKKvYvP/P33GeUGb0kJ3eyTPUoEAiKOpRqdj9BlDk+HaMNBEOxh4tVu4bSCw
	 DkUSo+lIenxEVhUfCrcsdWXRzMZ53XQYxNzFUID4LYDfSFBBu8msZapS8zTWBDRYiV
	 ypBSyNTH181D14vDqm2zuZzILBcMDcushbgDLbXAL/WGJfdlF9FtltQ6HGdM/kdslT
	 0d38c1s0wlWRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9FCD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020447368.27334.16248040299628564862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766dc2fe45d90786a114254b5662ea021bde3d10ee2a2eb8766469101d1768c2
Date: Sun, 31 May 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780204473
