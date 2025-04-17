Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC2E22B588
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744882195; cv=none; b=rjhYt5YzoMsN6TBp2ZDi3d/hNDuGNNgehHMk0nHn9pVFPT6cY0fzbAkkzKG9VX05cvD+W6iPZAcXHL/cyi5RgYLNuEFKmLuVkKdfIeeBuAFynlOtWn8+ToARPanZbdIzHYJJVkch/GfMfqfWkHCZn6tVtxnp9dhSBv3qGjVAhlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744882195; c=relaxed/simple;
	bh=qutSNHaukHZBoSWbnZDoan2Mfg5y35umRtIBIy0bzhI=;
	h=To:Subject:From:Message-Id:Date; b=K9H8GSIoakiIbfvvNZyVBFeXrxvtXw94vKOS+HaP9qbBb7TYSD+sojiCRJ/3Xg+FBWjtXXOGwscXi0lz7dbIp9LkOwx8pg1fa7ovzWCeolqPFpnyeYXsIAsWVOxpGE+pDjTTiSrl/FAkmbulXqFok+b4xqpMKrJRwmsIV5KEjGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l23t6EP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l23t6EP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7930C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744882193;
	bh=qutSNHaukHZBoSWbnZDoan2Mfg5y35umRtIBIy0bzhI=;
	h=To:Subject:From:Date:From;
	b=l23t6EP/JE5n11AptooeDK123CCV+OPU+nt563IdwZUyS+Bc9NZpD3sFK/96cYX2k
	 NRCNsWTrDj3J8SYn8+tG/CH906pktKV1UJlsUlSsJ3RuodFv98MpsR13rP8xEkyTSE
	 s1Fcudmy/dJlvskmDhpdnumfum5ddlpIt72XdjqaDTc9ZWh4jFcZVlhRnfQdnv8Me0
	 v3u/+WeCZMmKLF+oKUq3h1jlgElsQh4s7BRfrbw5t5R9Ecj1cIHX3MvOkT6+g5AYI2
	 PsnHJXxveunCeV1vuGMMe3wbpYuIxKA9Opl+D2FDhmWrgEm7o02oshMEwPFFUC1sQG
	 tyJDa0SBVbUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B0C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488219359.23776.15047361729704566472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e70bfefead54ae09d85cb7cca2f107ace6be58152083f21fa7c34b1f33ac1ea
Date: Thu, 17 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744882193
