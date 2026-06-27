Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B3D231A41
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782588514; cv=none; b=RjNSwCT4h0HdHUJkacUPp46iH4E6RrH9ObZ2E9NEJF9kMYe6nnAEI6udg57EEbGrFWoJsHCCfs4mix7wkd2H8y6OAHNesGt/1V4uG44eNdaieV4Na59DXJ+VEr6egaMyFsWmG/a/ivTPCS99lCQgIX7dgCZc041NTpNT4jq0Dy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782588514; c=relaxed/simple;
	bh=kvOwvmDtBOU55zLbbiavrAzpH/60gdRWZh98mlzPxak=;
	h=To:Subject:From:Message-Id:Date; b=YIBEXof1L3kPe5AcPnCtHmaywbqDVw8gjOJzWEODNckj0+g1TaC/k8sjPxuK5ReqbadyXI3UVJbPkNhNa2q4P0PDv7UBZCd8VZ7CgM9F4XEV1xWNEwp3azaVAnWCxcE9xfaRHegD2pJjbab08BUvVUs+1OjXaSZ9mWmuaiacIag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwOA8F/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwOA8F/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E95C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782588513;
	bh=kvOwvmDtBOU55zLbbiavrAzpH/60gdRWZh98mlzPxak=;
	h=To:Subject:From:Date:From;
	b=TwOA8F/rYL1Mb6nDzreScG3wcvgTSNz0IH7LRmefb2vqigoMOzNL2MlDmY/bxGobg
	 BMUFv1tkUvBbNYp0zWfk0inmL/NwypHBCQs/xVmCXm1KolkbLWtJ/WFTN0hfH47b3K
	 h6jbw+Q6K+tlOVblhvsMz4qI6mjjpvyi6u9reASN7h6128vcFN2b/5/fil3/dxi6N0
	 x3Wo+ZRCsHjl3P717VSKoEXB8Lm55/QDRVk5y2B6aDaRWVUFGxHEdFWeBovR60cHN7
	 BuodwD5lTw6bmhmjLEVh4nzrj7JogkOb6ViBS3MoH01IOceayy2YfvbnCxccSrHWeS
	 28vOEcI83FpEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0733C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258851369.21805.1835121205147108820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4290f023694a850ed868c91b6c6cb534a9011d617a9ce7c7a61bf5b7c81fa316
Date: Sat, 27 Jun 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782588513
