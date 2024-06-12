Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B34153509
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718196503; cv=none; b=GRZC7ga3NAOD3Fmc4j9+m8wW4oGdezve5r1XqlcTnazGKvY/4wcaHJWhevFpOQu1skCxgKWWiihrKA8Eicr5EQSKUHsXj5IcomfNWNej7JhIUmPQeI/7gLFmwCid0264k4oAqpA+Keo+FkxNVHyjLyCAfQelbjtvirhZwvU3QpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718196503; c=relaxed/simple;
	bh=zhbCB4gKv0FRNwmIGkSoEc6/qbq9Zdw/XbDUQ+rdExY=;
	h=To:Subject:From:Message-Id:Date; b=LrrByGUmE/e33HGmAGy2psHVJeXIC0SXyx0eSXi0kRJNKlFpGoKPSvUXsvJBcN4ELSef0mfAkDpvTKA1pcbhAsHnd2eRymAS93R7ihYtTpAllqXn/teovnU1YQjYGIfg6UULMoMQRqCfrRIZRX3wpRZO5O2Pa8BbOFTxc2w+6bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewj+DRKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewj+DRKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD03C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718196502;
	bh=zhbCB4gKv0FRNwmIGkSoEc6/qbq9Zdw/XbDUQ+rdExY=;
	h=To:Subject:From:Date:From;
	b=Ewj+DRKDZ6ImTxOYbjMu4pf3XMzdyQ+9KCmyrOc/P0ru/ipfrbUb8E0VrCBUIN20l
	 6BkZxpUvu5Z1FMC14aJYru8vA15HQVOBcA2HXn6Wvw9Lhpz5Yc6AcnAOijLYdi2yme
	 Y/tRiT5IyRZQ4RcjbmU3kes8Qx8HXIyUMQumCB+ct2zd3IYcqxmV6lPSWnRnrT6xdU
	 u/jOgbGAUICU82eFuqSZfzLJVtEQPQzraCvJULIrYOOSWeMfbTO08dQ2PMC7EtBo1e
	 cEz9Nb1qwMpwX1dtziaqEauSDl1bsFeVW3owvaJ8nxj89ogDAWR/JcPDVVp3OSwA1v
	 U1Ky3vu2T7uKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE03C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819650281.785.17406237268800297750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8632a2b8e37811c8937bc7ece3ba5ef3c7a164ddde987aeed989806059a0467e
Date: Wed, 12 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718196502
