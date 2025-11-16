Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A592940D
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763325114; cv=none; b=jnocz9D2vNYF6d1fPIqjqSuxn5tT/2/Z9nQv5V6UC7wkqUWlXri8KGyOBdCHXeQiNAoLxRgw9w4BnaLcfsoNPxlorS2NK9wjtIUXW5xgu+pmUn89WurMWgvL9ep0Gpp7XZgkKsIKSvEkACm0pPjvS2dhAZ4Bwav1231yty+hntc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763325114; c=relaxed/simple;
	bh=mCLDE9OUd5gpUbu/4BPjfMcM4GVd5vq+Hf3mkAW+WB0=;
	h=To:Subject:From:Message-Id:Date; b=WveEkjvv2QFJXboXEbPxTvLn1uiqKuPxApOQvyOZrllqWXgcyL676WqS9ymGlBOrv/aWzT3d4mU3oWGelYgwAQTVR3fzpWg7yaJr0AOnLSCqsOTvy+XPuJtCLTjDK1je/839NdEFIJPtTnRqxH1aInB12wX0OpDc89sKqeQhBY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q11ePbwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q11ePbwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59ACC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763325113;
	bh=mCLDE9OUd5gpUbu/4BPjfMcM4GVd5vq+Hf3mkAW+WB0=;
	h=To:Subject:From:Date:From;
	b=Q11ePbwLoT4TtDMruCTGd+PxNI8UCHHyoJ95W3ZyyOgXKuWD8QSODvmFFGKUSsa9d
	 gZJjORdYim2oxMSmN+TfwKa4xmW69jynjVbeD254eDPffOcKVeuUb9NUUbMtSpdg2i
	 LYBlxqu7j1TU+bSdLaWgZ577jiki6qriXqi/tVQHbsNT/1Sf+r9tyfY10Z470CoSml
	 JoCWO4OLFmjAxlzcHEusThWGZ2axyhF4DEXBEoR4cWSrLU5FikoD32zyjNmGWl3gSm
	 RS0oipNlTdMNv8XmH/NxScJ0WgprCsLOUMxUhEyfhE5scOYItorqZaieHQy+PZ+QOc
	 24zJqZnw9Rh1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502BCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332511358.16129.13062801681944590154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be19e9692f15518ce978f0185533f7a67e5201bb1e5189811de3b76e1b36f39
Date: Sun, 16 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763325113
