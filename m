Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1950A1F4606
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761718194; cv=none; b=U0+3Ve0aJEB9Iu2P1nlcdTn3NLD7LAjT7K0ZYbBJFm2rOvUymr5aQf2zR0H1TVS38HYFtzwpg0uHsyuotrTRtn+mTN94w+E2C8fLCwak8S1tU3g0HE57Xoh2KR5/DKcGlbsilvT2m8Iw0lQYzujraUmRM11sRH+XcSsnWUunLEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761718194; c=relaxed/simple;
	bh=BkijjmqPHoiPRv9dt7WuM9YZ5Scs5LxsChNROVf8Jao=;
	h=To:Subject:From:Message-Id:Date; b=gIF0xsacOaKp56oDO+2gXJWdjXUB3TnpIgGmyQTuuKhvldWUbi8rra0KpGQssjUjrP45FBSdH6hhf7b5G7QVbTPiGOzLj88IuvNWRpcvbY7LhnL6ZHKZON358aqxSQqE1JETrGrG7aSf7wVfUPmoofhzgSyj4pfmcBfY4E+rp9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YARFQ2EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YARFQ2EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3341C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761718193;
	bh=BkijjmqPHoiPRv9dt7WuM9YZ5Scs5LxsChNROVf8Jao=;
	h=To:Subject:From:Date:From;
	b=YARFQ2EMJA1iHHAuTMsFIkhSH4UhO3alzAQShdW0pEwAx9Y8uvHtnB1ttzddcHlTz
	 9zNMpW1s+a/duEay4eLrBhqvVnoXQ8W4CU7P2m3z7oldGEHMFuKt6latZH3z8JEzpn
	 PfSm0EGVHnyaQ/i/zPPOnFf5PPevTj7jZq9/nSJg8kkxGzH9jrRR8AWmtIm514KXja
	 72xq79YHHUloQfmau6/xN3kRL2j/VijWKXCuQKe1QTKNSzttH7GUA94sxMVZlgR6Lq
	 oL3xgHFjVNsrUkgRGiVKEBLK/N2moG30vDD6whoHNtiaEq4VtEV7xUpLiQ2IEpYdA6
	 eWpSatyKEwv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98229CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171819361.3691.860116365055223404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e34a6d744e717fe67cc5c9f293b87a945f4cebec63936ee887a40693fe8e50a
Date: Wed, 29 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761718193
