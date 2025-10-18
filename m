Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABD01F63D9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760824794; cv=none; b=gRgbymkG+OTtwpzseUwdU5yDNDMqkk1n2l+dVg0L+rEQIbcYGMS92KnnI56KtITvVs46Z6d0x5oYJryAqR/e+JXBFoWBa2IKPk3Jjhmmv+8vSSYIq35V6aJQWWBWgm2SuTEEStbEFChP6Wbj/jatqp3zBzXBqiSEVFiAHZQJBIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760824794; c=relaxed/simple;
	bh=A5eHElGHXS53YMNIL5WWIoITZ6iMmsB3Op+u2RGJDoo=;
	h=To:Subject:From:Message-Id:Date; b=RlMCW+/QNdgV78XvVUJCfhc9GKMqdlJpc4EDcyr4kixbZn3WLdlVQWYCkgUeo1b96VEK2FcAq8JRLSYEja+8KTVgl8nXwKMPfkyCzF9AsjLHchq1fb1CwTkie8ZYyf7ub30ZhKJoMuduUNM4/rs1Ex7QL6zhdRu3GgSxKoUIm2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRxaj6rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRxaj6rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760824793;
	bh=A5eHElGHXS53YMNIL5WWIoITZ6iMmsB3Op+u2RGJDoo=;
	h=To:Subject:From:Date:From;
	b=tRxaj6rJ1KHnRwraLphrdmCs1gMZ+Xz5a0EMvVgWAnvyTK+vTZ5t9S1QhfvZz3zmy
	 3m9oLgMXTS39xN56CVXVoArB8Ny8Q/R7QzHgwKaCXzV0EYub1CilQiBxvJjPlASH+M
	 BvQC+kyM0ac/DSGA2WbS42HeUU8TRs/2/dWFU16b0YLgh1WXaRcNweSCK1e1o5AM3b
	 0Vkto+TQyJyq6ta1Afuh40EEIxX63CKO0rp809HODqsfGRoaFXzRVwZzS7ZvQdbgvx
	 AmzFq3+hQtM+8Kjc/V62sEyMVZKoWXX+DBGGLNZn8Vz01Zd2WxKofJugqw4jWPGqub
	 GLgN/Myf8J/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF3CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082479357.32090.6153901183663252017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f9a29c2072d18937f9b15f444d3f06edc2cb9bd895afc85877a21df9aed2dc
Date: Sat, 18 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760824793
