Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132533233
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710643697; cv=none; b=d2Yaji5S7eduFllJX8DjN4wV3qSHVSLuMOHRt9NrqSSsZR7AM7lmNSF6bmNVdDcXEyWiNPNu57XvHJLUk6oETpsjLOWjCL+jVJitvYOnSBRm132rYn8qfgwn2Ge+GMrvuBO1k0NU7eOPWxVyeI9ggkSkDiCDVj7voN6YtyZ+hTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710643697; c=relaxed/simple;
	bh=5RyRYm/0lpRKHciS8tDRlRLXWcMlMzHZwd/tOPaDO/g=;
	h=To:Subject:From:Message-Id:Date; b=NcfqPSuKjVT8A7Ps5tGTDtTmSMjYV8AC+yIifBpnEQYPWTlANKM1tDtzSyb7exhIxUi+LH2iZXzSJeTl2LKcKQHCI1oEExCZW4RJqpBpyzBQp2wiALr78NNVouTx6Ar+S2mE1MNFGsfOQuRHPw3JT9YOxnv4n4IIgH8O9e/32Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAkFoZKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAkFoZKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF4BC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710643696;
	bh=5RyRYm/0lpRKHciS8tDRlRLXWcMlMzHZwd/tOPaDO/g=;
	h=To:Subject:From:Date:From;
	b=JAkFoZKmPqsVt84MxjPR+4dZR7U1qqKK06omL7eSN2UaudCtZpMqOrE8pv31gRN0H
	 EV7o9/5rwZL28NBF11p7ty4xAkDMarY0BKK3TA/t51Fh5icRnOEeox9sLL+C4fuj6A
	 krEbVpszK07TrF9YMtA7tRoCe+lUmo5nPS6kIk00IMUmF0j9ZgPsK7p4PZ6w5uM3qf
	 VfIUg2KaMmShmiHGhLSQ699IaxrY93u0Qr4voEDaXI5PzMDPfmpNv7uKJRRSI5/Mog
	 71zXsnvevfRZI7gagoE1/31mEJyx2n80S8hZYLpe0xM3SEXmlq0r343HmfVI1lIojG
	 Nff8lA4Xzi0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFAAC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171064369637.5021.11378826544841560658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca7f5bd5bd829872f679902ca37a7dd25e6165612d9c58e12a4fda717c3752c
Date: Sun, 17 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710643696
