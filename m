Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1133A17736
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761005994; cv=none; b=H49upvYTYXRzBOsMxsN71cVte1veMXHXxpOaAf42rNXwiGnRltc6o/3CfDmwcP54U08NZJFjPI/DLTMWH04RygvPZvcPlqsbBLdXT7FK+FlUARqiGnOe1OwiFBd9B8QrIQcAKvr622MWotW5vNfjQ0oNf+JLyfhBTTcl73oIQ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761005994; c=relaxed/simple;
	bh=Uj5XScVFbAyXskMPhAnlCppXOkZA4Jl6FoNDA1Ifv1U=;
	h=To:Subject:From:Message-Id:Date; b=BKz8NiNCZMMIjsbe/jwS8s7kohwWcJoXWcK6FFSA37hJGXMuZ2Pr5Y+CGNiN/8Q4uzh92Z1MmDV3foVf+7A8zzu8c9UuEj9J1uo1AiodIBYCd84nTcXTiRomHp36kqdB8QN+JmcnDMIVW+jG+iinh56Zi3RaWQpcUZjlHi8nUoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw+XBiy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw+XBiy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25CBC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761005993;
	bh=Uj5XScVFbAyXskMPhAnlCppXOkZA4Jl6FoNDA1Ifv1U=;
	h=To:Subject:From:Date:From;
	b=Dw+XBiy48dfyP2AxpZbU0lWTrxlJehl2RNwYhgSnoAx66Pd7Qc9E/Bn+8uyAH6P1a
	 jZuyzMtrPOcsI/F5o1U3YgZddashXcIdZe87JshtUd4JbjfWgYT8lJ/oSPbkPPOITm
	 A7NW76RUKOlTREXWG35+oQJ86RSbHuOYZRKzA8D68vlkhZC+8i2korDYINO0n4iUZ2
	 bjCoHszwRWD/zkciAySbbZ7/wR7pUGZ1HrWfVg0Bf5G4j2SPlwmTJLzDaixPwodXtw
	 JAILFjMN+DU6sFh+7RZFLZqIpSCN66qSFwCKD4KIS4Ssay1E7tgwIc75hnkTtR9Hmb
	 B3hEgPjqjerjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98746CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100599358.20943.1266084894536976964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e91cdf778270bdea705c3b532ab3f55219825d7d473e47ac3ebf0e07b883a59
Date: Tue, 21 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761005993
