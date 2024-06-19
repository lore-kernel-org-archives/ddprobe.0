Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E3A4C98
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718779163; cv=none; b=OqcMM14AetlPvuuRmlXAZXEsNgdmlrYDUDIewUUNm7ow/DcQsqXBA/2Z6m1DoU8etGBQGwEOpdc8Cz+QLnCfrtgJk77wAhTBfwyv+F0jW7rhwDplUonu+4R0zoJKJ3Bq6EO7twcfLj8HO//RVrP9WCCi6qQtGbwcllw/w/wwd34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718779163; c=relaxed/simple;
	bh=aM0FckBYoqHmbE8SR9iCOMjtiVMeRk40byTP1hbuPcE=;
	h=To:Subject:From:Message-Id:Date; b=CZqLiHmcEREy7I1aZ+a0adqtQiGIOt0K767t+ti0Ej1PEIUhW4r82JbxIhY9+eaObolDIcm4MH0rDSRLgeEgKktjIxbWbhsE20HLPWs0Xm/tG22m2wmIlsYwRuTyPopfPfvpWu/PTm/WVljSTO9x5Z2SRCkNcWk5zG8Q5yVf0kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N62lv+JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N62lv+JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0832C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718779162;
	bh=aM0FckBYoqHmbE8SR9iCOMjtiVMeRk40byTP1hbuPcE=;
	h=To:Subject:From:Date:From;
	b=N62lv+JI+b+mzvyKmw+Au7e8UpFN15jpvzCn5nMvTBEXNwaSxJ8F3ALZVygyWJOIB
	 KTvOuy9H0qiJ73VQHvvZM7bvAgUWaAf/DxLGFGVMAZ70nSrYSnEEKUF8F5hBiutR7H
	 Am5itMcJchLB6VtYt+9fY4zRs1Oa7M3Fj5587WCa6xq5UVzSy8l7QAJgTocrPZ3gv6
	 aI0tLPdqnv7QjshvOdQi+2XuRvIETByoWWvBfu1tgnHUGTljah1xBwKKDyrPuOOokw
	 RHKTQvOSKC+E9WJblvRHQ65uPH4E19dDwPLuMjMfrl6rZZPdiEHPophV1rm92CcUrK
	 Y47jSBpZK5WgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70A8C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877916276.7432.3863314773068460505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc172ddb7593ca9bdc1515605fd3a0353ca521d22f101abe7d32a93eabc577a
Date: Wed, 19 Jun 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718779162
