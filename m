Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ED521D5AA
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759123194; cv=none; b=qsK4DZ7A/K2btfpdamVE+gXEmR/kQ4rxeielD0oC0P8GDRYSnrJUonJIJmfuTQWnWuo5AhDOgASrTUPQ0LGNbY6O0vC/X6OYvPvzaT4OJuxZIvtOzLOVwJuJAm7pguVI++cAbZqGS4pcCx9ek8mUqnQaoJuAXgwNPxfLSxm4ll8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759123194; c=relaxed/simple;
	bh=5WuMWHsp8Ws/xLoILoe64++JsVbMjtfFWP+jKcVSAy0=;
	h=To:Subject:From:Message-Id:Date; b=GVuPv4ymvPCdOARRI896+dFHdN8syg8J4Lza6pDHUGrGUAwt2ZtLzpNlYNiIog8YeUA+36b+OAY0EnSMn6Fh5l/IZvVdrSnboB1stbRqVDKgIUP0mq2HD11vdfsIHRKqNYq//23CCxHAi+UqCIDyVkLHJHUIg34m3+3IyyNUKVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riXzLjvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riXzLjvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB917C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759123193;
	bh=5WuMWHsp8Ws/xLoILoe64++JsVbMjtfFWP+jKcVSAy0=;
	h=To:Subject:From:Date:From;
	b=riXzLjvgfKtNg5aF5KeBlzOBL35v4d8uvzq6FwoOzIQJMmz5+7n3OSZu0Zj3Ic7S/
	 gS4/Ka4EFvsD++pUGaBYGNgd+iKdzhamcUHyv3xml6CBGwrV9AJoJH9vIvF5Fcz3U8
	 JAQldk+jNYzLyGQS2+mdiAY2HalLkP+Od82/OCANE1yxNPb8qdrovh6M5u+TQdTIsl
	 JzmXYvoHSEmhhlG/X2edaUMOt21AiUD3v9+v/b+uoILi7no6P9rqD7H48aJY7lK4E8
	 qjKNT2vQ0+2n+N4KMQ7Sa/kyxiZn3chuniKoDZ4v/F61TBJqDmn+nUTBtCATNqZjk0
	 epcFzcF8pCGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B4CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912319359.32634.12166188702621121373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cce7d5cfa29982332c0b473f8dec6471910cab15fd6a23557b364f0fc2e4d5b
Date: Mon, 29 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759123193
