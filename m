Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD71FBEA8
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760254794; cv=none; b=t8a3tTcizYFLSrvHhNuuf/qvxBa7VeQBTJPBBi2fVVjYIY+EZbtUbnXbj2KD4RvCX3yIJYZtyvIaOFh382Z1woWQJ9QUQ9xOC2JVeJipiA1U0uEJntR06S1dSaM4uoivG0j0oryM1Yr50Jg7mFKD2xFCht3RlrcXe/HZ1RWsdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760254794; c=relaxed/simple;
	bh=XRv/bSs+M5qE5UiUDKoNBFMmf9RVNL2Lvc0cUoZpLaI=;
	h=To:Subject:From:Message-Id:Date; b=RiEg2sdK52/gDdSpl+zZeDOTZodwB0X8y3kTGspojAe+Es6Em9dDekWlOmGnelVNg6VF96fcsKPa7nk1DBxxdF6GqG37xAjsTu2znnsKSyninY7dfxObw5GJNLwQ0qAbRL8HOQ32B5Ls+GKF0FhOtZVrrqkQX3/NALFDAr75m2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgt1VKq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgt1VKq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CE0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760254793;
	bh=XRv/bSs+M5qE5UiUDKoNBFMmf9RVNL2Lvc0cUoZpLaI=;
	h=To:Subject:From:Date:From;
	b=sgt1VKq7E13viHJ9Wf2G0yNcR5CRfN5tIBuDYN2VyVlIRTcjechGwiE6GfUcmPa44
	 m+KHM+T+TnHlvuHi3cr9rS6yt+uZT1pDUj4/RWvQh+4OaD9ErTYkAd2qupYQ9SGM3F
	 TTntmeqHByjCz6uDvT3WqRutwOqzImTJQUhqGgYSE/VqPHNwosLWfSTl/1mj0ZM8hh
	 F/pILDVCwBQF9fts1PeD5D++WzNYuhjeSoabxCETViQZVvrfsoyKcRgJUgNVkqWj/b
	 bw8nh5qIA/QjFC7RIiW0ZZIm2am/m0rOkbPVkUGvAzzySW55FGRBVEjzVLNBjdplZU
	 /bFBrXNVObzyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2FCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025479358.30871.2267185381263254227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35c340db0bd758ff09e2fdf4d828f9f5d9ec0218b29b705e69b287d4e70d490
Date: Sun, 12 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760254793
