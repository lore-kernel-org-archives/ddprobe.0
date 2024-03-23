Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DB77F
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711153697; cv=none; b=KZO9ZEMGE6NDaY8ZL9uBUfM9RvOSkVi+46wcG6x+O4K1s1syHdfnGdnV7i119q8w6LvZEGxwHL9LbS5Ii1Lo30f6eXd+gXLn4zjXt013FcNM0Jy9vVT+EIYLVQfCc1t4olmaHYJF4OhJIbJFNBLog/g0+3c5k3nIVlwEIQkg0IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711153697; c=relaxed/simple;
	bh=aUsU2WPi19LO0SUxZCEH/FPUuO4BSq3LCvtuhs96YQU=;
	h=To:Subject:From:Message-Id:Date; b=pFKai0dohFvueTGXwtbKi+7dzBjUlxfPe3raLN0NXw9ZhX4eeep+gv+6hoWJ5IJqVSmtaGEcd4pB0cYa4oHSFARp+GM+wpb0rVf+tMcFi721momvewSQ4JFXERQEm4HJfcg0ygKyB+WsgNcu4a27fneBtVgNJfzaiOl5ifwt2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwp3aoky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwp3aoky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EDAC43390
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711153696;
	bh=aUsU2WPi19LO0SUxZCEH/FPUuO4BSq3LCvtuhs96YQU=;
	h=To:Subject:From:Date:From;
	b=Iwp3aokyjB/+1Jp2ERHwHBNNmRvON7ajg2aek/cfyw1DtQwRBoXuU0jTu9SBiKjP+
	 4dpMEQlb7SVH06QusxF4Es55C+AOjb3RQBproDSVcpuxE8qnaMVSabsMq9Bp7VMB4L
	 KaD6U/7VAnQYkoQXJabI5g+jMY7ACqTrkzlXcMsQ4rLTAzeLJyevBhIirf+IMQZcqA
	 KUlCMpA7In31VvZCz6MSE+CdxjBsfYzjLgD3VCqWqdUl6LIL+35pi7HYU54Sdbb2v4
	 xbGQr1qzlv800hCwJotS7Mb5M7s9f8+uIaPlPMm+IBCGaHGBiyFmFGd+ILvdeXLH8x
	 EzM/757MyPCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EF9C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171115369638.17152.2224454156552117232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162a48e75d79e07c4f13ea29b11310ce049e2ca8f82a7e653f608c538f202fd0
Date: Sat, 23 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711153696
