Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312291DEFE8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785671434; cv=none; b=Fki9W8XccbDw/D9ZWINIo3w3ia1hjcjivjW0DJzUhPRxVCaZcWRl6xkycTfI2bZwQ7daXgSSP4ymn1cJyaybFG8GZArzDGguaY1Whz8RPDOSFF12VyD9THS8ARfhbraMLtdjfUVUmwj/odY6rSiJ+r3BHAW8ugGeLKMLylxSx8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785671434; c=relaxed/simple;
	bh=/7RPL0lKga5+HNdKHEyjBylBTLj41WVVIOsV62ux72A=;
	h=To:Subject:From:Message-Id:Date; b=R5WpZSwsorqXx/WqSxNczgcrkWdOQFDtJQ8VE+2fcV1OEYUI+mDvpp3Zd9KI6FGmeO4AbU7H+CLdHEdZp/FzdHo42LLTNom+LMdlfCLEz3Ktd99g0tUr9DU4mCAvX6BX/oQD3BZ4lk3BbDE93mcc8xiqDnJci11cEZPMhcOG+cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpSJCIVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpSJCIVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB08BC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785671433;
	bh=/7RPL0lKga5+HNdKHEyjBylBTLj41WVVIOsV62ux72A=;
	h=To:Subject:From:Date:From;
	b=LpSJCIVD9Hmv3uGMKvo/FUMj5sTeDxGg8S1C7aCCSAbnDUqb1fk2Ntz2eSy+SaQxa
	 afbrLRtslLssm/3zZEtNuSJkHj8RWslqUfbwhFvHofG7p4/S9zhTBfZR5wJ4eMcAwN
	 DfyhOtpe3L1ACGQMoR2GrIC8hj4otpni8xWizVZK/KItWR/5YiATytZfbASwDA1Ahf
	 Rg1sqDh2wE7FMDsU/LLO69FVyhb8XnXRbyFkECvkgWBNidbRuNZIENZhChfgyEJiD5
	 KGrtkYwY+Pu97Vdt0hUgMN7HYtS9hmQvSgqvbYVxtduk2ZO/U4R2eQGuDufAoYlv2U
	 Bp1p8qdpuTicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC5C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567143368.21991.5089043526576421049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358f9ca48df44c021aa22a9e0a4c01dac97bc76a9ec8b9ba1ad2b94b4ddacf4f
Date: Sun, 02 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785671433
