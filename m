Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614213C9A6
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715071343; cv=none; b=e+fKozmlMcIwEHsNXPEtFeDyg+9Rq1P4Q60uMxFpvBlzQkGM+g6aZbr9dIK8LvHCo8aXoK4+tFiEoyb77Mf2Vu1+QRC033aNW0p9CK+9el9VPZvy/P0ToDu4cCMS1KHCsp7Ghjif0VqhN723ysUUPaE4xHxJ/PKBjySctrAwlDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715071343; c=relaxed/simple;
	bh=dp1OsJCjPnWr25tVRdwTlDIC9QJO9QXYxJ2uSYYqwD4=;
	h=To:Subject:From:Message-Id:Date; b=G8V/b/KWaW8P4tg9Mn3d2TviH7o3V/z9mM17s1m1WSMZtz++QkfAoPak+c6IJBdSVRhUKarf2882ic/CjB20K4I3wX6C+H67t51OvZ2jeqFyZqWC2cfERrQX9CH16AfwCTkPqDhFQSvG1MGtkye4Qw845PKZ3pcjOCNenk166Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu5GRFEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu5GRFEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40EBC4AF67
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715071342;
	bh=dp1OsJCjPnWr25tVRdwTlDIC9QJO9QXYxJ2uSYYqwD4=;
	h=To:Subject:From:Date:From;
	b=Vu5GRFEjG6QPtalA7sIkN1NXlSHPM1RigvANV3GjDdtV3z5c65DQ0je+HeaiN0H0H
	 KAowNzG6cIRzwL7OXorvLNjKqcb7otTXBoK7qio7FUy+SMVPVL+J/XJdhbaY6cgh8y
	 5SSX+O4/QC/w3h9jtV5MqCq3aPydEcghxJrzcjqn2pFy2XiL2quFQP/JcLHgH/fHMw
	 g6e7AA8AesaRVF10v3DMUVfHPS9bMBFMFzL1/pZOhIAgorE1PtgRtPI0lTLLw6cqiX
	 bq8ppXOqMsFLAG0P+yk+Mc/RuxEHQsYeRF69kZyt7wc0dPQrF8jUDRcir+l91SGdG5
	 69vnDpnk16Qmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D33C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507134278.7699.6360909122267244080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703538d699d81dff6697ae5327d6717f952bc488b6869955b4a2d6fceb74a148
Date: Tue, 07 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715071342
