Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B0B7EEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715337743; cv=none; b=gDiaLuP6ZEtoBRufGlVGovicGQNQRSnUN8TqJfQziBe+dIt1Dt2UY1UW3lFb4EcqZEUpTVPrULlH/Rn/8UU/rEuGfjOaqnIOhwiV4N3cMVdK8jgR7JQb1L1hs/PdV+pUCaCKjwNM9iR0RyXr/EebDXVsecMkQYSTPcrWhQu8b2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715337743; c=relaxed/simple;
	bh=XYPVHfWNHO6QX2Ey1owiSie+NKQmAAgcRkKYilwzuDU=;
	h=To:Subject:From:Message-Id:Date; b=cvSCfBrKrPcTZfjgW6yJxVEnKJVYp7Lm801D6d9ODEqMYDOLwss5KQaFrWMBJ00LAlrqlqJZWCw9f43KgACaGQjA4qLq2OT6A2YHV/2fzY3RCw7AlxkIBrbu28VzTafGTaCmeNmba6DppBahRNQujXUbqCNCKpdNCvhLDxrT2ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Du4m26co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Du4m26co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB754C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715337742;
	bh=XYPVHfWNHO6QX2Ey1owiSie+NKQmAAgcRkKYilwzuDU=;
	h=To:Subject:From:Date:From;
	b=Du4m26coAd6vN8vER/RRsWq8Lkm8UUcMNDZ6XA2+eAA5KXHR1GF5HL6RVSegBW1/g
	 ENvIBArcUo2iIKMldTxPSksWEpAXwUg0rq9NOW9bGTNKTjJlFk3Fk2Pf4fMqSqP2mK
	 M0H6DvIQN3sC/tCFMdQspqDCxvnc6+oC1vb/sE1swwtgpiIjolkwf7uafJx+5ffpCp
	 abdID+9tGkRhve45oD4W0o51Gz/r/fMUrH2GzzjywGo2R5+4XBSg82/Gd5zHRo/CUV
	 GzvINzeJ3VdT0g5n54g8PbTvSM0q+/t8XuwbLtBhhS0BD5BRBJQSalNv0wHKgr7UZ0
	 6fJSkj468lzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C26C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533774275.7518.18206134393717325115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1611d2d6d882e5ffb9265c3787c14ca9d499462c489932105cf00b50883490
Date: Fri, 10 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715337742
