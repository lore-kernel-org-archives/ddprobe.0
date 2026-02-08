Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D54A1D7E5C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770575034; cv=none; b=BwP7+R3uXL8Y6y0xGrFNatWcdwDD+k/IUZOYPlaAB8akPyiml0+GoT0H3im24bWsHVrb21xK52Ky5hBVdfHMa8+IgMQ81a2Vn4eZCyi73G6zrvSn4jjmK9p0/NOmFhMA89vKlmLvSvctlEPmRGt8DOp8l2LOeQWTM3eDQV08UPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770575034; c=relaxed/simple;
	bh=Qo3tU2vGQ7cEGf6ax1dBKRQwrh43mAzSKzqF4XboMXI=;
	h=To:Subject:From:Message-Id:Date; b=dTedWeGmjySXSWfiuM0f579ve/E+L4YRv0iXvxKk0O54bRFCIWDmeJHEcvkzzTibiothQww39HkCPBhAKMKHi0C57QPGscpfwQJA60GeUvY2o6J7+M6C811Rh01FOjr1Kd3/B380M12TaOC9FhLYEIKZBw17Tml6XJ60lOCU/r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLroLKTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLroLKTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BEFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770575033;
	bh=Qo3tU2vGQ7cEGf6ax1dBKRQwrh43mAzSKzqF4XboMXI=;
	h=To:Subject:From:Date:From;
	b=kLroLKTsXJmopbeURmq2KxnIhKQn2XPT8WSF6izK01jUyiUgexTcoug3TAiO21JH3
	 4ZuiyPT1nQvqYAFjJuWcH3KFrGRi0LH+F59BWdqy1inV/k8Jz3DNI5TqTkbKWaLomn
	 UjuuwemSrDpanPT0N+UH/0PyoL33jp+I3Lh4EXnOZdL7RNjTGI/zx0dD2MjLaXQzPQ
	 +ZTDKo13y7rObsuP5yKwCLsPNbThR0WUWbS8qJdx+Xj3F688AReFm/LbJtGfYDKW5s
	 S+RB7YM2FFfysNXyU/gTDAYe+2aTGWRbTpKIJKd9E07XRk9s0ELIyWuSj78xJAMaIy
	 xKShnMQtdnrBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96279EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057503359.29871.5371267065282110082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c5fcfbf60135f902c8641c20db1a401a12fbf14f96229c7e75a780289df956
Date: Sun, 08 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770575033
