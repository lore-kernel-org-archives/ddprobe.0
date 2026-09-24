Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F82347A0AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790251234; cv=none; b=Jtb3o+94lS49ASVYbrpC//NOOSBE8jv6orzjeMrC5qP0t61e93eFvqkJlI3beaS2D/aAPLcgwZdLDoKqfewqUrTkv80G2CiXR2/7om0sUOUqyR0+qSpyEt6TUF4aREuMnvElObef/Bu0GHEuJzlu+eDwvLLfpQEibMvPMVdKKqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790251234; c=relaxed/simple;
	bh=wzsFkRobSxLAMxJpLpS7skQlr80pXzYecg75wNdTsRY=;
	h=To:Subject:From:Message-Id:Date; b=bK1xJHpVdVQIUoBjp4j078W9SrUSjVXVXPCmdgxBTjOpcp9+53zl84nllCCVnJ+UVFFZluaTs9ipj++4V+xatacYbAGewuA4VLGSHFDpa0ntJNEdYx2WbpJ+g98Pslce7WF0ghp6/BSPeWvIdpS9qrCHvaZxLW0VfqdAQ+4EVY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/5gcyy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/5gcyy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F4C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790251233;
	bh=wzsFkRobSxLAMxJpLpS7skQlr80pXzYecg75wNdTsRY=;
	h=To:Subject:From:Date:From;
	b=n/5gcyy4MSs1wb0otN8PKmFZrBVsJ0fSXOS5XFtrBPRp/lTVSdkcjVQ+U0ixFIniC
	 BdiF9cjkb3VDn8gAPLf4UzJHSGtbQiSwfzJrVfH0BU8xFtL6gdaE1OwVJwZ+maLMKK
	 N2xwKiTd156Z5TO0Nr9IjPUOGsjaRU6xCnVQ6loK16TtlwmZCx8IxDF577EkA6o8zA
	 a9c3ibEevE9HAMm6TQhm7L9M/12jT5NkKKP8EGC8OUz5zIasB3ebG5SHJHiK+aspl1
	 B8v/U/LlV12WuiFnicGRUXx2skqJCD6JgIVlIdzVJwm7DGPpPaxwTkckIwdz4Kkzy+
	 BatQxrFGMBDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BDC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025123370.9191.4737179051631248284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d7f41353ed3f60cb014f7791a3dada8541b5d752e820a91ac6c47e1f4bce4c
Date: Thu, 24 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790251233
