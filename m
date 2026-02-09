Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BC22E542A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770638634; cv=none; b=b/BvXq2wk3tH1BcRIS17zh7gVTqFs/PIqwqBBHczBxQzPSDQAiFhZ4eYtusLyo5qmAk4Q+exWPeXjRb0+LjoojHWP13V3/tPJVmFF8o1ig0h+ZCGJN/4DkOgscpno52vBftu/L2HsWvSNbLJMeres/xQ2ji8b6A4PEx1SzXPUUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770638634; c=relaxed/simple;
	bh=ftZ7TYf+Ix7RDkwcCObr/Kq7i1QmCOmJYFMdyvSk1BY=;
	h=To:Subject:From:Message-Id:Date; b=AS0tb6Jf3y9boR2moM3mDcggzMRwkDTxWggiHmaqpKIIssfZ2pLMlXKoKezPXwXU/v2jXCqcqZyLv9CS25Aa2ssVf5Sz+ATdAfj6jh6mOPE7TdrbuvBNomayEgXgusYPccq5/RPffF+jaQZup3JE9/euiugXYFAELVen8rwqYrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqhY8LgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqhY8LgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D104EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770638633;
	bh=ftZ7TYf+Ix7RDkwcCObr/Kq7i1QmCOmJYFMdyvSk1BY=;
	h=To:Subject:From:Date:From;
	b=kqhY8LgU3dD4e1vMP1N8237Mg2e4KZkgRV/hjwWnUONT65ffj+6XOB7LZWpame56c
	 zrmSPzFLT9FUo46rEXGugwXWk8bYu0A6IIVXJQ/NvlMppQXSmUcjp4AHbowDmrmnky
	 4MVxBthUbPJ2Brb02vvGpj5NudEVer0L3bp48WbkiM3oYc6io+OuaYUBVEvEnqbfYV
	 excECG/cRqx7NxgHf7wXVqXiwdnb9n1dqbb069D0JWCvz+hZk/T8ACxN7wE5xUvRL2
	 DsVSQDVssuhtVk+elNmSiPc+/xice69Q0NqqEumjWfuWLS6CUxr+FuZfTUtI8TH/rL
	 PjmDgIT8rwURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EB9E81BA4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063863366.24408.15773042589442383150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183bce2ecab9e173dc682df5b140716bc9b4f642489474f8c1c6ca09691aaec2
Date: Mon, 09 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770638633
