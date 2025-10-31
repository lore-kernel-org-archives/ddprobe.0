Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218861A9F8D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761899994; cv=none; b=srcau3XBTNW8nMsWGOhPXIG6c1L/MjTmz+J2oo3UbMRHUCWnV8qn+WHUKlnx78bFUo1MjREyQ8OMcGdjZL9hRSUIXMkxTaenrvlyEdteoQzleoTrohdo6h1d4s9Jz8XNg6StpMCp7NnMDCp7b9NPdo4qqBFxiwModT6oLs2huFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761899994; c=relaxed/simple;
	bh=2tVBQk09sJrzDp5blwprBCs9RldvHUyqyTf7IPXnIx8=;
	h=To:Subject:From:Message-Id:Date; b=ZxyCi+pwAJHNwmF7RS7awjLJ7xyD5oe4Jh6ndHNsMcxJhywYQ4dkoo2aM3fFSkyhhzRseSwZphKKo2VbU5ZkOhsCGkwun8+6hE2mwzVXG+Fd5L2OXsYzaNj3fYAs4PrRLoBaSujLFwnwjzRkEe/OZD7DbP/hXDCDmb9DbTQUK3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElmPMH6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElmPMH6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761899993;
	bh=2tVBQk09sJrzDp5blwprBCs9RldvHUyqyTf7IPXnIx8=;
	h=To:Subject:From:Date:From;
	b=ElmPMH6wrlMxsfm3s61GLmzXu6f5TQPP6BEugn7X/U6tXmKHaq7ZseLM6rE/yGnzG
	 2O89ynfsowfZuKCacsUAjd/9K/xIYyMEfug6LG+VHnBRRH6MkcKQFZdFepEyHm5EtD
	 0JgBnHE6uXesz/egN1FxwD2LWw12vE82R383BeBXpoGHU2q3tFer5/dxKtllDmRSTu
	 HnTyvCZjKoMBh20nMSbpWNDl58ILK6jnqR7o998XbEuHSfCaz7cIwQ6nzoeGVa4qhy
	 ZnIAW79uf0fgUsCVPlSmm0ewg0Dw+K0nCKwG48Gl4htN++5l/OVCsupoB4mT9AWLEY
	 81szPbRp0Jhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EEBCCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189999362.30104.15375925668924719740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e6d8a666bbc4b9de686f0f8eae52f0393a4713ba4dc4646980f936166f52ee
Date: Fri, 31 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761899993
