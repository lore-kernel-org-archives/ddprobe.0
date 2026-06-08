Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFC3231832
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780878874; cv=none; b=WwS5QX5y9GyVDKN3J6UjhaGbiAdllq/pRKjJbeYO0v55jGbdkjYHxTdMRFR7ljxUEs5tuLb37v1YXAT7LTpg3xZ/nwRnovF6Wf4Wm0fbAS4mvL6/Lzfl9S9TFbKXjk9glLHgfROHNml9ZhBD5zTKEHNhwZmnXn5d+CUae+GaoXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780878874; c=relaxed/simple;
	bh=qpjNubF0Jx5eO25HVONnpMWLACEUmuyW7HMTtMukW3I=;
	h=To:Subject:From:Message-Id:Date; b=l1yddQIRjbMpRXUHBKKTzvAL1lkkHa3lEEtQQk8ghatXcIDBHGrTUH8HObxNHaEZaxjEOYvHwx6hw8e6Kc9aQnMmTld75WDuz+v1yR74/zn9jbNQze3mn/a0AHZquW952UJLejtNbp9Qy05/5rK81cAP4eXpEvXB6gHxWEvneyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLtzeWIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLtzeWIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6703C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780878873;
	bh=qpjNubF0Jx5eO25HVONnpMWLACEUmuyW7HMTtMukW3I=;
	h=To:Subject:From:Date:From;
	b=dLtzeWIYcGm/aXH/jEB0PM1ViJYEMF/Pbk4XLC8OCLqDS7gF6J8UbuT0NVeUUSxkx
	 P6116GwgBdVlR3kS8K7aEuxRMqDRKgJCsqL3aMfiSAlyN9nj71GazdVZdogaU0pj66
	 OZYUbICEDIKD+xr8lXSYYG/VE2q6l8g5g9cj6aQKdk1HfvMWoI6CHyNPjIZAHy5zj/
	 fR/ZvGmbhofLZGPcT6lAsS4nCYBPa/gq2eKlyT7JfbaGtSJxp3KeWZ/ozhbSZ90UDV
	 cGqL8mr9GjejbNX9+hrV3gQjaeizEUHYdYKhKhOQVGB3kwal4Hs2hUHxU5+LBZYqGj
	 +KF/WJfUgCnpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC319CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087887368.26917.11030735943992785365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa670a6c9056b3ebced6773335e0b357a99f009de5f47ba0146e25b60c109c2
Date: Mon, 08 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780878873
