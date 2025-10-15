Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A23129E6E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760570994; cv=none; b=qmpDFT4cbBBKf1tkMWfe8jowKLEQNLfbR6WSxRDwro9TXKluUXFyG1GYasNsh1PbHB/PJBaKSEFtTM/V6rB3oP/XqClJXlMJ6pZ0M22Wvv6DEEtZeqtHHVym40EUarSLRtmMw79rhqxIT4NLyzUIcoApj0Z9+YehngXn0W2bTIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760570994; c=relaxed/simple;
	bh=Y5ZTMRxnCj1IgF+JrsCcuNWrecmNXx+mlN5RQEuPmN0=;
	h=To:Subject:From:Message-Id:Date; b=motlCdfrPnlB5UfbyBBPkA3H8CCUKpqN+QKRXU0UWJ9y5xAcsKGnhkJr2gY/vjWA49HYDsZ7jMc9O8t/A+rO6UOpRaJXd6JoRAL7TXbqXTpWTDjRNYBLYIGj0IhVofAb6l3J/giah6SAzMsD7atH4hliBLuX8OPlHllzr0p2CvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cz6MckOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cz6MckOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1435C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760570993;
	bh=Y5ZTMRxnCj1IgF+JrsCcuNWrecmNXx+mlN5RQEuPmN0=;
	h=To:Subject:From:Date:From;
	b=cz6MckOGKFi/T5WlanmDPcZAAfnJ2zV/5pl4SDcv2M7L/o82pRVTPjtsj7GDC5pf3
	 v6873rOoyWypRdaboWn42HCe0Dh7vS7AFsGFiH0Tx/4ZAsMMigaX30NKPRzaA0jbry
	 cKPYY4xtQJCB2WDBAdhcgFTlzcn/mCJsX0OetxFlVuIDXCPTLfB83Fd0O6qQfEH0fS
	 o5h3UTN6o8XAPUFuxYu6a7xUTuVzcpW3VLSI8+UhVDgartc5HQlAwq61qvbeFxmDQZ
	 z7y9KfJmq1SDxHJymDWJGoAZH6PdCK/XEkpiNfOAfFmmIt7vHAvMzJ2EwUxOjcEvfE
	 jzDOfsK5La36Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B3CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057099357.31590.11038802409308310369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea57054660892b09c44ad6eee2570ac66525e375d99bc9029281e2aa46f56886
Date: Wed, 15 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760570993
