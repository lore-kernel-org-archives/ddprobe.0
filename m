Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091BD181B9C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716986663; cv=none; b=UwXYi5QTeHOoBzCQy8H0W/u8MTKmoucDfkiW8jYNkivUIxryEDKGtuDIEJxKkF224DkwaZd5mucr6D64NgvpcpaIEiOVoBv0LM2tTz1rNmzXQeFwFo7thMuoGyHfgO5Atpi/bPabf4+DucYNBh412AZv6qZ0A1ztYG6lnWVzQTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716986663; c=relaxed/simple;
	bh=wAm7LHGqkhf0m5ADVIMqb5Zq+rCu97EUstnE91G658M=;
	h=To:Subject:From:Message-Id:Date; b=na/z6G64CArR7cE6dcV+hZ8ORPVkUfnX6Z3RZ92TgWasc32iSsTwaemiajfH0CbO+g2Q0P2dkw0CyaNi4G4LJDQQ4NrUnPC6XDd0WZrnEbj23RIjF6vr5ZqapSq1yK2+s9womIrCMDcTbZwL+ebXJj8DEvtggm0tR5cuhxWINL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXqC0a65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXqC0a65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5118C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716986662;
	bh=wAm7LHGqkhf0m5ADVIMqb5Zq+rCu97EUstnE91G658M=;
	h=To:Subject:From:Date:From;
	b=MXqC0a65eCACyR4OWUgD97KUuqeFfEXyHdWntNfyQQ59Siwx4XNxnMXriNVN003Oa
	 9J7TGcFPTY8HSPKoexCx+pVmUQRejeTJewQOEnrDk35P4WmsjE3bweqED4xb9moxQ8
	 PN1/5OchiF4LVdDo5GqiG/VOrLN/wEFEQ+wKTVEQ9SQopUD92DY3k9Hn9VJ02DvPYD
	 6ngNBbM0TLDuZWZpgNr3IRCMi5WVzCMMgcHoj6i9rmdFda9y/DJS9SqqJ4HPCGFYXl
	 H08zQJbVRHBWpTLjdamvFtsIiSdgs5Epdl/lIWwnD9rxSaHW1ajrArgff17uS73VtR
	 D+bu0HLkD9MZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF895C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698666277.10089.10348618743971885244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fa06c15b6e95006d76c47eeb3a2b24e66304cf4ae8f2e7c03d5a205d2c3a41
Date: Wed, 29 May 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716986662
