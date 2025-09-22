Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39F02C08BB
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758505793; cv=none; b=HQ/qAJX1U4K8NqqIJ6FKtvOUCC+xsnIYI+U9EhcCipDc5IAmJ0qPVb5f+dxShs5ptn/AnhMRb1btrBujfh9yW3PmesTth4kNS2bQ73rooAcYzv5emICfEPQ2y+mNvfzSoJamGgj1UeQ5VB5MIpUePqnAkku4330hm44LpBrlwqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758505793; c=relaxed/simple;
	bh=mg1fcYymvnCXUYZvpot93YVc3ijsdN3Ll2uFmFFAiuQ=;
	h=To:Subject:From:Message-Id:Date; b=MO0+YHFUD5E80p8i1Iki0ibkc6RhNwtpAzaKXFP2NCxaulLVzZJQIZZOhu2bHbeLl00W7xrvJfgmLyKjGMp9kiYhFKnSxUHwaZuFGOJGfIunBxOL2Z5YFQeLLxA0Nd4GDJImpyxBf8aQpX+ucewBGIRruau7wJiK3g6WhEzvrO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdGPZRH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdGPZRH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1367C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758505793;
	bh=mg1fcYymvnCXUYZvpot93YVc3ijsdN3Ll2uFmFFAiuQ=;
	h=To:Subject:From:Date:From;
	b=WdGPZRH9IXjJOYlhRoqZ/jWs/2MmXwL1x9diF7cWB4XJCgksljcEphRhcAN08fRWx
	 MGT2UwoQK7z8tRGkk99dtbN5grrf991QmQX3oRazBhxbd+C5203JR2QDchMAwZTerH
	 CQ1gIAF2OM37Du6Fue/QYjNkOVH7Q8nYbyAHuT+3KnDEfyKV8WHicb6ro+nGgmEJ5N
	 xw5/BHCHfzossEpvE1ABGOYQ/COlkmRfj19IRI+On8zEhOFBvWJOnsy2YJ6CNjyI+J
	 dJMaB1NQZUD1gIsiBcuqwVC8snOYJHRyjbFinAFy8ZQS7GLImGdbrZ1HbLsZPp/32w
	 h/XJj9u/eLbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08DCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850579357.4109.9254876430475351068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8fa5294d27ee97948f095d478060202176378a9a49d29be23c0e344985c6a2
Date: Mon, 22 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758505793
