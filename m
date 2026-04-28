Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3B42F2917
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777367854; cv=none; b=AUr1flIqRygT63NPPHw+8Z47RwU84SSeh7On7SbeepA6y4JRZZmcvnIrjkF1AmGLfefAC3M+cYnd5xOKth1f8FZ0loomp2xvE3HuS+hg7uOFl0It2QHc/icnJLWEX0Ik3/9JPoFC2t7YGy5hP4oS9PBazeTauPBTyGUPcTy0BAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777367854; c=relaxed/simple;
	bh=Y41BUffh55GBpotwAR1r/vJETLFanMFRixo+ZpcTDnA=;
	h=To:Subject:From:Message-Id:Date; b=AwlIZDh1vZoOho0UoUuJaQmicoAq0y6wHLHdKDKdZfGg5WUEenQfG/vaqMu0n478obTnDlDQ71rdR9KDMl3T4oI/fRD/WVj2hgQ1txKkkbXxltxv1EttmVEyNDu7ZvK4xyovvALEfe83vpZGy5RZvpYv/rnKtN9IOoiz32E/i3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcRuTcgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcRuTcgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8194C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777367853;
	bh=Y41BUffh55GBpotwAR1r/vJETLFanMFRixo+ZpcTDnA=;
	h=To:Subject:From:Date:From;
	b=FcRuTcgBBtW0lDm/QY+Oe1o8x5mrVukHUyPx8Pah1vC723BrmD06fgFxrQYBI3EtM
	 r4hnEPuCA9a1b5ZicjnFKlljJtCYVvSgMjXNDn9+Zv32ZQ4DUYPf1R/garYUGL6a3w
	 hAdYGKgFfBh8x7udR1J4uaSw2JhdFW1201o+IIKEIz8aO2cZw+3GEgS0v5duY2kA+v
	 eGucYjV4GXraGkm9BJlKY841jmoz1nlml9ZpBnnsjWwxhqRV6RoQbrATl47jhrAswH
	 wJfsn6caqL8de1TX8Z/NBIrEyeQQbljh1DNCc3V1I9mPaNpd0S41xqrhCDgd1Soaqj
	 tELgSNuOH4BeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E83FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736785368.23169.9693787558710650569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d82ff36e1f9e4269022b6cf709329feca1ec1d87fe855ba5d1fb5a05e236ab
Date: Tue, 28 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777367853
