Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414C619B3E2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719241943; cv=none; b=aCqe7dkjJkMIhQNOJBo+6UJsdbYPJt0sbSpvhlB15fAU9dyBqdQdVPW2z9RhQmsZJRv2XbciokEUg64unDCVQpWBmoQOJ86kUnnKKPYeD+YSwFaT6KT4UgAC9rbHUp96bfTaO90iVDzIg3mKMRLOU97AWJyWkfImBz2RRyOFgvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719241943; c=relaxed/simple;
	bh=XjFbWX+031OLFLScpbAGCIDNTuulrzWaJF3O39QhfaY=;
	h=To:Subject:From:Message-Id:Date; b=NRiOZQ1MqSrZbiZGnxlcLcOTgDsISikVjxpP6U1y0/E9SaGNOetpCWDqftlFiisXxIc61AhYpKW79bbJ7NxJG+3DS8tuE39Ekm9yxwwtcng6ypaRHfEfEfhOi1FP7oYn0BiFtuv6hygmvNYyUCFx3G021EsEj05pzSxgUJ1wruQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb3eoWjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb3eoWjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD424C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719241942;
	bh=XjFbWX+031OLFLScpbAGCIDNTuulrzWaJF3O39QhfaY=;
	h=To:Subject:From:Date:From;
	b=Wb3eoWjqB01+SBpMF3vHnESS6RzM3jcuhUJh6B0m34uIvQUnBBIitAXsL38KOK1z3
	 kluhuT/NfERQ5X6kUJ8NILDitCCyPY6YaYLAsd729iY5DCQpH3uXmKXwl74xKunHqX
	 jJtxJAn+OnVL1BWjR+XJs/fG5SF9WU4EPLwdGQMoQdSeX3lDQF9IYHp+sXHz/CCmw+
	 aEPhM07xpAhTbZ/VV+zdis8AOauXrOKg87v2CnyNM6Qbe7Sxwxk1cmfYVy07ipBGwP
	 BTznAoV2CG6iMhqPY3ex3DaJ9f8PmbaXVW9McYOiWrNJAbnidHYtjTU1dg6vX8FS4F
	 AHhDlW/TQLj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7437C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924194279.15987.3241800536280810838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5609223f2ea3721134d6b50d72b88470a09e3e06f6ce105c3014b424822b7d
Date: Mon, 24 Jun 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719241942
