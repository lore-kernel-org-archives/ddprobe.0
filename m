Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF9B3E3167
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779989554; cv=none; b=nCm1vmewE4+gq/OrhfRtoxc7BlfTGWPFY2/Liq7mBDMNSpbPDDNP0dvI9uk6cTeofo6CUpany58JEBaQ0BGS9E++dq6PwNDNT955FbCBGhTxbx218d4TliFCdntDuQOJRR2sZf5svBA8FTbwNvcntdSGlACcdF/9PzXXjjZsKcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779989554; c=relaxed/simple;
	bh=XcGkEnkwQdVKxWfzyzPsUmNvSP4n2wUGsy+lgODp/No=;
	h=To:Subject:From:Message-Id:Date; b=JYFfc51g3LczyGA4BRImAJOlC9pdJpNB9KjWdhq7ae50ixZaCjtFSqt8u7Al6Hj1ldwMdCNFFeWGhMtvlSpX0N73/8cSzYRxj0cnUvTPzhBEd+J8LALxfz1y+4QF1g5xkxDzba8+OxuBxRFlUujgixt7z/gnd7a0SRuJ2wqwoyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+LxgXyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+LxgXyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C905BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779989553;
	bh=XcGkEnkwQdVKxWfzyzPsUmNvSP4n2wUGsy+lgODp/No=;
	h=To:Subject:From:Date:From;
	b=Y+LxgXyxCatWJzvyFRPIa42W5y+bW9g6JKBeGcVryRjz2dE12btxFSGWrSl9dgljc
	 shtEs3hfMNHFh59vNOQ9pP3HPm8RHUZoGb6eisfbP1VqEvxw2aSCp+svt+TMCaEAtl
	 wAzeyk5Z1UMifBKikA8yBuZmSOkPdkrX3cbCOiB3iayrNLhAqWCJnUxBQAi+YZ0Awk
	 0do1RQnpP4KZjn2SoGaXIHlAyzuszjhGF7ih9/kn1tqwIpXJ2qZJxcwm9zrzbNu+aM
	 ZCygJ61G7diohEkmwC0/fAiajaNu3TmCnFoOFhXJU/1f8/wTllrIK346tfpeFgd0Rt
	 4qLV5e0L2ZQMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958ACD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998955368.13691.16857816043958715214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b436b4c9072dd66e8a7e03c659cfbb32313561714918a31cfc1e2ea03d77bcc2
Date: Thu, 28 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779989553
