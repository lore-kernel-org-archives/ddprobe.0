Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3C98C1F
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790721034; cv=none; b=iPuen3uRtvxhGMpcVdotVkCLblkbjLfTT8Pb3fWOl+Ilz3TcTxZqgAzaqtguJpYPlR1S0VpC16F3Kpo+6RIDI5Lm54mYAKd6wFcndyv64hI8pVKvOiVj+z7olCziqBb6Jo6eW8cLZArzV6GunKjgdDVQktsLwpMSGInVf8dq6fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790721034; c=relaxed/simple;
	bh=Rveug5ZvMSDSeuRyABHkdHAYS64X7/xLvGOnKgS87NQ=;
	h=To:Subject:From:Message-Id:Date; b=blB6Z69rmWZ2QJprYTKdLq1LViMUWshDC3m0WjPT3IF/o6tWn8gigY/zGhGR60q8KEe6Snq3zevFgAHuHSf9IpJbvjwENbU7PQ3n4BPhysZc+SIkdiljMikNSrW3jxa8U8LH1xs3NYLNLIipXXNvOQjKjD+I3j8f/jforM1bxHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdxixS6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdxixS6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC73DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790721033;
	bh=Rveug5ZvMSDSeuRyABHkdHAYS64X7/xLvGOnKgS87NQ=;
	h=To:Subject:From:Date:From;
	b=NdxixS6yJAj2LNZ2S5jwFbpn5gaqHfrSASPyOSFlW9kqFXqCSzAnaNmgoOpoHowMO
	 UaBqJbA3dnObhDktockDEJeZX/FqDXG4lDeCbzDDXvnt4E4HDbiVk8H5D4FT6Fdptg
	 mY1ZaI1lhxtTLPD5iqcH7dwtFjrhg/F/RYfkyyV5lEHIO8DPdzWl6UKA1q6ym7mBsG
	 z7bq28caXyxo2AWnAbVcPrCCEGmypjW8c6iAjCO9sOIelmcDojsbIhTcmFXsbY5g5g
	 0l7VdmuUEU6yQLvzeJ8H2ljfbYWZwfT3qPr5iS1vcKthsQY00l0N0LrFiX43EIm1gD
	 SXoFjVH+wpADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C18CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072103368.1881.760262921611734909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29ee76e08821e4ca3777ca28a006cda1be2d38970bd0a8c4d888b9f93df2663
Date: Tue, 29 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790721033
