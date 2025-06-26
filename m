Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E7293C7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750927194; cv=none; b=bFbPLqunbI9kawi3S3PZCKDVHbmva2Fr6BLcIUFhX+Tdd3De2C/vqx7R9hd/gX1Ph2lQpFeKd2IzhnQr2pDzOOFOQc83OERt3JVWhdDsrIggETGNSHeSq8jDBRoUCzme7+CrAt76fxxEptnrJfocCaS2YYd0yqQ68HNI1suyceY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750927194; c=relaxed/simple;
	bh=oVPDvxwwgFfoRHrTene9woZxDwV3EEJ8RsOtLiCAuMg=;
	h=To:Subject:From:Message-Id:Date; b=dPMXSZcxdP7Z/mvqvSbgmL+PVypoZY0Q4FVb/WPsVpqWEP2J37/xyjKcAyclQ7q+SS9MnhPVZxMOmN31ToncBURw/oipBEy4UFJwrj/UNpGScRqF4JXB08I0Sxc/xAd6MQhPEqAnEt4bxneyGYheGmOItn+OKYNhIylviJ4wH/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKa8C7vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKa8C7vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC76C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750927193;
	bh=oVPDvxwwgFfoRHrTene9woZxDwV3EEJ8RsOtLiCAuMg=;
	h=To:Subject:From:Date:From;
	b=OKa8C7vCTeX2NJn7ovE9v6zPoYusVC0ZsYd4Qi2G/vnMhUNT1ayrjKTsHk1haqdkV
	 nsY7wi+mTLbt7mSseMOu+3NhRh3cvaDzXSuij9zuyV0Tdytgf22YuUqUgkbtjHRwJT
	 ACt18tUm3qMeZX/i0IxGshX04hqCf+aTGWFsr8ZpBqqmyCpnmz60xATW5/h+HB8eK5
	 NNSUhODij7bvqhXV5Ra078GjarTkVsMqsRblRTB5zf6l4LId4Hbm/7BJaJ9DwdiAHp
	 raXqojMdsTtZom32dUyghyOyGFi1D30fCoXe/cMXkLM1Fpb+l5rf84Nx8i3XXXbfbM
	 tJi+jCs3nRnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AAC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092719358.14465.5352248423935130872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245feb23a917fa923aa4ca7da1e133f4bafd2921a239d195ddff78d102cad77f
Date: Thu, 26 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750927193
