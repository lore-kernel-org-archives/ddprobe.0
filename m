Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F7F374169
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778476834; cv=none; b=pwPBUz5MfxVlKr5j5SZ+zQS+Q/ACE7frZkFs7FZLhiH9Im2/9tt8akbVC62nqnlG+P5yU8qW/+wBNn4iYvD3myFZrdxFJmC2aZh+6CwN2OtxkokxmIohtiCx0MV8yiruJVUd9GC0pccihb3Afc4WsaD/z6Cw7/fLu1Bixv+n06E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778476834; c=relaxed/simple;
	bh=Fb/fe+v+Gwwkex8KV5fpUKpK1rC99v9eD0y8FxFmaGg=;
	h=To:Subject:From:Message-Id:Date; b=RiUOZOFghyyP0kl3yFaT9i66Oys89JCO0rVitpS49zSfed6nOdMhk9Rn01Y0hS1qwGz/k5jK64Yp/roUsLgvO8611Jsp3NpFqzlk7cThg3K8l1/XYDtIOtX928VrQBrOkrlWyAOLjIajRorXH4hI3jeC/ZqyWlWrxfjPTuBTPro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQaD+SRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQaD+SRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EEFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778476833;
	bh=Fb/fe+v+Gwwkex8KV5fpUKpK1rC99v9eD0y8FxFmaGg=;
	h=To:Subject:From:Date:From;
	b=sQaD+SRvIx7ezsLdgon9ltyVxlZKozRIXsrcpzIzBRYyWobND43Uz+hvup99AML/Q
	 xWu+XsKlropgn1MWnoWirlON7zlnmiXXcWOZM2aOf3u/Fq7qRaTNmmEc9/sy0o4gi8
	 GJTmec2OA03+Kqzd9cL0lKepupZITtmRjBUF46sbCgoyLbl8u1Fti7daUxIuzsmhO8
	 AjAA+EUrTiEThmvRKF7m95X0S765FmlWRM46ubF4bZ+7VBUxoBxN6krowb42jCWhnA
	 5TkU24cbu6JaWlUAb5jgfANsohKYwEQQuwUWKwg2m0SZrQLDKGpa/4YVDbG0YnOfAd
	 w+kzNSjxmrTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA832CD37B7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847683369.25054.12912932345968110151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b06650fbabe13beec6294287eb360c1e765e6f8f0f159d3e336e549518c172
Date: Mon, 11 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778476833
