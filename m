Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3F536EAB8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782141394; cv=none; b=BLpsj1DTvhkIFz7P08Ybw8epGMIXNcH1eL0m9PPIaA5H2M6aSGjnO0EA5ZlGAObypnLQyxjXl8tataEPC9nR6SH4GncaoIMbiawCA4p/7roX8x8rU9g7Z/8FKpqzgkVc0RCrFTy2W2Pj1cVyjUadeNtfSSBtHWGhvLf+2Qnk8+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782141394; c=relaxed/simple;
	bh=mF13S8K3PvXUZHYlgkacU+afuAYs1oSO17fvPoKGChc=;
	h=To:Subject:From:Message-Id:Date; b=F3Bu+bZZlZS1j27x0AIq5qDhIMPNQmg8MYji3l8RH8RzAoTgS0aniOU1dI98gRdn+KqrTM6pm06EqR7uy2uLM2rsauD1VDi+1c8+NppjgQTzq2buzkZExk3k4t5wuF4p7pqWybF/ysILdW0b+ucIdPLg6Ds5K4MG0rz7j/Y4D1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny4xzBvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny4xzBvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE359C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782141393;
	bh=mF13S8K3PvXUZHYlgkacU+afuAYs1oSO17fvPoKGChc=;
	h=To:Subject:From:Date:From;
	b=Ny4xzBvL0gWyhlUaXOVT3KYsJyFYi+aGFI/RIgAMimhC44s2frJ+hk3U7Roz/Zalv
	 LkRZvWnwfGZiJW9cEzsnyQpg5fmymFJIvdB7eKX3qO3wjizk5u9FQiumCWaWrCJN+8
	 ClW50gk4CLo0J8IE36Uh6avAOWDT8LNnL1+bzJCqNzmzbEPe+br1WCkeiikJqnyaEy
	 zGiKRT/8ix7za9B8cIthlNBV2KGLAlVlYav8rkf/QJXce45j+1Rwyc7kgduOZOzxO1
	 22XBXIFTDz8JIheic5raVJz2RzEiaFBu7H9uw8D0vnEDKIRcNlKcsEvouK39yyO/El
	 HMbIWMLy7wNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF16CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214139369.6668.15769002489550322115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1413e506db8d0021abda2679001c95a6a3a9949e0fbdb9cc30159f1a2c5ec760
Date: Mon, 22 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782141393
