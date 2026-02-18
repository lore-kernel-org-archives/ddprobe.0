Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0333B33CEA5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771407894; cv=none; b=dHdMbWgCKHB2K8n4ZlbCarhp3KtKeNtZ/aIn3zulaQiUh1wBg+rncpkRIJRzAktbNRbzB6dUTRPHFFa6cpn/LqLjnusBm9bBnCbwSax7jA8/SFDfY7aZRYbtC4PeBXBCVhqtJcXnfTAVz56iHiNjt5MD40tHv0yt+GG0KyJ/KUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771407894; c=relaxed/simple;
	bh=8KCOKIHf6n2vuKCXyZ1/gwny0+j+pRpoXURxIH3EYTg=;
	h=To:Subject:From:Message-Id:Date; b=ORyq+/XT+SWo7OiEkBA96D7bKDJXzl1rhvR7ogO6/IUEORdnZKWd5Y46UJa62gNQ7VvBSRJxyxKDGyaAyAVQ0p9tS5qDF77ZYp5wlM9cfMhze3jtUMNx1Wuci5eBR/CGcysNypxEfJfJShOqgrVqCOLjDNZ17eRPvExfPFjHSIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzB1IcWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzB1IcWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C6C19423
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771407893;
	bh=8KCOKIHf6n2vuKCXyZ1/gwny0+j+pRpoXURxIH3EYTg=;
	h=To:Subject:From:Date:From;
	b=NzB1IcWMsUF0cjg24j45gITizJzxS3JiUKOOcBpOk2GRo1a6W+/OssW95PJcud2IY
	 eDt4mTeSOL5jr+EQvhnc5+8LZBymjGcdWGgq3g4/8QmKSHI8hPPHGdPZroRAeWQfuu
	 iOKB+cV7NM2FNHDMoVjNVHLWO9aO1ks5YuL/kPCsDJnDfUIth5AT2IuqtdumkLUOwm
	 6+YdogwNmmzX5W5f5qyLerDJhcymBvdEopeu5LdzesqZxaOXpRBgmyhKait44LuorX
	 hv2/1oYVToYcWpWCAAs+s5IQGypLsWuXOMt8/cJvSlMoQRp+VGJk1UzLbYa/WvKCrZ
	 TrO6Tp3SgB+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638AE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140789360.15095.17733884922566553625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e798f19c2d6152a6c2fc2404f4651211a4282ed7edf48c2001f8843f9b9084c
Date: Wed, 18 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771407893
