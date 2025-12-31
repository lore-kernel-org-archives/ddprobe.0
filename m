Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224484315A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767142434; cv=none; b=q5Jsep/IIC5tNrKX87DJoDJebECy9C7ZDZiv1+BFPa63ALmWv1DcVQ9qGy84ODUegHIteSiW7H8CnaeSiq7/kpVTgkrvv+BObRFL04lnXH05Q0fGyFvAnosN9AfYsip/xWX5UaZEf5lQpBwdFqQTodCA84N91wbBBhEIvHRPSO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767142434; c=relaxed/simple;
	bh=iB1k40PV2njcPtjQ2SpDuESMv6PdtgOJFwkiWQHmsmU=;
	h=To:Subject:From:Message-Id:Date; b=j0JFTkc/eEl8OJ85XqFaMMgPYP6roxSRT5cOuPecCiJCuiRyouL68cRaxKVAHbpmJcEjvxui/Jop4cvcTzs2Dz47Dwd13dlsLMglKHpDNP4KoL/B48kyt4uBsH5kTsf1UpFt8HxG7ySlIV8yvLRW3evMZjGkcvgP7J7HeYv0HLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GO4SNWF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GO4SNWF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513CC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767142433;
	bh=iB1k40PV2njcPtjQ2SpDuESMv6PdtgOJFwkiWQHmsmU=;
	h=To:Subject:From:Date:From;
	b=GO4SNWF962sAzXHMJaFSPjFb2/Ug5TYHtevDC3lxsEZSC57TFybetnnZapCbSwPDn
	 NYB6x6zjNPi07HjYT382/c6nG4QMFOWzqhiGS8ye6sm3iKzL425vWVIiOQRbT9cHWN
	 744QdDib9zfHIq0nk2oFv4KL/qPMyKWJayYWQad37ya+8QkFWyknCtmCHH35Uq2qAi
	 P3OJGTsBELk/oXEpCOR350qvn8PulfHV18uuyEolMP8bGyr2BlTMcz5C0c55W9Vyw8
	 TZxPRqrhx9/vTiJeZNYBLKYQGBt73qXB6NhcFnaPSA/6VaOuZotszJnhMLuIZ0otuT
	 ASZRz1/Izd5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94531EE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714243357.15794.13788767226118010378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a099eedc49c3ffb3d237c838506267352116486cdf8fa9dff6d124477a8f358f
Date: Wed, 31 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767142433
