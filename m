Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45E17A2FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785654034; cv=none; b=afieajBET72TqdUnKjX6KkDO/zhDkPDmruJNMeHay5Xj2vSQCUMntcMMyRlpnaCxNeNIhjT85MZ9VYKDj2Nn/xZmYFJUWuMzPccrpZXhhR8doKmWifbeIyPXMQA3heOpO4hjSh7Sg6dEJE5f+d14lUbYEl5NlhEAITk1seXrzOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785654034; c=relaxed/simple;
	bh=RBZ/ywubxbJiArpTCr9ZpbjGS0ytGhMchlzV2jpdAJw=;
	h=To:Subject:From:Message-Id:Date; b=EtN20d+/1kykpqZRlID6PtRXQz4tDwBs2p+xUJK9Eru6TabphfaSpoY/TvNrywvCJTXPgpuYc2cn7Zl/i11W1925MU4UeWU0VJMag7LpTltDDiKZy0Nq9hHr6/hlHj2u7EX8B7fhe6lf7t0ue3/pJbqewwHZI+QvZ+MiY7VTdt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPv9uAgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPv9uAgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC1C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785654033;
	bh=RBZ/ywubxbJiArpTCr9ZpbjGS0ytGhMchlzV2jpdAJw=;
	h=To:Subject:From:Date:From;
	b=YPv9uAgpSZjO+xqmBX42tdU4fejUzW0szE5UF4ErYnOMnWPh+k1Pzj6SBBl8PnIE7
	 YCTbmwYgbCwqli0qvojn9CwcnsLZq3FEqfdB4xfFVE1o2mQHA9dTPgT716fvG3r44k
	 mHwLZ/t3OFUrkLdd2KsZSSJzW/iyVGRKNa1WSSJT6lVo7/S46e2p2agxWfu2ylCqOP
	 DK43cvFYPOHsi/5ccUiXKxpBXnQHKENetGrBgCVEa6HOb+RuWY1Zpm2OlCpQBLO5rJ
	 jzXtqK+O9u0Ad4Ro7XTNq5i3AZTWKGrvh/2SdYogdkSQjWHBSfygRhASDcxEwXGpHV
	 bAcOb5ewfjRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA7C55173
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565403368.10445.14243045320766818592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67eb033cdfd8db1c516842b970e2a00f1ce0aa7f5f0ceaa42adbc43f3e4fabb9
Date: Sun, 02 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785654033
