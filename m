Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3471A1FC0EA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748269794; cv=none; b=Y1eJFAEucDmWlHyVL07Mcz4RNOQK/0Hpv8mUDtH66eUMgA235jOhJrIcbNAMbIIaFqBVev4z1sX8K/rIx4DJLbSRuEO5dD1oO8gaMQYJ5EHFbSqKnPcldJwH2PVa0zdGg8o3QCBG+Gp1tEvZ3Dlt3/PJIzCT4RdZRVOjOXbLlA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748269794; c=relaxed/simple;
	bh=SsArhqPpqoaDoeThwqrVT7/ZZ/rtoCpemhc/tCzal9s=;
	h=To:Subject:From:Message-Id:Date; b=blxpeB67HrMyFspff7PmPmB4Rqg6FgKHpUCLvDG+cF/MSmpA0hqfmXJAvJfCpZJe5VmgHHz0f1NCzK3yxs6yVv4jyvvyOOo3EaSTdAXxQ6TlvU8fa/iJ8Yc5YZYiJkySxVHuZwaW5YhISsGBdWMA+0x+J3lrz3MbWHcsxEmsG0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osHv/ZsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osHv/ZsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC04C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748269793;
	bh=SsArhqPpqoaDoeThwqrVT7/ZZ/rtoCpemhc/tCzal9s=;
	h=To:Subject:From:Date:From;
	b=osHv/ZsFMLyFJntzvChurIvelz6dLhDDuPYpW0PbUlDVBQPPKMvJvwB8z4zQ0lkl+
	 zMhcAmdq4DcJfs343rWzdrCOQiUagRLg4Nfhl5cySfZRd19nONkPYSvRxYzDfpgG8F
	 JwG+yMjy3k8124PJFaVX/nL4rPtMpa5/xtRq9yAf3uF+ED3tYbj5pgdc0lZwqBPBvf
	 sBPars2RrjN94hcfhCnCCbe6TP7LBBj2Gw0oXaYbI94ehUzo8RbqKCneGZmWTKDkfi
	 9q6VeoRfOP+ynGyRSF4i+lDl7HmmBC8QQZMuDGkY5KG2fWCkbqRVCjBEGYod2y0jsT
	 lpKF+0HTAdNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE6FC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826979357.25569.6051695628250274963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9758e6a4a0801e81874e3b8d87a6cbf185c16a91896ec20737060624497e12e0
Date: Mon, 26 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748269793
