Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF41F3B9E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750619394; cv=none; b=RIYzIrgY3zhe7m7No0Sx9eZAvS0AdIhvm43+HVR5NWwhIRiQXskiydGDuvrpXSogA7dFGjFbrjOFErqDv0aLRhKtz+gIGWzf1PFwHWZHYBywYE3eTYBCoT1vvshH1jY7pqjnLbZuexk/6pwsVfaTKSAbsiD8E8KfNcqSqR5oYz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750619394; c=relaxed/simple;
	bh=ZHJpYxUwYGNy5GFU5LkH6AH4+Ma6v+Gb97SebGUC1tk=;
	h=To:Subject:From:Message-Id:Date; b=lHe2i5OH5i6M/Pccm0/y9452hX7xKD1jP3jxLZoeE6jsi5Hu4fUTZNdG59AC3395EpvjvobW+sWfuqDLFFzLyEjv5P/x/S/k8s6Z05IMVMSWM2krH8QMpCfdlxKXUIjo4S0bJG3i3qQr2PXEOFISZKtpDAaidEBKszqwtJaAjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ7dNu9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ7dNu9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A256CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750619393;
	bh=ZHJpYxUwYGNy5GFU5LkH6AH4+Ma6v+Gb97SebGUC1tk=;
	h=To:Subject:From:Date:From;
	b=UQ7dNu9okXF7Negu0vKxyLUzFb66mgHvffbOExAeWEnvrvpgbFrTUuYhKJmj6F+Rk
	 SXT0OAjizjhNXm4BcP3bCRu4g9U887KIfpUM71gYn/nmI5b3iCNwV2N07vL75Aheba
	 bkliLs1MRhD5gEuFNWmw4b0dh5lrVprBW7W/jELPRwHvzWfjJq/TDJG3D1ZrhlaPsO
	 Rmp3a6SL1TO0LklAVNcOyvl7G3tW/RW15rECJNiP6ORDWdLOImUbtFGvnSRkwIsLaF
	 vw6CUvZKvhgtOukZfasfujcOURh27SVYoWVcJW5sLwTVCDfg6/Vyhl+Ly630IHfnpe
	 yvXVum8KeikeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0EC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061939359.19897.15230467553996232013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d388cde6f06732440efb6cd6627c8bd6bb4fe34947d072dfc2463f64fce1a1
Date: Sun, 22 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750619393
