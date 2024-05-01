Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C6512DDB3
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714569743; cv=none; b=OaO/O/cZtBzfXo0631sst1lYivBD4TrcPx6AoZ1m01zxHPBSAJ5KWRIULUXK/egm8aS/FQtcouxtOLsz03BhSyVEaWpQirXQQeRtKHY95/kTB67Xi249ccKcBVsG1QC4TV2FMrQBq7bDHbKBbn3k0Rk7UaW/nFQw+ebKd4CBtgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714569743; c=relaxed/simple;
	bh=cfDNpNZZgx3MUgnWG0xxg0FWNceBNKb/XP8sQkwDn2o=;
	h=To:Subject:From:Message-Id:Date; b=ioF49gOCetiLMW2kACHgTvRdLXLPgRmmvwsMKrHWeJtveL8xnObMtpHKjKPzwI+GD3lohYmGBiosgOURYa9+BviZZoK8U98Zz+EbcWzEP2iH7TE7nLcmsagqA330LnQCrNfL5ln2LqGmF92i4gmhLhqRznTbrI5G/4jsu0cmQxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z313SfHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z313SfHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD012C4AF19
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714569742;
	bh=cfDNpNZZgx3MUgnWG0xxg0FWNceBNKb/XP8sQkwDn2o=;
	h=To:Subject:From:Date:From;
	b=Z313SfHF2ASqEj8qCq7hZLkcUuJqSAzbHfylt6D8T2pC76idsl1uTkQU0XgiyCD2u
	 D6TRPZb+C6McYMPyHQTXI8lSDvCusmLZfInMu2EcBF2Y6Oh81UYoYu8RrsZ6aTDiKr
	 atTvXCSiKOxz8qrewR4cc6oVQPFlC/ctqfuBWgUeQn0UnBKfqkwBFH2hvqQyU2SR6S
	 AD4cQEtNMU0vkp7VzAghdxyHlMwJ366Cqr1Xj25zWHCtFc8Z7+kpGSQdNiD0oX4vB3
	 x0iew9LLYXGcZLhzdlib3WsWfEvkh5gz6kX4cJVOzam95kNsC5tEbNUU3toN/QHUjT
	 T+YGK/Y895dAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFACC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456974275.15157.11809489329157755287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5631248cc5b8791232e56644c47fd334156cca79810057cbeaf30f9c372c4547
Date: Wed, 01 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714569742
