Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D552E9ED6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767223434; cv=none; b=V+dEBBXYrAsSDcgkBjCtGWzjX7y4nYLupxMO7ZuMW7k5bFQFOg8h/ANGvOBn6B4Kz9fpLA7PAUw4jpRvRn7A0kEOPYf2TMSdHybmVy9GSVjctnXBY0mKMFCIo4Vh99oL8otYhyMCN2uMx7bJuaeIkVH/NqXxQIgQdNtwJijFQkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767223434; c=relaxed/simple;
	bh=/cMuwtDg0VFjix8dN51faoTTMw7EhBNe9gERxx2juNI=;
	h=To:Subject:From:Message-Id:Date; b=SASy1TWleTbq+fodKEoSdid+XYyJeygBnvkz+slIXBcLVBkLftTPrIrZaLcyWquEY3xAjrZZ/a/mFqOjGCUABCvbhdAhlBUwH1vsoq+H6GCZa3rzxgfyzPeuI6tE7e8wwuA5ZVC5eyZIBg2bpqJo0y+dpdQe6/s+Huw/ILsZXkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGu4R4Wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGu4R4Wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EA2C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767223433;
	bh=/cMuwtDg0VFjix8dN51faoTTMw7EhBNe9gERxx2juNI=;
	h=To:Subject:From:Date:From;
	b=VGu4R4WvhsJsYV4jUKMB45Cf/I4nzp6O5h+Xq0DFDcdAU70NY41FqBHXPU8+zARYE
	 8/xgN45rpnq0bT4z8rQmHwQc1bDZV7EDereaMza3Djl/ynqN0rpWzRBiFm3KfAYq1f
	 djpKHabsYSrFt5PCNWd2W/yIn0slIR39lbmyj+dLVlNm5/KCgABImWer6txR6MRpsK
	 apd4SXClUUnpgJoqZZ+WFnhnmXfE+79mfNUO8uM1VJ6P9baPRLbYd1Zg6GzdTQhCkB
	 ieiGWeV5yRN0ofoOfmyKBTmV5s+qDi3Q/LzW3gnclM7vthQ7frxdCf3b8bVo34Iopf
	 +KAMIlBWEMPDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DEEEB573
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722343358.18672.5420124343804362648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69fd67fb7cfe3fa1bfaddbff7b4dbe8b63ba88e836fbbbe5428bf7515d81caf4
Date: Wed, 31 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767223433
