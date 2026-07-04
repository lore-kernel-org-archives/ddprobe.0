Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5B12DECCC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783165714; cv=none; b=MHUE7X33b4HoodWCk9KJjeFDbKwnmSsR3eD9fM4QyJKqZtCzaSworv2hWdi1MPHeKS2jKEy+RYfw2qAfAkJ+plH4uhTCDcGrMmc9aV/d2xrYVOQMA0vhcMLex4GUqv4Dwh8HBvMlokoWiVsr7vlFlBT/pWMglfhkLya+zxRHH0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783165714; c=relaxed/simple;
	bh=lQN1HUKStQxxVK6rV6gWm9LOwV8xlchR3smSJhIcEP8=;
	h=To:Subject:From:Message-Id:Date; b=jCCFlxCj7GEtA1x0bi2hjnxIgcLeVsIUvkfSM5YDZeMm4/dIEPlH4HyLPTbsIas/+EuLpBgC0wulzvl27EVHtQkteFCX1QjMGVssqkRyes0Jmv0ImCl7lnVrdE4Cih1tWYgX7nCyQEhpmpILwsagkmTIRIiXEnJNp6hEnGTuT2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDiKju+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDiKju+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D071EC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783165713;
	bh=lQN1HUKStQxxVK6rV6gWm9LOwV8xlchR3smSJhIcEP8=;
	h=To:Subject:From:Date:From;
	b=GDiKju+m2Et7mMrcdJ+bQ19xPyhJhtynHLvF/OSusbqZ7b1hMtZQOQFBUiFdzJm+e
	 CCR6v+S9oVd3OAbsfY8G07MKDUiCW3pegLoz+LuxBzfBj4/G3PHkSv978DcXXRPuIz
	 uWSbJXYRRJnha2AExZqs8zzUNI4pwM1JPuN455UtOgZQP45SBt0a2oPFYjjV08ccfa
	 DGy/Mz2EiGTlNFysw2TD620o7+YXRbVGZFrtt7Jk864rUJFJ4TyA7x+uLG5vo8G/TP
	 oyEFMAMz5vOJx3eoYybUeAJSabTwThlBBYFXdRyIP9X7kmD+mzjSEuva71Yyy79vjr
	 3OjHw/IEDlE+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2CAC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316571368.13821.15398945307891257260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecabcc8792c87bebbbcdb4e53c9e3d81a41ddb3cd7ee030effae0819d5e3b3ca
Date: Sat, 04 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783165713
