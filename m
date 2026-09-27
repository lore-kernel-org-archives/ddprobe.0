Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D87E213E89
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790470834; cv=none; b=STu59ABtMQp0RVJ/CV9f4aSNd0r0NlfyY1mb46fy4KyoqryVMFQKaq7D168j2UMjjD8U70v7qvfsoxhFdGqqKd4BKYjVbZpKclW8NocKPy/D7CCAscamazNGomqzYWoMiLnf0Q2t26hQZaT+GsH8IFQZCuYiG7aXFB9cjCqad7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790470834; c=relaxed/simple;
	bh=kPE20pKvSt90jdk6VKdxRiynV8sed6a5O7/7NQwLZXM=;
	h=To:Subject:From:Message-Id:Date; b=CuGeGL1YrydFwG9/t/V/LVGJRbPhEoTORONMvVnxXuOsHnz1WU/GtpnvQ2CpDDhmTxOu2H6wtA83/B9TbaqEvQIXqbcp+yndGaOSCb44ukmX0TMg2Q63dTn5LEkng6Z0PZrmooEFvVlLcZVUz5j2UBV4hWjUw6cldJ1NRJFjaYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMBiGEmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMBiGEmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0777C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790470833;
	bh=kPE20pKvSt90jdk6VKdxRiynV8sed6a5O7/7NQwLZXM=;
	h=To:Subject:From:Date:From;
	b=rMBiGEmZlsEZaikKG2YH+ci2/K07uMtE49xTytl6SJf8ztzuiWAwG1D3euXH/bRwY
	 qnhfWU/0Xi5FHjuv9d8Zs6Z9OG9G68LtB8INtHBIs0Nu5JSQvmDMw1v+wx11fSjNre
	 fHm4VgiKl1ZhJBL+V4yAIjJK/myQWP3eThIu+vbjjDHk9GqAozSHanlrBZeQRo5Y0c
	 M1jAJLGlkiyVenBIKYXegg4oAxrljeK8+nkr4ZnVqRdgxynKY6XDyod75bRTPKhOkn
	 UvZPQznBkZoTP6dgMrhBhgf8n3M/FZSVRKV5NvNKBwkbN4abgbUNm4i2/7o6383iCq
	 e3wr6TgNSpfHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE546C9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047083370.28446.14604988978395546102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a31163a5ba38cf22b576717674e3418663a4486878001ee0cb760ffe8224b8
Date: Sun, 27 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790470833
