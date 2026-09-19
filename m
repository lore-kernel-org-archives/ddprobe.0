Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205B199FB0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789826434; cv=none; b=QUYGzLO7uQ3oAhciW47yCUv2vK1FbYQ/8/iIUEzOp5Gs16o1hObb6D5YN/EISvWGen58NLzGlpBkVG0QydMRPrJwFF8jPAgbZXPx0UZDGXqBCv6agJ62KfgNNA08K9swafFI964pv7rKIiX9PolWuZrmtOXIjS1duC3OgQQ1z/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789826434; c=relaxed/simple;
	bh=vcs8L1u399NMrXqunBAJyy58z29sNFXatajCyBNf2Yw=;
	h=To:Subject:From:Message-Id:Date; b=lyP4YSdSMYoqOS9akphyDU/TvqN7q682Re5gaIMst39CMbO66Q3YI3KUnZd2/ts5Ce+3MNBbMIr5c4Fv1swKZW0sKj4hGODop9CI+NjVymNB0qeBFdUwVsE76XPhCtgEXSJwLb8xlJIJCn/SKxsz4BXZpzHlA2y/fPvydkxg90k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjR+NgHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjR+NgHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD90C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789826433;
	bh=vcs8L1u399NMrXqunBAJyy58z29sNFXatajCyBNf2Yw=;
	h=To:Subject:From:Date:From;
	b=ZjR+NgHTpXz4UdNJWF1KLLz4paM2XahcEzgZAGRBidCiMZj6jHQVpNpSsZtpWGdOL
	 OM1lheo1KmKq6GdFbR998ElKbnLal8xTqZnhe5ODOFpy9Oy8BadgccnWnLfBLcBlJZ
	 3qjG2t2SeRvvc5pKdolVvD2PVxG1OObWqs4RU4NuoPIGtzFP0L3SvwaipzflSyTaLL
	 4Ki5fLt0ORXqKXkPLB0Z9UY09SwqsSy5AlnpGj2K8c71YWhyLRxM6ml3i1TgpOG5O9
	 Lols2AVTuU5c7Xv/YbH2opcQfFUZeed9D84O/AWXR1exsqmwDI2eW2LncQV91GSxYB
	 MAJ68qJ81Xmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A919BC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982643368.22178.7180216801892364089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c349b83e0c269b9ea86ac195483d406c3cf3991c7df3a224426a8b07d4a8351e
Date: Sat, 19 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789826433
