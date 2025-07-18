Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0960E191F91
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752821995; cv=none; b=UDKqh6qufFBmip0ssXJJF65hjMxP4GxddXa5NRE+uA0pXXStzRU2LAKj1+FOEmoofl/5bxAW88T4YXrRy8m0N0reQznzR9BZJKTa92N0N3xwP2RYUzLEnDGDa4KBWuxPXc0D9Otyr6Zpeq6LnD4sApnWxIIUuVMn48vG0tNFh5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752821995; c=relaxed/simple;
	bh=QfqbqxC37OVDD5xR6ajZWoSiTuASiTAyNLCSmvKcnMw=;
	h=To:Subject:From:Message-Id:Date; b=ScBVtwkTCqTfFkD2vinGpWnnWWVPfayOHH22jeeByqRwdXmReNub+972DIOKlCj7cF8wZQoMQeQLtIzQY9/K+ChN8NENktSvMCYC5b3mf6d6uoggtED92UUbiam1WHAFSX1Ps8LCZFJH0e9Rt6T5yVRpfbVGn6F238kYbUlWsng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rByrotMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rByrotMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E675C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752821993;
	bh=QfqbqxC37OVDD5xR6ajZWoSiTuASiTAyNLCSmvKcnMw=;
	h=To:Subject:From:Date:From;
	b=rByrotMj7AGZ8sqd7Os42TGZbDyV+Y2MzAFoKc8ZlauRA9vklACuRw6fb6PiGYSoq
	 ORBofRLTjvnh8YpacUTQ7vW7p8WahTfnMmL8TRWpwd5OwWuFgAhp+Ash8qBPyuL4xE
	 hFZ774UBgbkrlg4p9H9A3atuCRcb9U/2nCNR4TMpwiXLLMv3j6pmeE2Unwu+TR4veU
	 KV9/B971942h2szxQ5D8JKxqpGt4hkoyxg8EMCz09Fb6csNqVmhDhW61i8S55OrGcl
	 TwEP6yO1RqqTYwFVp4i1YTW/4RkjEBWu8W7dq3ofHCAI1ewLBCAFvsuiVROegY0/0w
	 qfPigbI9LDE2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282199357.30702.8529745116299035054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8b9df2377729b36add2e05b13b3f9ba52641df21844d3cf90bdaef72a9e74d
Date: Fri, 18 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752821993
