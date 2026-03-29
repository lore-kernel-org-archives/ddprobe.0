Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139BD22D4DC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774769094; cv=none; b=k/Wyt4aERj0mxPKTlnISLtzK4VhfgtLEEG8XKqvsHnAPFncedbosWwUEt/JxVuf+FAOD44Asykh5oxkJIMmpG2A76kf3olvwGnlPaDKzwiazoD69Za3skuj+ul8yerLFi58rL/ojj4/hvW+ns+WdusGfCC0d78JqMNyjoEqAQXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774769094; c=relaxed/simple;
	bh=vyU8ih1V+KEetUDxpbosUq1ZVPrW4jnErUpe98ZYj2k=;
	h=To:Subject:From:Message-Id:Date; b=GzRLPKMfwrS/HKKfe5AOsTY/dQLGTKMewYrwhmyIi1bJNjCc8MPF14dNqwjA3XZuj+Fz2WCKKJiT1sH3sGpIk57N98Nk2DLY8BAY9sAIPf/p24v4MjYqQbzwuhCsGV2c6F92nELCBhNv9fcFrNaAURO7haM/7mSQl8cqt8YkxVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH6HRBsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH6HRBsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3521C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774769093;
	bh=vyU8ih1V+KEetUDxpbosUq1ZVPrW4jnErUpe98ZYj2k=;
	h=To:Subject:From:Date:From;
	b=HH6HRBsOxVaeSfZdBRn9JaAkVIj4OF+30/Cwu2/BvNlJvpdgk5RQ2hcWke67UVs6p
	 y3Xu4AGTVIw1XvMfJ3LxW3AyLOJu/cEAqdLE8kl43Ju0uiAR9js/FABY4nkTQc1hus
	 PRAXSaSfZPwiRjHdq+Lav2IWDtUr9ItOQKMjhVa/qk2zZSAorckQXGOwtgevzwr3A/
	 ZaeL7aNNiuJph3AODDdYVy3V2oWSvV/azwLcMmxrBn0N62ny+GPLvfs7MITUUYU/YU
	 YPQnqJ1OFQCFZjcdmLJuMpa9rKjhlb+2ocrgd6y68tZjlr1mOpra4H8sUs8Jpa/OLs
	 xHBOwJnWe2wcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141CF3D5F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476909358.6743.9325330494197505228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5ab0d959b24d493174ece950b3a294b12e950483856982a5180734347abd34
Date: Sun, 29 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774769093
