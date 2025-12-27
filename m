Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3026038DE1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766819034; cv=none; b=r2I7STYLSiYqPW8BanAT8bBf+vXsszlWA4RaaW5lUl21Xe13I3yqCO9A9KdeMKYPC56rlbfxAgSi8lS/ZdPZ670C4AkfAsdj69Z3N9EG6s86koLLWmDffwfEtFWHacAg/0HDO5374CZvRuWRyPMyiLJveaa9h1AMkJ7SmqEkht8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766819034; c=relaxed/simple;
	bh=MkCoOgFbmORl3ynpwgrJlu3loS8EhqS4UZytbK/FEtQ=;
	h=To:Subject:From:Message-Id:Date; b=On6Yvtp7yK2te4/1Z441JeJKyht+LB2cfDWx28J8RjahkBtsfKo+OaG8mCCXVbh+30odPIxCy9F+zR0ClU3AzrWNbSjF1lnTGK6vVNvoJf1XuV4Ymw9J6mpyzGHZ4N0oZJCQiLIeCSwNRc714qDF8giqqKq3VqmEyU5/Duosk9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht9JZ97n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht9JZ97n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E44C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766819033;
	bh=MkCoOgFbmORl3ynpwgrJlu3loS8EhqS4UZytbK/FEtQ=;
	h=To:Subject:From:Date:From;
	b=Ht9JZ97nFhIcoEM9F/9AS8rVjlcs5V3tqujX1mg0TRQmRSYBs2Jz40wpMOblKm2rf
	 Gbku/U5yyVdjxPym70yQpFxi12BOSZVX2PAqGhjEYW9cvoEZ/kt/oaF6gwvSAqT/9Z
	 oTz+J3CUyptx1EJm/LGgB2x/P9/2/55yBQx3cuoeFaVkFfs5q+/CWdc6A4dyhgKzsi
	 I0/bc48oXiLMBRCe+m7YeNspfJupbQy0mYf5Ju+zsPx7Y7h/wfmDWiNCFtK2bIsSkZ
	 jSxt29vhT3ujpl0NphHQ7E9tP4z8KCDOLZpSo6nq7opu7CPR4g+zbmjMPqpBOgJ1I/
	 YaelhifrvGaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FCBE8FDC2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681903359.31207.13986152345280160963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0b95fa9d5f3a8cc8f68f5cf5a1b65f9b07da92f9f2936dccb357b5c55f8cad
Date: Sat, 27 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766819033
