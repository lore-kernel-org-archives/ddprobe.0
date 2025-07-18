Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1AEEBB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752846594; cv=none; b=VY0OPsk3Q8sGTmol5tKBlEgSJCBGTahdNRalbxjn5CuWKsaL49tq/+/TO8MnzzGc+QbIOv955MnPeCN8GPwRiA3oYDN6yfK5kfo2AF5aAl+BWWWovus4X1l+22DbLnq8AK3fmgNyvDPxuxISi5GAkVozjS1E5ZWNEe5okVhl7xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752846594; c=relaxed/simple;
	bh=7lgzufrftSl5K3ZU3xnIzqivnnL6cgC0eDDZ0ddFFAE=;
	h=To:Subject:From:Message-Id:Date; b=iaTeXGAJFFXovC9p0tS08tCTbDaNAMHKcUN1XaCfvOz+107M4IBP/NVULDXU/LfrcIy/JePwWayrfgf2F1r92Cz1HpQ+Z1UkJT8jgemWzjgOImEDjYTf3vVdgoCECkGZf+pfQsNlS21lJ1AfFdhoEnZBdMoTRvXWI6OSTeTpuvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llnuKLUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llnuKLUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752846593;
	bh=7lgzufrftSl5K3ZU3xnIzqivnnL6cgC0eDDZ0ddFFAE=;
	h=To:Subject:From:Date:From;
	b=llnuKLURsT7w9kOHDZhWU3I8Pxirbr0zolF3a0zhD96MHy6QROQCUFp+ONV405gb3
	 gWWLe2RL5NlDvyw1ryEiWrChOa4JtP8aElXhHxQk/GmNxvAToSaYIraQSY0G71tNkJ
	 2b9bkfAxXVXkiGODdXePd4LE0EhhkogKYAt/8lT+CzPeYfzbD5zbzSj/cjnPVsiiJd
	 XlpfW0oRKEKraHPSI+LtnaIOkewnFxiYdDRj94WdOXwgJEqi66Hb/expnUR99YAypJ
	 sxpqckTUeZemsvmAf5mTk47H7pEuW9ThVKg8ljxaFZPtCE6hyECf0u/HN9cb09YtED
	 zgqzIITpcXN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284659358.19189.10247051387572340746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855c8042cdfa5f80d97df0e12f9aa524d92717578aaa3b8bdfd643606f2aad80
Date: Fri, 18 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752846593
