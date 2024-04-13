Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5864628FA
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712977763; cv=none; b=GhSGV6tcu2BTVKP5yRZJYkaQ/pDBwEHu8gWuYsVfpejchtHHa2TL3/C0M9SRuSvOWZnt7N+xt8eBhSYzF73ShjoKRd4QhIynOmQ9X7cKWz8krclF93WMUvQf7ecd9iI0IVP9kucIj5Qj9IOBHbij2kNQC5AIC1D0Xk6FX8lgR6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712977763; c=relaxed/simple;
	bh=FQDGsIKx3H6+taATA/IcgoycM7Ow4axAcrqbkjuY84o=;
	h=To:Subject:From:Message-Id:Date; b=GuGspU1di0XAQFcAAD38opxAFd4uahLe/uFxtauK7a5AC4t5TdVzi6YcxRmBKzdcMpqDEIizOROyhAIZwWHI+tGDVBqvuW5imhVK1nT1p6+yuoNuSKnqIVVh1Hk7Ep2z4Ziv5k+6O8JG+kD3L+j9MqKj9gDgjx6j6FCsL5mMfkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQOD9b2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQOD9b2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8F0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712977762;
	bh=FQDGsIKx3H6+taATA/IcgoycM7Ow4axAcrqbkjuY84o=;
	h=To:Subject:From:Date:From;
	b=sQOD9b2kNS1el2pnjdFcej9isFVIgivnvwWwJRtKhEplLZYBgQfmL4JXMJAsbT3hv
	 STjuI4fUvs8mYrE/LzTfTPuFX4AW48anmpqHQEAkMWcwKwt4wyEDDPQ1iJ4xsK0TXO
	 wWDCokMznHJpEgrfljDqlMA37jdKaDLyT06MCFWspKzGQ8zO1kTlmyPNez0rLPCcr8
	 1sGyhnxwrTJ6yNqayB4kTXpBRW7owBJkluxe9Fvu9GS0K+kg1eifTJmci5ZM5o9mnm
	 6HFqY2/zjY9oVRyAJ4xEgSnQBZ492+ouGiz/p8caTqaAFYg2Npbuu4FcNUQ81JWIGU
	 zuyPV4iGwP0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C012BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297776276.3205.11558386906326663338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc36932e335114132e66f95a74fc8c76cb072a3d991faa04a7e9c1922d225f1f
Date: Sat, 13 Apr 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712977762
