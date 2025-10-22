Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247A22C3250
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761156594; cv=none; b=Nb4rrcNVTWLRKm9liMI+7eL4m/kM56amJQqCkAqUCLgtGe7gdWplH4JynM+86jSddt/ghnyVfRconBUek6Rp3wHVmfj9Rbnu5rti9RgeHu01Q5GONHsuhPM7XGiIJ3tpwIFRAZI2vRwwith3nRAugkY5gZgk2t7V+v7hLu2hnpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761156594; c=relaxed/simple;
	bh=0fcpqP4AXrPoo4gjt2fF0CdmpoXGDuRKr3A9Wg2MKDA=;
	h=To:Subject:From:Message-Id:Date; b=Vjd/kBkHtk6p1Ep20sMe9OvxWaYc7ArDXh3249vdMctzppxS2r0m6qyDxGuvGrk0C4iZfoZjX/P+gBhRVH2IzPI4FcEPl4I19LzbCmxs21YB6Fm9YbZL2ttiK2fwsQTvn6QcZ0beavzTryci+eR1ewY5hMy3KIE+h3CsmJHn5Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4TEh55e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4TEh55e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E52C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761156593;
	bh=0fcpqP4AXrPoo4gjt2fF0CdmpoXGDuRKr3A9Wg2MKDA=;
	h=To:Subject:From:Date:From;
	b=l4TEh55eQ5XR92z1BlcaNGHAo3BHHQiR+JYnruVipp9sWJKaM/CFXPcEZXTrOBHki
	 vflFBJ0RKr2Gd+xoDRWR4qRZ7p/u9RiftEruHKCTtLUwtEIv/oLy6mN1bCyDNX2YcB
	 euk9E/GObiCGHK3FfZoiJSyzoNRH1fEl3SzX5iDf2SLjXedZSPtWyHNRp6TURf+79E
	 /3Aidhf3XtYKGUxA8DZTTloSGDIAsSYjA5++3XMCPXbsPMuAVjWziEsydD5UAsYSGx
	 dK7GH/lO5ohRP94Hpkkud4pqmiPOiKJbTefTZcQtSN1WqjS85JPtTfWM6w4mDIhQZh
	 rpF2BcY7p48Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC83CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115659358.16215.14306558135429423008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ca256d1fefe44e6527814be837a99e62fddefbd3ef4a058c1249d8bbbf4898
Date: Wed, 22 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761156593
