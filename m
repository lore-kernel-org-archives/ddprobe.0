Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438763603DF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791748234; cv=none; b=rHEY6TYltE0Wi4s26phTpeqAOXW/msxQR3nF9Wb4BTm2nK65lVb9AOCL3+zYc61MnPXvp1coG3J4W9FuCk0UUkPWTRG4xss64641E5U48WCPFPfU/yqpQsa2H2MfZvgsFlbq3XOe0mjZKUe2ROQveNTbtbmwxZu+hSKPr4pAC1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791748234; c=relaxed/simple;
	bh=8AE4uDGK8wyCzisLDH2p/ER+KLDnh3CFOnmz1rVLNpk=;
	h=To:Subject:From:Message-Id:Date; b=I4D0R2yLcnpfuTed7l9NQ2l0IWa4HMpIYz5zldKWW4lizBMP+SxaPArLc4cdQi0TpoOXbSgZzOIuo/+Unb0A9/kGLl6prvcid34yFmY5sGSNoepeCfjX6ae/H3hBMsj7bpofU7pKoK0OJA84eKn1khlA1aDTw5I7FnnHk/kqTGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6D8AzmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6D8AzmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D371EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791748233;
	bh=8AE4uDGK8wyCzisLDH2p/ER+KLDnh3CFOnmz1rVLNpk=;
	h=To:Subject:From:Date:From;
	b=X6D8AzmT+5Wgz8c8B6AkmIiC7cQGJLXpOs/56/1bvSTvVG2DquwvvKdWqQIrrIb3q
	 KN/H4uK6cjLDcfep6PigxVMIH1C+9CbcRBw4npFRyyE22UprzdVIelTzNHaSkZW+US
	 MlLyBr8mN0lLeJueAtVI5sODlFYvRNw41vT9B8TdNuOmzQtrYsnlKtZ33p1X0JDgpH
	 yTDfayWdq7QEBcjg/Uawr2yuDs3mjlD3Yzjp+HGA5lQERB3NXfDs1Vmn4WBcDJFDk8
	 glA3I8rjDk7H/KYxpClzOxhyjxAUKDWfaeK+gRahG5WVe99T2qedVE04SxeNd7qGOS
	 Xj2iXmmVtp+BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0698CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174823371.10176.7622516554041911759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc456f7dc07a7e4b4c7610aefea649d0033323159e95171219ac238c1f27b5aa
Date: Sun, 11 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791748233
