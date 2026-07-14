Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB52370ADA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784072914; cv=none; b=ObiF5p72Ys0XuPMyAJaLW69OFxNJKVdMdnxpirmlhK7mP4X0rhU/slaB1EHYKiPvufWqOYdVnwc2Hq+KlMfdevtyuzDj7l0FhvP07De1w+kSsooDeHXpDdtvBE96Bj4il/ewF6mlAjKSfXbLMfR+UYqR4D3YCdHKs6ArDWYppkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784072914; c=relaxed/simple;
	bh=LJSymsh/QA7fMInwLmxS372Kc/Ym14NsF0Zigd7Pqr0=;
	h=To:Subject:From:Message-Id:Date; b=H++GlcF4eMuhQNP5hERLPXU9DRYCdsCYS8z85R6DQqrWh5ju1cDU7n628NkqHIqnMDSlS7qIINIT/GAUzAxlcAlBfag9/UxGujnILCgTlOhH3dBoGucuBiNIpbcbg0Znz+wbhZopju8djdFbgjS+90Bizsaw8H3+SeZ12iERnOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7puZC2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7puZC2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1EBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784072913;
	bh=LJSymsh/QA7fMInwLmxS372Kc/Ym14NsF0Zigd7Pqr0=;
	h=To:Subject:From:Date:From;
	b=R7puZC2f8tQnf72Wof7so4ASA42BFpLLi9BKu2Bdaluj4TGzKvRp0Y/t2wEz7ORAT
	 xU0o4F4S0UZOVgXI1bDlimgnvd05s6DB6Oa63uWs7YKFA6aIhM6YUvhPhfcczsIaHv
	 Nk92wt+uNLP+9hYH9zX+fdukKpPLYdDH+gfnjhVIBJuYCI1oKsG09g7cxOGZHrq/Cf
	 pD7KUNAJ4BCkHI+1SUaMehmESuXowdRlpkZ98xUCzT8Epz2oeJnCXAZGgIg3TLJjOc
	 FFFBaVMLPOB4riGPq2rLBo5zHXpXWhFIMDu277LsuUhfEu3gT/8hpkXdFGu47OsOGn
	 CijntbrMBbuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56EC44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407291369.10176.14028397488779519057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d643e2bb48c2474e2b11e868f0c30b0f5a1690121849f5c48be67283c02bf5
Date: Tue, 14 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784072913
