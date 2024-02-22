Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0299611712
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708561097; cv=none; b=nADhFyA2e5hb1KngTpwKxTGmV0CIklwVH+GZc/+5+/7lZSvtFuNlA7XY9MMLvFUVah92bWbSwo5D4gHeB/9eR1ul/fMXjspOf6CNeAFSAIlylmyqI90PrJYjbBBrydIeSLMRDyMdoof9EE4NbXwFJd2dDqi7WzFExrYQYqFDPKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708561097; c=relaxed/simple;
	bh=PfpRXgdpGO8ELkAUptNk3BdKEGYTWA1RVQLfw86K4QY=;
	h=To:Subject:From:Message-Id:Date; b=pQg1p/Yq9R/7ukT+uvgSCr7eyJfgK/BKKIzCLtRAD/wInDG5L8i8Nl2XlyG4fgQQmd+n8OKl2jWSaCghj8iIcPUST6k9MEznb5Wb7jsM/yEWAJuXILeXsblda67BGDcFXF50qCxKY0oZAbol2uJGXCczvZKnHVgCH6yRYzAQGL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p176foiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p176foiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93C6FC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708561096;
	bh=PfpRXgdpGO8ELkAUptNk3BdKEGYTWA1RVQLfw86K4QY=;
	h=To:Subject:From:Date:From;
	b=p176foiC80DlWZPeF5GAsvhr0B8KgIrGbCtJb+RBMmTPWdWsd/wRDJqEKjiGu7gEt
	 LHUKuuZnfKMS8Wo2g1kLdRUijeMEjDOfg4SkuPVgM700I6UXD0AfPjC7gGLgo08pKJ
	 ZMlmtCKk+INDXUcaukKaBN1MLR2rJxAOM5GaHJRP8Xyjhn1Xd41zH4gEkOXMuVnDCV
	 ZnwY73OkMPS+eue22uLZIbXVJ+dkjoLyEG2kk+b/Dh8Ta4GVNjaxz2e9dJqQdg4PiE
	 u6hXRs6pFzcg9dlPimEpyb8ztAFvMzM/1hHmDqYBAaF0OPGEXcVj2S85sMUpctyn0q
	 NU5HhTbPKMzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77CDAC48BF6
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170856109643.21717.13759727341670388600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce3b027c1357ec6d73ee37f87de23ad6305e140e17e65076ed649e023d5ffbb
Date: Thu, 22 Feb 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708561096
