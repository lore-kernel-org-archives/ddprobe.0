Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0AA202C48
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739394534; cv=none; b=N3Vr00inMM2yIRFOhExzCe5siA0D+uVSLAyfPxrdiG+TAYwWrOn1tV8bTGNcW5d7rpdkxhLalgRnkGFAXWxi/2HKtqkcVcGwsXIx4a7nIhy1B+v9BfEnSPrxX2c1nTeHtu71CtOG1P7aGOab8BRLEZAIu55i6Ki74hxWC7udO9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739394534; c=relaxed/simple;
	bh=3S5Wvf5/VGBNxZexBqMa+PVkq1ol1zZ6wFbRafWypqg=;
	h=To:Subject:From:Message-Id:Date; b=FasmyO4EHfMKWvqyvCwuexrcs1cdd1Z4bX8Wmky5AyH4Qm5YE5cjadL/7IaSZq9VkPZWjAyp4R3vds3NEXdBFcYcrdzSYREFQJOvQiACeiubRxKKWqr6d1OUwinXXeM+IVqUgVi4AwQiJRhQsQIjMIavuJtWkePOB7ntJrdmJqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRqAlqdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRqAlqdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1196C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739394533;
	bh=3S5Wvf5/VGBNxZexBqMa+PVkq1ol1zZ6wFbRafWypqg=;
	h=To:Subject:From:Date:From;
	b=PRqAlqdJx1/azmR1SWrpEj8z7uVUozEF4s/O+snLmYmzzEOjrtlZY7OHd/p4ihfWd
	 j9tYjaeoGr8O6LsWiZ7d0Pmc7lk/Lu0V2HegDY5o66kxuFmEjC4+UhylzoNk0FBOhn
	 qHs9dEfrNyT6B2HUxQkhCnUq09ipBFm9MDlqkSNMYjl9EcigW9Kxb9ftsqXvQXp51B
	 g1z0yA7gGTAYWSopi8XzVb2Ijr8dYFlyEsZQfMjoN0R/+PruQuXJNnSBmJcmGcXLvb
	 eYgXen2Mk2V3Wf9VymJxHhmFpVCmdLFH8FJkp8/ZyQ6ulDrq2hBIUKaGPYFFfmcmrI
	 U7u1ArtGBXGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F03CC021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939453364.21457.12749765015027675226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834b2400611ffebf0b7e575f6286b5ae52686e95c08be365b1c5388af5a30dce
Date: Wed, 12 Feb 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739394533
