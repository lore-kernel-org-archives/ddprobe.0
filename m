Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EF312E4A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718071703; cv=none; b=kzhePsFFSStDBckGtRPFEinYa926ZeVljQPLvvrb6T34c3QolWPWsqEmD8eXA7pMsvlp6ldwkVYvw4ZLeZRbiptn4u3hAr+VA1AqkbRbBx4xhCYEwuiQuYXSv2whT+wsq1q2Mbt5TpYTdMIlRMZg1UZsaZIDlKviiY8i4ZBQrIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718071703; c=relaxed/simple;
	bh=tXORnDnSUWTGKtK9O6Cj9EN6LEemWCHmsxdcpn1qBM4=;
	h=To:Subject:From:Message-Id:Date; b=odUmID0/w28WO4CWi/xx+62Dn42ckl0MMtMylUXXPIUTiB9QBF5BblitBBYrqDZbksxZ6ILz0WgOvNGaPPqpDMG1cSGmSyS5gpG1Sg2gKnacKrxcqphY/QzD1dyhXY0sPYvSd8n3PjtoCwGmmg1/H02voIIpI6P5ch5yKfk+suM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4dFH9yV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4dFH9yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D845BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718071702;
	bh=tXORnDnSUWTGKtK9O6Cj9EN6LEemWCHmsxdcpn1qBM4=;
	h=To:Subject:From:Date:From;
	b=d4dFH9yV3xaR0sT97UvF9itaIujgnxY3sOJC1Vaf19qSb/uXte/M7R8wL4Q8YIZ8N
	 vm83lHkZmxo0MeViozn2iHsRGC91xLyQ6q+gwzW1cTkvuMCRs8LJTN+xMr7sk4GR4t
	 ColonY4g4kkjrffad57RVo5RLT9JCyRHFifcGfy9E9TymTt/AkBHFC6SfFVaqHU0HD
	 WFmz6Tojn0ZiGOTKyNyKdkZ8GsVNTZCjg2wWasFMk+BhimIDxQn5sMBpk4VCYqszOF
	 8ALiMioUs30K+/20Mn5Jb4uotSEDUOzfopL3395rhzYvv6tDhixPUg05HZxuxUKFiY
	 3BpQ4Z9lS2ASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF69EC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807170276.5161.17698906950183939775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e3ea83e45735cc9a36165bb53de2895867e10fe2bbcfa74e75fbcb568400d1
Date: Tue, 11 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718071702
