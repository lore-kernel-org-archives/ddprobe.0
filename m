Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199BF191F98
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762997394; cv=none; b=HBARn2/Ef0hSVr1+5/pFdeO5iwc0r33Ty8Dy2rYVjj8fukucV4DlpdPwDpJ9tyNByr/OiCQJVJ9+lqJZeXyQQ90U52rKfTH1dnAIhQuUix0ibv2SwSNMfT0kHAiv77klKfOMNuCMBulfU8Y9pBP+rwsGEPhcHoU9emZyAmxVO3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762997394; c=relaxed/simple;
	bh=xB/Hzf8Lb2KWSrzktkbDArPTFFWm/II8Ma9tuSySDCo=;
	h=To:Subject:From:Message-Id:Date; b=eB7/PL/GUMEvhgwhRXqL504JA4AfN3oLRCMEtsXLJCaictMO2bcE1ZDFrKpOEWKY6UjvrDNNOH0H15BjuNEDq2y3qZvFWGetd7yQQ7/RNohVSB/34SwZbltns1hwm01xnluSpr61RYU87RfCv241w5p73KgjxjsR4JC+DkJwajw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TthqWdXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TthqWdXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F886C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762997393;
	bh=xB/Hzf8Lb2KWSrzktkbDArPTFFWm/II8Ma9tuSySDCo=;
	h=To:Subject:From:Date:From;
	b=TthqWdXzo9pNIcCwMXN+NSpaANwRj2KIEHaytfERsKV6GAdQopcD3O/fCdXUgvQM8
	 i74Wi+ZYz/bBzDBvVU5kQzp2HYgLaICOTjG61UOQYN72yYY+koLWrwSEHPcBMCpOkk
	 T9CPkVF+VXKBNCcPWhX0eDCxCVOfYwSMsr2fLS/QvKJZb85ZUhRoXnpHXCKYEpSDzS
	 nTmNQ8XyIBvBaFamLnh2u0N2LNHa4LPHY8WvBS4sQNkOf+5XKDYl3g671Zg9t+EtDQ
	 vsiyOeWKJotOJxk9gV39mgA4e33hSYMTR04EG2XmH/pCxff1MrYlBUIG+J0I/UtMHr
	 71P329EgmfNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C2CD4F35
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299739358.12183.10843305966582912556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c1755f555ea90a89de6d518d8724094821020a921ff8041b4a06913410aad5
Date: Thu, 13 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762997393
