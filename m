Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1574CC156
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727507154; cv=none; b=c+QdjcpVkkz/WzXskKCYr7BAcJDHY8JwzND6jWEBo9qYYPsrkGcMDfAG9cg/0x6XGUURYuKA4t6SI4UU/e7AF5xwKwoz0uwl4IZmrVYSB4PXAb3n2t3mn7jRJyT8l64SfFGagdpvKpfbhAk+67umtujvVGEuCYMIvHzw4MdRClA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727507154; c=relaxed/simple;
	bh=TbYhCBUc39YEAjbAromtjrfEI6oby6d530Jxx9YV3fM=;
	h=To:Subject:From:Message-Id:Date; b=IjKI6tX1/AsTFx5M/5yHpabcOk2akcpnDlhVhMubqaCuVn4mMRtnkAApqJI8vrsDuIRB1ufT3nGPCypqa00YqDuT/n6L8y3dRSa4ySQW0eNV8cz/kl5umGjbLC1fuWrvFAhH2BnsIp+vBldy0qxxUHmTPCtxRdKpccmxq8PiWUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOzisX5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOzisX5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727507153;
	bh=TbYhCBUc39YEAjbAromtjrfEI6oby6d530Jxx9YV3fM=;
	h=To:Subject:From:Date:From;
	b=cOzisX5UdpJT4pSN/hsMlql3jxaUQEffITEp/wwNyokLsLhaNfDZpVxnr/ylIbdjI
	 4wVZjzFtWY5yilNSwpiq+pxldmAvvAawparsSsacsB+G7UXnKmcTP7b5MVNmIIz6lM
	 N8zX32UzvIghpZ6mmH0vx260+YfHt6nx3zb6Np5xC9ywQxCSaIU7enCeEqpfDE6Zs6
	 7OjTpGsOr0m+y15wb11nFy8f97GMorIQ4rkafLs5jSOB0BT4ilm471/WKgbegNKI1C
	 rEoAksmK4qe/c4DHAd10OUFSL2IcDT2gLbTJ/6OUGh+UX8tdoJTe6ngrh5+DBmrl/c
	 J1cuyx+vo0evQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E0FCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750715361.32385.5848791705079718624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4a2bcc25a18ab5ba47a5d59a378639af446db8104c30cc1e783635715415f5
Date: Sat, 28 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727507153
