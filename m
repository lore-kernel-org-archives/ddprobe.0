Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7818991E
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732464354; cv=none; b=s/CkMFESXZfLv3BvcmCNd9dLPeTWtFqhahWReKchQy9qrsHbFrhwSS4pX2ZaxUTZIjSc87gb/ecppFs0i1yZgTQ1Tq2XjkrqsOtTowo0yOlGDDA6F/GIZunaDTGe9rvZavjhzNSNaw9Vkyn4cpA3Dn/prYXRlXxlKVZnufZNZXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732464354; c=relaxed/simple;
	bh=yPfSrfw1MCh+iEkuIZq8VRecmW78eXZFdIeYsUkO2fQ=;
	h=To:Subject:From:Message-Id:Date; b=IxyiONIdBo98D8HosEGlBN2RWlaDjTBz3QUNUo8MOdQc6tjpnXptQmC7/iYJbW4mT5j+Xr7Wid14nAaz4EDsDnkVfApsUBNrCbfd1jvlygMsHRi1M5Bj3IPo2aWgregELhxowpqvpSYES2YCjV+OrNUtlOHUHShhK3pOXgFqZPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B75/g/00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B75/g/00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CBC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732464353;
	bh=yPfSrfw1MCh+iEkuIZq8VRecmW78eXZFdIeYsUkO2fQ=;
	h=To:Subject:From:Date:From;
	b=B75/g/00kM50a73s+rPdHy14oqM2hDQO1htUssY3jSj/WnVO01Mb1H6pRZJKoqym1
	 Y/Yk7IJ+VgDYwSctyUvTgLSiiefapsMQVfQEaerWqqwTEhHAvd8GmbJqZ5dg7vd5yS
	 B4T7tZDj+wDsewBl/rAQu7zProS7me08tjLyrAXNnNWjkf0a+Uu/UEt/3PHk3NDeIM
	 8Qye881foF6cKZF47/3RkSPT2mZbH11T0aM2KmVdrEnXA8EMHIm2+0yVsOEWzNyv6n
	 SpsepJnbLGizkNCR1WOJRUKwLgnjwKS2j0Iwy0KQZ33nkeBr7llvNFcg6i148YBVOE
	 hutmTljPSsEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ACEE6689F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246435359.3368.1780594165057454485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1380e3b74d90fac4f7a098730f50cd715b0f0950dedf92cee06880695b66e086
Date: Sun, 24 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732464353
