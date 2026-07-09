Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEA31B4224
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783564114; cv=none; b=BBRCBjQLuxHrmUxr3G3fL63oMaQkTvSIQT1DXn9vbvNpHiYotQ4xAsOBU4rwVicy2NvQSRSMi1mqUBrdvYsS/b5lN97mBhDYpf/FfU9hHTGMPDJWBBW0WJW6tRdZNRY5z6O4mnHIs4ABZj9PT0IwZIGSctcFqNo6CyMOG9OvKH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783564114; c=relaxed/simple;
	bh=nWESDQwm1sWCFIiChH5xj8OX5Me/QZ8wwYvx0z4Rj6w=;
	h=To:Subject:From:Message-Id:Date; b=lfdYfmlyLMDA6oUpdXEP8g4CplN7dm3RvXowsZYB9e3/rxAP6k+5kB8DpTIv2c3nGUpl5C9cJByXNlP4qkhVAR/u/OAxjzxUAYlVonu8S/l+c5W2+Rpwo0rarK+7zPB4bfcK+XkboRiaJeA3KtFbnNblw6JcAuC0ycgPf7h+/18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1AK+i1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1AK+i1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C879AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783564113;
	bh=nWESDQwm1sWCFIiChH5xj8OX5Me/QZ8wwYvx0z4Rj6w=;
	h=To:Subject:From:Date:From;
	b=T1AK+i1lpjNJSD9q84PLIP3AxbArp3BzYAesj7uvHMII23QpUCAEbW3nFEVHBFOcu
	 HlWMHuHWgKb6zZa1VMNLZh70qYl9JxosnQS2mQeZprRjdkCecNrJs1A3UpqfnqoZg/
	 VA6lH94eaNHklKBHoLLwOUi4q7zRk82elwzX3ei+PM9Vy0cHOW6NST8kzIcaCAzvHL
	 61oZUTgnZSE3ewBmHuktApnPyOvSmkF2hEmOMf0nGqYHAcu9/A52Myffmvtdmr0AVQ
	 9vjOxaCKzZBSPCmBEZYdSfakqzZsgmvdojRXEwHCpESNBC3HrapwMnoHyJMvjaUYJj
	 97wllmFIdaByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83A7C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356411368.16736.3102445922890364766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1c22afb12cf4d67d9fa97d72674f08089a6a87a81af3554b4c0b1683a3e0e9
Date: Thu, 09 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783564113
