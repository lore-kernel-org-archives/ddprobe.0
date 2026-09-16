Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BBB4A841B
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789566634; cv=none; b=P8YDLwm/UDwaA7dQrs5TY094zXx9TtpYTJjCyvcKaAbn6Wl/Ek/WtLRIfo8PH8w1RKKGLJpT81+boqzlBVBQocOaJaulPko2CwRZnzVfMMhirEm/qdZZ7lc4lwiuRI83NVfGqfKLEeATsDQTuUQ2PK99FmcKKgrCWNm4xW5ed7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789566634; c=relaxed/simple;
	bh=ewkc1doGA7RxN+0ma9uRnXa8YqM8xoqNuYuTz32Qz48=;
	h=To:Subject:From:Message-Id:Date; b=pVCL44TwcipMKMCA2y1OXJzUPHrqbV3xjueo3BJq7zSSLLwJT3zRkaWG+S0+dN8MurkRbZ8omxHEIagzvP9gT4VzmzJ1EnAVhZLI28krGpT1bV+cDpxTCZ5+/ZarFrLUbQZ8MCwgO1j++XKE/9LFbHeRDTSFASdZELkvzPNpzJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzxsCd0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzxsCd0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13D5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789566633;
	bh=ewkc1doGA7RxN+0ma9uRnXa8YqM8xoqNuYuTz32Qz48=;
	h=To:Subject:From:Date:From;
	b=ZzxsCd0bktm4iuLng8JpqUWfXmZgO1j1vjgaAHMaVuoRetSc2T+C/Hvt14NlyfNTb
	 SJY1wTnuvAf2jO15n4VEknZTyrdTBlncyd5UViceLZxbfPB06fdcvSS3nBzLTYBcKA
	 wUiN/MtsuL89C8ED0VXYdctU7eFT3rs1O2QgfBQuWot5wwQ8zx9NNq+PTINO3MHguE
	 BxR1etL3kpRvLI00r1MyF+8KpjrK33KbaNZ9FGSjq0dHrVOYtVYAfcXdSGoEfLj0ce
	 rum5iOOH0z0oNifmop2r7qxGDD+qYX0WyD+R7ayZpX6jK9Nn9CAa5bmT83O6Ak82OU
	 fHmhzHLgY4s8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8E2C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956663370.12839.10997460774908053533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa4656bf750bfb6f96740668b620fe70a0d6b80c469447269697e6295a53108
Date: Wed, 16 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789566633
