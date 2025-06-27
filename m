Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC4B15E8B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750989594; cv=none; b=CGvig/FU8oGYtQX/I0/VCOpTsnMXr4OS4DiTgIJqvuKqbaTod3f5ISsBtc54AbPmaagVhC1TIbaDiOxt5D3/llpZlNPOwfUhHs/p7d4Ei5Gdw3g1J92jz4XnXElPuzaIXKvke72YMw+S/laZRMsfQb3eSkOeFxwFpFJmXn4/Pfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750989594; c=relaxed/simple;
	bh=MIUQfQpt/QDCQm/6tQ3Wg6Z8fP2Bdd0/qnqDIz2Rb7Y=;
	h=To:Subject:From:Message-Id:Date; b=tSqxijEU8pYHApSayiZFksd/TuE3N9ROVoAUDuFaBvwM3I2SlWCbebX5Q3ReV0CIlUUlK9yPMlr4ggb5pCgrksAOxGM3X6AHn/ghHdEBRNO01Isf3CnIpoUyJanoQPzPDh0BX+dHqhV0zj5wWIBs8t2Z0G7rt2XszGhIUm3rso0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VldL+zU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VldL+zU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750989593;
	bh=MIUQfQpt/QDCQm/6tQ3Wg6Z8fP2Bdd0/qnqDIz2Rb7Y=;
	h=To:Subject:From:Date:From;
	b=VldL+zU5HzEwd0ER7NM+ijufqOFDRKOSGtxKw9OQlhdyPUxrm3Rjeo1T6oWc8MeyJ
	 +rhMJkcTL4GwQ4knOXesfPv3cwxBWPrYsdngMkFB3L9Z/4bTwYcTQ74e3Wt51+cAul
	 Kia6HhpH8gg6TZKb8MomB6ewsm4bHTJdi7t1kwTFX49tdbeXivPQolA6SI2lh3xxpl
	 U4GC7c2q6ufxGxLF5b0IHIUGC3M6VIJYu/1yZ0ROIybL4zvRLyJQaOJpQpim4OXqWc
	 ZcUXSb6ojyl/xCXK3L/qMR7IPEnNiZn0JDGppxkLANHfJp3K62Fw23FsTfMiPcyVvX
	 Rcqo3JdrJB/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93701C7EE32
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098959358.28328.18032703697912221122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9968f96e0c77ac336364a9aa461cf04483dcce73e7d90ed7f4fbcab7cdd120
Date: Fri, 27 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750989593
