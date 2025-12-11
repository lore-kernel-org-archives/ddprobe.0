Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA4A3093AE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765455174; cv=none; b=oSVxIeolXBUAWDI5dc1tar5mzoGOzo/j7YsdHXdIekFZKaGPU0/Lqvni/O4cKOxl0CRCNvSX9qVOa8Oz9Dr1WOTYrVvrNnP+OQb8nJr96DeWXl8GjmqrlVruoFjrMEEJ0votnUkiw7J8LaBGvEwPnG9/oLrfFeu5Q18GYQDBN4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765455174; c=relaxed/simple;
	bh=r/ku3EVoMdZcjRfDQNOADMY4fYCI+6aRdv/mT5A8/gY=;
	h=To:Subject:From:Message-Id:Date; b=Lh2Z+PtBJAKUQltl1Eg0oxSANmQ6EnpGeZkVtrljnfSnXzDQNcjt1hzVMnHBiXsf2IV7dz1VAC+HuQvBLYCdg0acRoOtadT7PY/Rj0mZsBDR+V63i3uj3g6qj1+sRxLxsvPAkY4/UMiQuQ2jJGcpMTdfhHufSpoR4tHKEC8+I24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCzSa/fA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCzSa/fA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765455173;
	bh=r/ku3EVoMdZcjRfDQNOADMY4fYCI+6aRdv/mT5A8/gY=;
	h=To:Subject:From:Date:From;
	b=WCzSa/fAcrGOZU04fFfKNTYOfLzmAmp+hKjxoccM2wIlDxCSS0JtNqutGFEaFUlyx
	 xk7RIUWBsnu1PYxlSsL3m+wrLYZEqsrlAy5zlCpEUWzB4cm4q46ZmtWWeypBJdO5l5
	 wVc3Gti6eGaH3E1iAUzU0tukLSwkMB3yHWjIBJuKDUR/KwakmgG2nHifBRKJOxg6sq
	 EHy61IK4W40B8kfv0u0yVAkEIwXoOZQK6PtSaj6NN0jO/OI0qKZjPVWq8MLOwWBck9
	 camn9i3JUkDcYEqASVBclzmhBiF09cXxemj10/0ZVSM6duPZ8iKnlOrCpWRaRs1wK0
	 oNGQlHk/nRPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD16D3E792
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545517358.2243.2427316034402597775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752cf7e96df0aff900b70d6974c8b50868c003bb4bda97f95b001dea79804902
Date: Thu, 11 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765455173
