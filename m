Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F23B3891
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787638234; cv=none; b=idjfQoHIEXooIg/WWhUaMbcGC9qKOqnb8dP9GA0WK4qaQdIxIGUq+k8MFlrvR3A72HE8HvT8QjCMXNcMfsMeAR+kD81U34UOMU7iv4aXRh2VqwC9KyZGfU4PmBYnKUaJqkKEg8Pvrm12aXsIGWZVA3XvmphOGPqeqg6Sld97LYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787638234; c=relaxed/simple;
	bh=2MBWxpkxmjvkb6OWEWnGSRapsUXA5GvWMdgKJTjq3uU=;
	h=To:Subject:From:Message-Id:Date; b=QMu1Q8lD1rSYEu9assE0jJCXAbd+plX7GJDj8a7KUvEIYCWoG/HrRiLZA4esgoTzlXLafC50DdvzCVEp0R8lIrL2Nge6kcdSjlFtUDfI10vQDRVw89aIW12IUm1rArd1bzPY+9e5SjgwX6d3SI2jmcu/saAtPAaQS4m9pio/cPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn2Jfi4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn2Jfi4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D744EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787638233;
	bh=2MBWxpkxmjvkb6OWEWnGSRapsUXA5GvWMdgKJTjq3uU=;
	h=To:Subject:From:Date:From;
	b=Tn2Jfi4MzTEM2hf/69VXpm/mTz0DYguFXA/qTnvDMbwyxAc31N3v4SrSoEsSxcpRv
	 fXcTIs276i8WbBivQ9w3DRAdPUT59Xx2j/Csm7GyCxDJuzNFfJphwnbTbs3W5tp3jH
	 egPZVjUjinaMLE8e3OpZXsO6HPMNg9LQeDuomdJqt2MlFqJ4XVg+M8iIZiesTnmaN5
	 47Uqbz1F0uohMl0XHjXd0c/pDY7WFGCSdGGlnRw0wW5mThdX31vRup6XvRa5SznRvA
	 Cm7Stx28fo+8CXo3d5dT33SHrS511QH/LnhIfzP2fWwEr1vyXokodDVwmKfgvFAPy1
	 PEDPqKHUI5O0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EE4C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763823369.4525.8420584978022538570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa3cc7c42e3d59e53d2c1df9e64a82d024a66a09429d660119b765a923bce7b
Date: Tue, 25 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787638233
