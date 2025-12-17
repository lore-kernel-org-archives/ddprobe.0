Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60471DF75D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765947233; cv=none; b=iBK3okWs3JTlMkG+c1b1/5A4qjYLvr7YQKYcMTpQ59XHlnlmZAFDIamnr08HyYluvJIcXfzvIQ+lA4jDdR73axzNEcb43rlCFS43q6xA7JCHCbqXynKNRVpYr44Z/yzCeJPX5sJk+MSiSToLFik13vxblyuKzIbbxnbQdGJXh1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765947233; c=relaxed/simple;
	bh=dt0sXoWQGCsruQhsrHwMT2SXmlXBuZHFwlzB2IKZQ2Y=;
	h=To:Subject:From:Message-Id:Date; b=JDyzQWWjPZPbJRv1ncUgte/vUpgX85QxQ3kzzzMqBmIUKRqgeLMOeaZkLLmdY9+znh6IkwghaEIuqn7YBTjCB+xP33epmasAZyX50mD6h2/ykKfpGZZ1BbJZ3ZcNeo3829oI6gf8AxjFodgajyaK5f9UB/4uN/18sZ9oarSxhvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP0CcyGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP0CcyGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA93C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765947233;
	bh=dt0sXoWQGCsruQhsrHwMT2SXmlXBuZHFwlzB2IKZQ2Y=;
	h=To:Subject:From:Date:From;
	b=VP0CcyGIZiudk34F2DcKN0IDutSDjIcgFgzePlw1KPbkqC8J3n+ePeRbhTKdyz5Vs
	 Lv0i+T1kj9EX37PixkJqwen9XlSs4UB2tSeeYF8CY1Iprm3ns/ijEOcCAstobGhyDT
	 b7499CZGqqo/i5KEPvf+iiWaMAi4t3QvWfd5ZozKr8XFXrJSsVhbB2GDA4S1vCc+Fa
	 iFADeqa/cjbL2l1KrmarFPNfdrSFL4CxDiFCUrOx9UmeECKJoWhO+NuKyHEpNmrmkQ
	 z8wGJ1WDkuDotvLZhTxU9E2I+4jKI9rYoV0c1q9DhB2jIvmyZceUpAYC6tpT9+ATrR
	 Z5cCUIeYeuKwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C80DD64072
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594723363.16124.15391620910269358907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2a622f7dde1ce5a02b6afba5c9ab04cfa87eefca701ad7467d1d333b0af6c7
Date: Wed, 17 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765947233
