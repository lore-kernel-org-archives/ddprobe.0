Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4183217C21B
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757868594; cv=none; b=hs2N8FvU8Ok8Fltb/AyTp8cU2VVQf8ptlt2VKvtcPGCij9oPJ8KaWgz4yZ6WUXYbH9ul/hx9FaOaRssNaTH1tQ4uAaBSekg3+TnntuS+QLtAZtHawB/q4Tn6o5jp9gjFNxHCjXYr+Ol8bAjtWuh36QBigajltxeVh4e+0uVVBoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757868594; c=relaxed/simple;
	bh=pBMG4+PKyWfvCt+CR5C7bV9pR85/wXPZn23DWEzNWNU=;
	h=To:Subject:From:Message-Id:Date; b=gO6AaIN3HI1CWhd5XKEtuE8oa/hYS7mdOzLbGxnX8n9+JcX29K8MHBUPybtAZTHtub17h9HFkZhvZAILvrb/aQQ3ZpukPT5ybmzVs59CR8KG/v6kPMkNf/eS0IwhTJJdExqYnQtpPbNSHrzfgx0m3o/1ozh6759MoBb0uvRXuAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL/CWxnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL/CWxnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D06C4CEFA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757868593;
	bh=pBMG4+PKyWfvCt+CR5C7bV9pR85/wXPZn23DWEzNWNU=;
	h=To:Subject:From:Date:From;
	b=VL/CWxnLbe/EwW4quAcAVbVM1IPiRLyNCXXdOqlibjPr73t6InQxYCea9Frn4PqGK
	 zUAOuODTQBPYT59gPmuILCctAfZZmN4yZSUSB2khpU6NLiJ0a3aDXiR87ob5AWsL0r
	 vXEfk0ZUSfbrc9RSvqihHlgDE8c0AMl/p1t0xrRzMEjwPJ129W95x5dJ620xlM8a1A
	 wsmp8dYsRqu9FRarohQO/Hv4IJgyyDMLAVNH40fmyI3xW53Hv+qsZK0wtrZ87vLlBg
	 l2D/kJoLVKicmynujBOQDwCUCLBgVT4UVfgrZHZsIXFluTRpD7Ufs8J4iHxcPyVcIc
	 m4HSm7m4nH+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95204CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786859357.31280.18123479308066727507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e02b9cdc9cbd05556e13ecda7a4736af4b6207b05b8ba23a210da7a38b943b4
Date: Sun, 14 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757868593
