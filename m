Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D19028F50F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767472434; cv=none; b=UvloqoxweIgWzMI62SeSR0OXOWwQfUCCT/SWID0yx6IOnh3/d1OVIs6KBYsNO0kcQiTUw8m8pNh+Im/thlNZBw+MgBSIZlAGA7f/ao5KaFiOadJUwyQYzGZfzpUukqEGaSo2BsXSE0l5+v78uTjPuRsjLvq094w+Hf8bzilOKcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767472434; c=relaxed/simple;
	bh=5zs8hgaiF4HItJM7GXGbZxnh9B75WQpPKxlUWnyZ3EU=;
	h=To:Subject:From:Message-Id:Date; b=XHxDmcN0Yn9d6HnPVl1ioMJDmTcQ6GX0RfkJCqOFG4Rmla3V2tVXcEmn2EHOD20/2tpZVp8aDezpug9USO5OmPTa7L8i/xJY+PijB5m7+7t2eVH4S8UWluoC2z6FUiKLKeQN1/0/Y6LZKdb3Xynx7oULV6DfpOfyEeMMNpEyfBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjHlI/Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjHlI/Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767472433;
	bh=5zs8hgaiF4HItJM7GXGbZxnh9B75WQpPKxlUWnyZ3EU=;
	h=To:Subject:From:Date:From;
	b=MjHlI/UyP/FZCO5q5+ke73RHTIxXANXNMfolhSX6lwRtRCE89i9k9STvtK6k3DpLS
	 B+jck/q+oMRjeLzQglUvKRfODpLSprSB6tV3DwAv8LQyA1fBzty2bx1mvrFMmqiSPF
	 5B6TnQuyzKV3K7pWR+TdvIhyhEdcXy2lhUy3NBS9mcwYnxrFrk8WLqzde0DALqVedI
	 UsChZKYS5i6cBi6YZoGAeN70ywz3dOwecrBimIKS5rnpjajrg7UqvtiIyCOGd3or4R
	 pZ/7PqBSPNz5Hg7H5UsKuwB8v9bvtVLpe6JqS2PzIt05e4XM4oK29RJLOKukOzQrZf
	 XGPJKBFeddn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6DFC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747243357.4893.6051033345990317590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7efeda69d3252ccb4868ebcb6d53d278054ec077e3255b2726ba41b7453c3e
Date: Sat, 03 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767472433
