Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935A15A8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733084154; cv=none; b=rg6ac/8RIhb+bI0KFkYYlFOm/ptxm8oVXMuDzuI3Qmcb3ZOo1OG1RRO3KTSZalTpvpru1KsaunGv4qS9/VaMxdjzjN2xasWpQ/LAcsWY765/4ECgI722ruzwoxwna0yHxfXKAXWKNVLzlwFOpVzsemmIRLsBm4rEx2AxjHGqSg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733084154; c=relaxed/simple;
	bh=Wdx+OXwtYpD578/2/Pfyxr8ojy9z9BoNvodwBEGpHK4=;
	h=To:Subject:From:Message-Id:Date; b=LuC1b3hCGJAyAKOaW6P+/ddo2cn1AUeawkm4z+JJ95+0s8StDl9ATR66TjdCRuUsxqJzj55V/QuGTx5stN0eR+Ulvh66kqMs7ggmaDfNaNUDlRDlUHXnh64sthvsCivAivP3o8PlLDFgkWelkj0HAxn+aQ+MxLAMNPT4YdLmNyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/icdGXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/icdGXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D78C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733084153;
	bh=Wdx+OXwtYpD578/2/Pfyxr8ojy9z9BoNvodwBEGpHK4=;
	h=To:Subject:From:Date:From;
	b=N/icdGXHZUIcGzC1BwdLZHB7M37Tv0yRK1PeRswknpCjSQbdG5tN78bZtcWDwGhsi
	 F1RsNn3z1DNh69fPaIYi9FP9XEJg6LjFLHl4oyadfimsvDhmGC8NJnZGNxRSqeVkq9
	 KL21mGcDuW45MB/LiPlHPuNTUa1vWeaMwJ0KigmuipoA6Gku5koQ8UqKvCftLP0TQv
	 /G6u6ud5ZeyAlh9JS2QMbS++RYGrAnnMr63EWX5POqR6UZMfJ2Twnb+o9BcjtTZSPJ
	 vKiT6jrm6dE1H0bAWJJIY7V40MPWtfkarJiegGDYQ6HHgkHd0G9Fcnrhgky0DlLMWq
	 MSnEvynyH7JiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E526D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308415362.32568.13454237053635632372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2265bfd01f0b9e870e33389b8245d4969d9ee91126292d8bbd86470100ce8525
Date: Sun, 01 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733084153
