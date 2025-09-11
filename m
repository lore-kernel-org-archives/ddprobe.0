Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A64C329F20
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757563194; cv=none; b=QNOzYHXLhhg1Lhgygmz9R3ZcY58p4oiqg1GCkwz/fhRLX0sTF5pHb56h7HnILdN8oy4xwcErcfva2P6P8wYXRypzEfk29L9/g0y/nupW3nPXv0J6iyMEsnwCMFRFB5HNORN9mCx4EdmBGD0IubX1/HdchB/vRrqFHc7pqwchX2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757563194; c=relaxed/simple;
	bh=24ePx6kTyJVuqk0feSLAC8dT/hZJe5cOCU8RcGhR1YM=;
	h=To:Subject:From:Message-Id:Date; b=Xb2GN4Cwm0bbyvLMw2VKInP8JDG59+lJh9ePa5xMMV16BKZ5AB+FWpIFCVaiiE4cPMoDggx3FJzMduwqrcXUnhbBaeO15Q2cnVjIxUK4cJw/ta5PwiNwIh73cb/DdNruReQsNE4zcQIUnGdiz3aJ4niR/kvMoYXDxXQ4dmgSHvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2b358Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2b358Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757563193;
	bh=24ePx6kTyJVuqk0feSLAC8dT/hZJe5cOCU8RcGhR1YM=;
	h=To:Subject:From:Date:From;
	b=t2b358TptFkRk5Vy6i5m58//ANnYs4CWJJm4JRH1Q7XwaLFV0li6N+NmKg4ID5Pbl
	 PkWsEUv0+CSPIFNvOXXygymEzXSU34/K7gxQyK9UFV6rfwkm2MmqKq/gEDe+Gx7CO+
	 PipTWpcP7oaZRe7hM76A1Jm9qDUD5E50Z+Sa5v48m55CaGJCHpKGgtwzaGzpjw9h9S
	 o+VTlaOpMNIrl7vDyJg2Lh4NazInawkckPLwVJw67qYjTdVcOTqLDgZ5cMkpwV8BeI
	 G4tIjkb4Vxb4RyyyCh0aGJx7rLkJPK1pJODB67+a2Iki5K90cdUEcrZYlHGroFpBnP
	 X2NFdRjs2HGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC8CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756319357.27387.7095389738850772648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f3c0cf7f32fe9548566899ff21b3befbf2bf460ee6248f42d150a6d61f7d03
Date: Thu, 11 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757563193
