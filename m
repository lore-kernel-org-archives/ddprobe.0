Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507BB15B143
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719927323; cv=none; b=pMq9hQ9NaQfCcZR/m2kkz32wOziwDr8u8896AHxpoUQ/LccU1NxvmOHvimRR+8hrQXEQ4OFRi8CRzkw0jbViqSqNBJkQDsdqlmgAhqKm67L/0gCr0IonWoI2Kgbfam3osx2gGJAGt4/1QBiTm1gDuVlgBYjm8jYnvSDQcbD6lkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719927323; c=relaxed/simple;
	bh=qm23FjRQVY9OqDpv0ilo7sktn3G1xkDf6tpNGP+Ygg4=;
	h=To:Subject:From:Message-Id:Date; b=nAGLXzDKx9HtrhtLcNxTQa27zglKGMvuswfvFLWfIzr4WVrqdtcH80H0NyIC71lLW/DSiD6VqCw8/eGT9vdUBhDiJC71pK/NO4+pUh8Ew0ABg5gd/pkpBMDoLXp/UVcECssbDH3FxGiaOH95JO7HPoeMCvoGWyVlDXylZz56WW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udzGDIBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udzGDIBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C98C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927322;
	bh=qm23FjRQVY9OqDpv0ilo7sktn3G1xkDf6tpNGP+Ygg4=;
	h=To:Subject:From:Date:From;
	b=udzGDIBozCDUUQgwpsPp4Sj2cNNvIfw0qViGRwHrXX4Izz7Rgqg+nLcyCBLL3DoKF
	 +czjsmsJIYztI78LqvQWzWf36WWQwjYNkb4VuiLabSRmuno2DYBvWRdjNSI8IW9+3w
	 VHkzPS6WNfl9J9EmbBnOT4rblf+9SiCcEEClPaTGjQxNV2dqGrupDvxd6Lm/waoMNi
	 Je9inzhjENY0njbbX/J+AwzgGdwnSPiRW7bfKn2vF3IgE0tEWQ1oYM+V7ayDs9hmUx
	 JU9kPGiapFE3hZqjtFOdQYWn0WdZFyb683NUlUUH4DqUDr9xc7niSeHQMW7NZoRi7U
	 niYKBIeDMKseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0247C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992732277.23725.8496053420569045601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46ce6ecb47a96082f92d0832cf0345942c4ea1db4e8a7d6a470a6f588b67ff6
Date: Tue, 02 Jul 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719927322
