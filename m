Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5E225B31C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755759594; cv=none; b=Eqfx/mgl+WkPUB24jE711CQaMEjP70MWtvdlQA/6K5gFU4Z1bhANeJ3XTmh+Zk9KrGHJ8nxP3ABLUwSik6alg2HED1h4dCCyexFQUtvrcr2v7EwWtSwhjlNbKcIq5pZakKVBRDOWbipyZavIABoeJ0gWNuk+hBrSSJYppLf9XjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755759594; c=relaxed/simple;
	bh=OC8hO9p5Bmr5joi2Z1dCKVWIcbOpo0jhKxitCpL5ZZ8=;
	h=To:Subject:From:Message-Id:Date; b=kNRBgEplFwrWGIYQ2WKHft1Fg4nCBqGz5YafH2Ol/NKn1buHuS5dgP7hIqMEYTXbNbBYpeO90Br1mGsfsaYSTddoGzAoWw9jFvyl1wfBDKPtEx3LegAzuganoAiJPtK7U4FEXbW6m8Ao6jhEglQx2J4p/GI5DZw4A+hQiCmTnf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUhhn9OV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUhhn9OV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B387C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755759593;
	bh=OC8hO9p5Bmr5joi2Z1dCKVWIcbOpo0jhKxitCpL5ZZ8=;
	h=To:Subject:From:Date:From;
	b=fUhhn9OVOaYB+alzWY8dMoNXWvCLZ1xFi2uSRxhiUXoZ9lj68U4i9Lksoau7DAkfM
	 mlYFxQ5JdAU6iTujVQ8zjbS4HNJIACDnFzOEURsSymN4JzA3iVPfH7FDPre1MmuRLx
	 6t5Ey/bsPUCqIjagU/foHsZtaPvdq6b1j9+5SPlY2bmR8Dz0BLdZ1888u+ua1rOrol
	 BX2duOtgP9Nx/G6kRTzQnzcYtUYsCt/7h7vTWZE0MCknvppAekBLD/pXjd6g1Tvov8
	 UkCPD3apaAN8DXpPSJ0LCXL/8a5rcM2Q4ZPunpELS4eLnp/WHlz70fj9yeb8FGanTh
	 DtJUZRxWSg0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E037CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575959357.15151.10218399970939416185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502f10491505e0a292b7c0a04e3f716137c4d7fac053b0d5ff4278dfd2f6262f
Date: Thu, 21 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755759593
