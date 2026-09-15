Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EAF3C9EF3
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789479634; cv=none; b=Md/U4r4zc2r59i2u1YfrD+4g04rnxgxjp/jMRAQbAu9SrcRRyOtM46rm3OK4a0mSCdklmTFEKfpfaYpViA69lyWjH0KR4WORRv2Ollpy169nNSs2g7ywqOTLH/QFEBNMeqo5WZ+4b2SiNXnjP9aHWIxl6mEVRYSExJ9TYOQoVrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789479634; c=relaxed/simple;
	bh=PPd9oKgiBvpsIABJr7UF8UE0ME4MLD5Oq9UE70e40zE=;
	h=To:Subject:From:Message-Id:Date; b=miaJnriHB7qcb/AbZYZUC1atQmNAnnU33MB5SvwDLE5o37UsGmGLcDoVZWascgyUZjF9dlc0kyUI+mTnrO08Je0CdCz1h7cYjnPnFKg0KwLZQwDcqEUx/+/EK410Qj0hiRZPIvhq+YUWLtn+tTpkUZrFV4G4j4CInOhfdlky5ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoDfbM3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoDfbM3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB63C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789479633;
	bh=PPd9oKgiBvpsIABJr7UF8UE0ME4MLD5Oq9UE70e40zE=;
	h=To:Subject:From:Date:From;
	b=MoDfbM3okr/YQ3wuuBdCNEIx5dDoBAZfyGFVxOvsO8/y3x4HuwPW+nfnQQdGz5CjG
	 e8+xO+cf9Wo4pUshOUjzw8ksG3+E0ish903w9ioSmYDaU5N/GEnTKVmDSOpj+KX6Ir
	 p8Qb6d2vwGlxhA7eIzf2XPmzRgRsVz3quYnZNfQf3l/G7ZEvN0IpoHxm+JW3vPlTl+
	 odytm/ZwYq8zM/arNJAN3WjRgzuMnM3yUfgffTStE9crJZBYybEHt5pkErhTTlkYEO
	 yDFpWCoj3/XV8JDxb92OGEyn/prkobOZLXQXNKu98Ydf3aDk9JuAB2K/Ilp4NFc6cK
	 yIZ3x6NgJyirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A921AC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947963368.27744.16191184164817487665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f10b10cfad2db1a2dab2d9e1d5eec0b9b5de86343594fdff35a76a15f110a2
Date: Tue, 15 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789479633
