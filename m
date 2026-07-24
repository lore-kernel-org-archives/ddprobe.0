Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B90433031
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784890961; cv=none; b=lQY06dZxu7Mnq80zjJxuVQPxuw5lVSWtpj1ua3+4h1umIK/Vne08USVd0/WF8U7bQVov7V0+i+ohwsKy/loLig4mKxVJN8Qnd87udJPJmsHXbsxCCIntopfniz7xKazzjqJ27ufTX3NgCKcA3qOVE7VvOD6jtjwn4Novx5q4fas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784890961; c=relaxed/simple;
	bh=kHNDUZLPqCQXXaCUR1VdRUtKZ2cHTsArtxmyKr+X654=;
	h=To:Subject:From:Message-Id:Date; b=WPOjsCikvtUYTdOxiaAE/u6lnwaF/+DjustDWeB7FA4wjnk6uDKH87mCBwSA36fC6PJ/KO+8lNzSq+PNIqKPxLH69sNS/Upd4Unee5iDNTkr1hWvl+L+sAjlk6abBDETF/g0NN58H7+7mflq1hU9SLipR8Xn/R9J3Tybc61V+ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8tAy6O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8tAy6O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA273C4DE1F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784890833;
	bh=kHNDUZLPqCQXXaCUR1VdRUtKZ2cHTsArtxmyKr+X654=;
	h=To:Subject:From:Date:From;
	b=i8tAy6O2l4+BJnF65JrgLy31LqBgUADB4zMAcYE0F9ogKQuEMuIeyUVG67XlyzMJF
	 CbcL7cSZcJLVKY5pVoZLM4ych74sVd6tnaN3nKxUed0UAu2gszr5xJKRtSNDw87Rdh
	 dozPeRlXBi4GWCQPXP5yA4ufWR4/ZBkMmjAiC2iTuf1ZH6UCPeMrf7k+I/4+TQbdHD
	 jqDUNl9JNB2lAC5onmMudUMPrf3JZ+3leO6ID5AGn2YRKh9vsqLvgTHQIgMfcx/PdE
	 0ADE07ghRApeKrOVeEB58np3rkKdslKXrIJXCgr8zcUG+c2YVvfsK94sIOzOMW0PyN
	 q7RXNF2VK+mgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870BC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489083368.17006.1120280435288664463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0734bd9d2279e07173b5d1bd428eff8651ae4b486a099b24ab7f13f7abb88475
Date: Fri, 24 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784890833
