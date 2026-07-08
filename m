Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9B236F8FB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783531114; cv=none; b=b+cL/iYeqF0QK+Dr7jxkvvDNfla4mvx+l9A8JmWl9c7A2DwHVnRE4VJk4MnCg6FOuIUevzx8m62PIGP4mldkbuNECetwcjZOzFIN1ScpwsMm6d3DCkXn4CuOMAzZqyl0p+NQlae4Etxgjoc7XOQS5eI4wxeV4Mw6F4arm7nL/Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783531114; c=relaxed/simple;
	bh=hE72O890i56oZDEqvIvnbIMbz05QjRpV9nqRNUKAHik=;
	h=To:Subject:From:Message-Id:Date; b=RBtARFQ6tNBmNuHZKLL2HW6SGTfPvw8Zzq5fo77Rkl2E95XWpOP0eR1FYlflXpAxXz6xeXMrgTeYLNIzxxXpgTNBbhcuGX9PUqqKZSrDyMIVQO9nbsuQ82QOt42dvv+mmIayutIAx/n8Vi1Tax03oLvcDXjOq6Q6bRRcNEOT+gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9bWFUNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9bWFUNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783531113;
	bh=hE72O890i56oZDEqvIvnbIMbz05QjRpV9nqRNUKAHik=;
	h=To:Subject:From:Date:From;
	b=F9bWFUNPC60H2LShtl25jA733Hb5FWp5J6osE0rUW36Zj5aHR+vinW0//fBPMMKxY
	 ViJ1l33X6W9cYe38u9reMhApQ1AJ4emcC0VoU+DCk3xG2CeVKDN7YmecpSw7JcX41z
	 6uQEjzTk6wmhgA229J+8akMFXKjCCssj5EiMYT6Y8aMNA/2caOtwUiJm2ombHuuiC7
	 Ljk3S7n7+InyzQRHSr0E4VkVYhrU1uf3TF4luu27rj46OXUpwGEvU6s1mqsB65+d04
	 aJw80bII7t+KeNrn2OOA6D98aSRUCVnLptYzkR02oRFv6flYBTeW0X0iZ1EEDrL/j5
	 sVsPy3rufxAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE5C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353111368.7753.13312988591692970922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1947b5acd5fd6ce8875f3035a8d8fb982685cd9aede39edc2ec4ce17881f0f
Date: Wed, 08 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783531113
