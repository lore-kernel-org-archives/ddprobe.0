Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3964A0C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783980514; cv=none; b=HvKOD26sDm+tYYZTLsxBeJQEP3ygj5SBmQWOxHeA3ipVon5Zb0IAm/gMrgcA0HDA4t8drPoH/MrNAA//ULk5zkLC5QrI2hibRrZ686rOxMAijVSu3P2ycutNzGL1+gsaQbsuRs65dLcGVWOByBvq8A69/g1au9mdz6rcF/YLvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783980514; c=relaxed/simple;
	bh=SV8209tSxBol+raOmxklgh9VmBzuI9nTuoB3Avo4Rjs=;
	h=To:Subject:From:Message-Id:Date; b=MI+RFW2xzmE2oaJLfNvT2DGQLlkmCBZXGdKwKimB+tNF/yhy2d/7/A7BlmRYrSEYD0PXq+RNTeKz+Fd7zEpycofTGHKAWOUbnmJacvcA7PIQruBi21AKkclTsq7qudmH++D7CU0GuW8aOmLHMynGE1gl0rRDXB+6EQkUil6yqlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by2LA+1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by2LA+1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD2FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783980513;
	bh=SV8209tSxBol+raOmxklgh9VmBzuI9nTuoB3Avo4Rjs=;
	h=To:Subject:From:Date:From;
	b=by2LA+1vBWEV7ruoPiesyQK3qfVhpKHWcC0i3y3AIRbqjIwPrXPxkkydOql5CxJ0A
	 yXuoqE1kUpI2nM5mhdLUi2VtxjH05sZWGc3O2uajeldz07TxqgLr61XJc82SlIlvjj
	 jKtApDdgf8Y7BAVGKzWyXe2jQLghKYUuwWC8T8fLaU5stotZ91OFJd2ursE4SZI965
	 RMV3SjVudYQzqTktFiYPIyN6B5bi4hVXit1MwB9q/RfMLd6eXORTB1UK0xfgaefA/+
	 MRLsGd6//4OJwI4PjTgNGRRcuq1U5O/sojFYdDHF9eSTmBvU3xc2YSGKSaILrfnMC8
	 nCwcuHVMtkKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA746C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398051368.32599.11054010551164483219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33af22a41bd9bbaef152136fcf4b9edf3e996d6c0f4d18605cbbc8ca2770ac7a
Date: Mon, 13 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783980513
