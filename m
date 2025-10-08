Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014C241663
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759921194; cv=none; b=ILBaGypwF5WzcA3J2SyMMaQCuVxkvviyCAnFWypyBwbR2XiknVImRvPTm2jYMJpwfyz7qkiujQswZMZeHNiZnR2oHPIQO0/HwhpdX1gX8LtXCdfO5tzbTO07KHEJUz3sITwSgpZ/RB2TYtIX2x1LLKCIrqjrBh854tSzM9/PklM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759921194; c=relaxed/simple;
	bh=59yrI9giOEWJM8yegnT3eh9NsxMqNdlsTNEot7yU3v0=;
	h=To:Subject:From:Message-Id:Date; b=p3E0zZvSXdAzMPg2g6xDPkKba1lQowXzzkR4rR8JVCeiZDlXLwI/bvfE55H7adWHgDNoRnMKNtJu3dddPIZZdTamXxk7K+qPC4eSbvbZDl0CQb1CXwSZi+KUNvK2mrs7sd87JUP4LWEYB8SOppc/D/nOf9o+xqnOAodqkqv7dkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPhpcAM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPhpcAM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A302FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759921193;
	bh=59yrI9giOEWJM8yegnT3eh9NsxMqNdlsTNEot7yU3v0=;
	h=To:Subject:From:Date:From;
	b=MPhpcAM2voYKar+6fw6laBVGdgeGZZDX1BPLr+1jVtt/TluU/HT1iQW6m8ZZ/0zf9
	 y3mN5215csSzHB4UcY9unp6IVFlRtmy8yrMFkee8isedD2b241g86G65FF1xifT5r+
	 FPDl4Snab51wZv5LszY08gGEBiJI8usv9x83UeKKU1TpCLtY4Ju5P2B4nKaIy+b78o
	 D1vCGe74Qp3Px6u8dvhlwCo95TPPLAZMJfxLtCut3XhcfRf1S6w9HaKRCcEQ1eAlN2
	 d8mPSbYgHaKmzGfijiYnUC/bqB8cZZj1ULGxdB27y1yTdvFv0J9UhUd9J+istuPH6B
	 nRJ5l1qZmwacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F7CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992119357.28394.5086680968568835347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f1e3b960c40abf9c75c00cf52e94fa5290ce034e1eeecec6f8ad1194abc634
Date: Wed, 08 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759921193
