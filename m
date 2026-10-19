Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792423234;
	b=laXqwD0UeOsTo55ohuO2YYEc0CGBTxQPJg58Q8OK9IYLRDKbEBbeAiCDg8hB39g9sB3m
	 hvfxLAKWoMNN+4v5WiRfMl7phdsigU3pwzu5LJ9E4bgTvgO7rOvTTUN0yGH/hQgMtV1sd
	 dyOpEcZVlMJbDTpTGAM888ndLAVN85nRH3tEb09qutS67ZHpcpOajHnUeWRUbnJtF3Ton
	 4W9M83jobWNlTM5etpwc+o9HTQdVRXw/NSpZSBIXKfMoBgSf4va0IDUdeJio58oBDRI7O
	 sDMSl+J6sV6S9Qh3IUjwMu7Nk4lb9DEBusI2Tku5tfjMCCDMJUp6b4uHQgxKmZoVCDA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792423234;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=vAUiASGEmO/7dQ29cOgDQ4ojDDhOpcKdGaALwIG8sdg=;
	b=yQdYe4wNBuBp8xw3B9ocqq4K+Wd9L4zWaOwPiWu7eC2yAiPpk3Q506l1rKfc4hLe4s1w
	 PtCZz57KHUivLqsuQOpQldo51AvyipC+QpVaU1pSixMkd8bpFd4PDP8tkiJKtE7oJstTl
	 VzxXAy5ArJ6gzB+FrlhlWC7+UCyIpIrZYAFh6dZ/DlkTLyTxp4VO/Cg/KnEFbmzwlA70z
	 FHrJtpFf3iQMyp9Qz6Xa20QhaG2pz9D3+QJ7lka2wdYOMc3Zgp/QrwSvszEGsbKq0mBdT
	 NNl21uyMYeOXPS5x94AW7ixcibnurN6Y0MzeUCerv6au9RYjWpvWUGVpIr+16hgHOSQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=oXI+s9uX;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827A560A6F7F
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=oXI+s9uX
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA6D25771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792423234; cv=none; b=XAoS2KH5zoS90STU6Oc1FH8twLNVGAMrnUaxFWfOE2za23C4y2AdTPg3ZvPn/h16oqDXBHQtNSLH67ju09k38m0D1VJ8MPL+sZ62S+Kiq5RhA4GDGTkapIUymZ6cEuYotLbWsQGxutGyb2Wmzw2OX4vjJp+8cqMHDttbUvSWluI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792423234; c=relaxed/simple;
	bh=vAUiASGEmO/7dQ29cOgDQ4ojDDhOpcKdGaALwIG8sdg=;
	h=To:Subject:From:Message-Id:Date; b=TfUOC0iEyDwnxkcTM32HDVxUjuGBPBqtBDzvBPrHggXe2GYmaIGcWMG18nCofejUZZzTT8sPBHLOy5IxVNdalQiwgfjciicwp6og0H/OUXfDUn21hAr4yXR5xTQHL60vFXkAUwBGx59TTiYTL8BP0jhQDp8aw08IOoWrIRTjl2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXI+s9uX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38C2C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792423233;
	bh=vAUiASGEmO/7dQ29cOgDQ4ojDDhOpcKdGaALwIG8sdg=;
	h=To:Subject:From:Date:From;
	b=oXI+s9uXgtKzvpWPwamJF1KJBsyYQhc9HRWFQcQcg+HFdRhZoGjgNaLkRAK7eVRjI
	 4ezDUvmEAPgmoBk045hI4B2LKHEBZ5cTy1paw4YhrnXQvgo/CNRt8Ky8BaWdfZf4bW
	 04v5KK4j6I9zDkTI0mSsOM31tuRV5VWw+b39CfAvKWlxD3v2W9So5TtahVUkg3e59i
	 dr7aPalYE9AcanqghpxFy+cSeZmka804BiRes/QmeMZuDy+6og9jorCzYgM+FMAe9R
	 fUDgQV6iZZn1HIxAmdJ0Q/dKrgvu/kPlniuBJAch6YFXXeF833d10INxtvzq7yJiL3
	 CmLTA5x2eQchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A973ACCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242323368.5199.10219549387033573749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d65255b4b6ce544d87d108ac0eebe394619aa2d81471b8a96349c3a63bf970
Date: Mon, 19 Oct 2026 15:20:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792423233
