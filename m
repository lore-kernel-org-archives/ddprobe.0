Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8921BF33
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780527274; cv=none; b=BT0/6Q+toQrvs5I3MR/XyFd5Gj/iAyHgIV3vh6UBSLaApfXtF6OOcI9HzD+nnGbbKlZmvABYpjqfSEqTiqtbzT24+4Ht0Fw3hos5Klmgeslxqw7f44cf9pwqlHG5z/Zt80auPmopXozQhcYj4Pv3FeNUa6khzJ7s5sB2UT5HfKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780527274; c=relaxed/simple;
	bh=nl+Jp+iOP/UxHNMt6W7zmR+yWKdT2ksxp3o0dZqJL9A=;
	h=To:Subject:From:Message-Id:Date; b=KAaWXYszXCC/6seu/jIQfxBAjvqeYl5SGO6E4w97Scu6a9cv+pSIixGi7aa0vEsNcGfacmspfnw3GhEs0BBFKzrgZ/hfkuPb/8Aj5+fN+z6hHrVKb1tafUdJP1YvK5ysE4w8wGDyeX5cLyomYlSK7X83rHwoPZoXNfpGAbnSh0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnZowvGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnZowvGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F92C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780527273;
	bh=nl+Jp+iOP/UxHNMt6W7zmR+yWKdT2ksxp3o0dZqJL9A=;
	h=To:Subject:From:Date:From;
	b=dnZowvGhQUjExrSXX2J0JBObwyC3PCEMbeMbhoDyogpYfk0x+OYjfA8S+Gba7UPvn
	 kOx7Tlyzm4wYMRRrOHEu60szvrlj3Mez7lKGYspOPgSUNyoQ1INOQwDucAArLHp9oS
	 BpXtMU533eUAU4x4jvJOERJ25eKLSFWSSPexpMjYE5OqcbrLsdEn2qoep+ajFndQEM
	 kclOW6CygGixHsDGfl2i3LPtypb1gzJn1ZLpEG0ijw+JCNj68PzHX8cV5uTsbgEhv8
	 Pp4p2JifmGwMOjaADidLVRed/iwi3QID7NPiydXAqp5LG+6qHGO4fBd2tWxrAEBwkn
	 uhpO5FFjdv9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC13CCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052727369.12792.18155416751793374712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e84c42405a53d7ae1edbc9b7b1895c4daf7ca5b3851ed0d21dc51170d2c0dab
Date: Wed, 03 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780527273
