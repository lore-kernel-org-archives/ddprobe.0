Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AB1F1537
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784951434; cv=none; b=fJB4m6fC631F8dExt18D447BtPujUBsI1ZMRAC+HOs9byWK4Viyhop1Z0FK+/uI02pgzQFq0sBmE5ElxCqRB+CW5AsOFmcskSIAb3ud2GaR1+Mm1kEBE8EQxwmHsFJmGdhVMV1h7j05m4TG6aa4E6TQ6za3ER3hd3rI4KVtn7bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784951434; c=relaxed/simple;
	bh=iGyMeMhMpD8LVmi+p15xZZY1yQO1LQ7Q3E1whxF1mwA=;
	h=To:Subject:From:Message-Id:Date; b=RdE0OpHMilxrNPi9CYIOcgnN+X5aAXpqohRsf2UOMWqPD5Mef5abMq/oDT/UcdQjDhJxX85P1a7EqAUHH1b6BGusLbz14+tAfsjZ0RVP8bZ4uiEU8VliYTb44KHhPrAbVJO0YId9E38naCypt/Nn1LvJXUETln4pPKe+/1bHu4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYT4Ep/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYT4Ep/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB65BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784951433;
	bh=iGyMeMhMpD8LVmi+p15xZZY1yQO1LQ7Q3E1whxF1mwA=;
	h=To:Subject:From:Date:From;
	b=mYT4Ep/VysyjxGsLsF+A6vcjmzPYpJGtuPieCHtsAx977B6RQHMW/xKAx5w5YvD8Z
	 wYU+B0pUbETVH0E1Q6EGDgQfJc7em1LtFbCukjIkdQwr+X5ypAZCyYKXoTO1myDN3Q
	 Uj5yKI29oXnGcr27/KwyzshRvKKF/YmpVZJ4I9QELeVeXJFigbBECpazag28zB28Fy
	 vtH68BWf081viOoNsk4Ks7vnKssAw/R1r4adJ2Hlh9I7sXc4XqjMuhOOvGYLN0ag3v
	 pHkm1cUBC+lhs8z3oqGb9/A1EHzR9mSpxQhXoPDKtNXR7DKjcRNRUp6c3X083cHhoC
	 nBRailg44n+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3AC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495143368.10337.8770364402990298112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1034d5ec8015c0123e1d53cb231666f886fc1e75a3ab90dd33b24f4388b3955a
Date: Sat, 25 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784951433
