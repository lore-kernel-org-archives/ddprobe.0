Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6854A04
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733017554; cv=none; b=XgyfP5zuWcgAaNam5++DdKnVFIJPGW3OdMC0slOw1lW44UrPxwww9WBHiFESP2WaxhuKCXj44E2mcZ14Sukonoe+IG9x1AhDNLdU0y6IG80bEnn0JPNPeHzpTteEQCfUO8uIblj+n2x0sOuUKCX73Dza5OmFY8onlMJ2leAP3I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733017554; c=relaxed/simple;
	bh=Btiyrwh0OMw6yo0rFMW+KyK8u6DPc/bCtFORuwrSu6s=;
	h=To:Subject:From:Message-Id:Date; b=pVcFlvmjok7yXqJ8tqKFUWrNIyDfkf7dnx+jSygtUuFimhsel4zOfI2odUkP2yULqTyqnsunUfF4g+mITicjBGs36ztuJ++gWQXJud+8n2UoOITV/KDQhT3yku8xAkXI8zS3WXrprfBLSN5celRTB24TErWgHQOHTur76RiDtfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2iYNNWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2iYNNWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3F3C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733017553;
	bh=Btiyrwh0OMw6yo0rFMW+KyK8u6DPc/bCtFORuwrSu6s=;
	h=To:Subject:From:Date:From;
	b=u2iYNNWxbZ669KniBObLJ1GvnSWXRReU55/S25IBh9m6XDRUKx8XZ7xg+sWo9M7Uh
	 2p0A4WQGtTLbzlYeNRvRs8idx6wRNjB3UOFmp7d51qVxNfUaLZ8AGsbXNay0H8WkGb
	 ri40twXF4EQGmkGVANe4WDtammwxuc7ky1E2/c+CzvqxOUUJyBbWEHdZTZng/UY+DH
	 a/mUuDUM5A5+XkeSUf/ThhnJ1Iu5XMPWsloRtet6sL88wlD1qWPwgkcPRKi16D+551
	 lBUjrE1R3kPqlGIkW3StlBE5jhUDm/U9gevlWXDS4Ibts/GNvIiGVMEkJIotl8qF1o
	 PMXwSVE4BmGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB08D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301755361.26487.5517102367064630379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c413121f1e9fb41b6f9df092823d2005698b15d8c96c1767a0ceda8494374170
Date: Sun, 01 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733017553
