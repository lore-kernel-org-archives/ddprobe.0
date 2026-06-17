Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243EB38E10F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781682394; cv=none; b=cswD4c+8rlA7H/ykpGbvVkTTMsV4OcHYNEqsIXWd+bt2V+yoLc1iU7s2GjbTpAOSU0fySiRDhnhGho/I4nwWDDGMalnce3CZAegmKeLJcSGOdT1MvBeVzeUEau0JAej8cq57I7RLRllyvS+UED61vH4y8iLl3IsYKahn6Aq+KMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781682394; c=relaxed/simple;
	bh=a2euJapg6bcLM/e5EOtEH1n/N4PrrvX4hcmslMDh8L4=;
	h=To:Subject:From:Message-Id:Date; b=UXn8veQdrpaPFjDWPkX+v16TK35FD4lNdVpYm7YcG0klLP9/S6tiwS7tWsjo+B+UiIu2BdIrgEwiSiVIRsx2Cuh4gLofoZI1CmsKv5C/fT3ZWdqePqLZoggN73LxjZdqj4TOMQtNlOqq2BuCX2g5UmxK1ebGYM9dYDD+p07whzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwQZh8pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwQZh8pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A63C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781682393;
	bh=a2euJapg6bcLM/e5EOtEH1n/N4PrrvX4hcmslMDh8L4=;
	h=To:Subject:From:Date:From;
	b=nwQZh8ptr2spYVg4x/I2xzFb4w2diPyLOeYx7629q5lCpY+U27uDhtLShDQ4Mmi57
	 UfEkSglCdmQp0tO48BXlXg1gIljeOCZMpq7zXtpkRuy3Nef1jezymbO3DjERUj3k+j
	 0oOmUFpoFFDIMFTOfuwEcy1NYdR206+lqHiR3k5yrqm1qpTj65x6h3VdSbfWej+9rt
	 D5mzGkgwCtukil77Usrh38uojnYrjeJmiUOnbA7xAp6CwkhN2qNeIiFRT7ytaWIdzW
	 FDe2HKd7qMNuMhm/kpOgeCum4vBPmsv4MHmPcHimMwZAIeEtVVp96smZAmqU+Hras1
	 MR7s6iGmWUl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FCCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168239368.1730.13535510567247132474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbaa537689dc47b384eb0de2ab757be46cba3267ffadfc55e9c698997360226
Date: Wed, 17 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781682393
