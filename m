Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A60101E2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712479096; cv=none; b=BAMiJOHmp/mJCogW/mhQilOlu0J60uOifQjVVdr1sBZ/9SsAjySdnyhx761ELT9pJpjHB8sK65k4XXlgaKGX4NF+OStcDWDHccBpJlRZKUtZRo6kY2ZQUBxUEn8//2lC6KskVrmTxmZYC/Xzulwi+Iov4C27vC5DnBEUJHbWiIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712479096; c=relaxed/simple;
	bh=oR7M07ZZ7jkgf/6aEmPXKdhZc6MMEsynZHv/DVOQq7Y=;
	h=To:Subject:From:Message-Id:Date; b=Hfd9u0058I84djCQPC0/TDWa6Ff4l0BvLvtxn+06KigK4Smolw6bUVi6f+rfHZtVxmyx1UoxEs/bdmWU9jM2dU95acGUqNCmSVC0i7v/gC1Mw4XFqXYzSCUKk/0MNJzVr+bckut1qMkDrLrPbC+6n+BghLXSUWbqkEZO9Id8TSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnJcciMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnJcciMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ADFC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712479096;
	bh=oR7M07ZZ7jkgf/6aEmPXKdhZc6MMEsynZHv/DVOQq7Y=;
	h=To:Subject:From:Date:From;
	b=lnJcciMyPnvPyc2UOp1g7tg19/2O6yvEHOdzyD1dha1HBHT8J1Ek95FiZaZDC7QGA
	 0U0A/Wp5yTdS4CH32DdvMg2TuUfxR9VW+MlIh9trzX2Jp5O1qjdPgXF4C/TSw7gDzu
	 V/9IdJGTjjw/oSaflbUjKzp6UVciAVpE6nRm3SedWVKL21dI/aQBAlLzUJVEht17tH
	 tdReNsZCRn+waN3tdi2vPUj4VvcCntnWd219HJn4Mr2YaE5cXbjsjBOtiJfaVlI79h
	 ZC8puJIC0p9I+papWHFVT+CpQAIAjZkLsM73HPxrAdcp7UQdbZImqJw5vqiBN9s0tA
	 m3mWL3695/sTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3F2CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247909636.26457.8966848415615370751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4239ce452a0610f1c4ff04e1d5156e1407a3c8a069c5c1ecac8b2c62724ad7
Date: Sun, 07 Apr 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712479096
