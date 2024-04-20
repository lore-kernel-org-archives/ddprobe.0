Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD92524A
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713573023; cv=none; b=TokDwVTFqTxvKk50OsjjtVfhKvHtjKWU75k3sKsDxqRLbMSFkF15nGsN4D9PPMwO1n713o8X4+BrG78OHdVVdXpHF3GRWLQFjVjmTK840oKt8pcT/MO+RDVLFewKNJXT1AcxZuSUBl6JF0FaoDCHiokF+DvqJDJwlpvnQtFCmSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713573023; c=relaxed/simple;
	bh=PC2Q4qdY1bXgdS9eulzNuYm1cWaNDgUCD2NWBFR2GiI=;
	h=To:Subject:From:Message-Id:Date; b=bCY55K4vC7qCbazhCsqWv4KoBV5aepETZb448q07i2m13HgBUYfsfPPc4ltB8ymel8TK4fbVlMrs0CRCZNn25Oron0pGJ5/PyTNr9jLoqBogC4CAfVa1v5CPWgJnc8T+5k2pxdLDAqBCXEcBYDN7ylK4a50x4A33WdDvzAYXvqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEHZt7Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEHZt7Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC38BC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713573023;
	bh=PC2Q4qdY1bXgdS9eulzNuYm1cWaNDgUCD2NWBFR2GiI=;
	h=To:Subject:From:Date:From;
	b=KEHZt7UqGqQSdN0L03i8cKUfHzJdh8m9r8wvCZXSzzDDXYzM2QiFziZbJqiKRCKDJ
	 KKMuQ6chCNpTFsy17dHOOvlZKOae+8gB3fIWSoPCcsiZaMmDr0HI+vJ/Fbn9a2xaOQ
	 z/djRnxEhk5U++35jA10n050ZXr1C38Mrksw/w27ZFkQApWxAFLE+OgZDDNwU7xi7Q
	 zedVTtUTtEmyQp7zP3Ey2ZJWNIM1+1rnXSnnVFR4keZ75jMSgSFruEVopygg8Jh2Oh
	 E+xp/9mUNJfjYR0VZRbK1BjW6VFinZy+tXGzyP3nCdJMxdLxqtVRqBlB9739CmQh8u
	 ef71pm7wgOCkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECEBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357302278.3309.18441059231076183610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca6550fa0c3d209028e70825c5eba3d7d5b8a2acf50a5e9544aec2bcccf3df8
Date: Sat, 20 Apr 2024 00:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713573022
