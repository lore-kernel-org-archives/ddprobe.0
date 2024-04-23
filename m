Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B8118E1D
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713843623; cv=none; b=PCyWSYI/F3mKE8E5byI+WCXdbFI5D9ZjbGcinIt65zU4KCyL2Dh5metGTjs9ryVJDcoSQXqdjIWxHNJ34MCoVddbsYWZ5c6R+o9NG7WN3/dTSxWn9PciDaSsya1I2ptn5VYeIr84Bt0oPjDJEMEl+lqvYVxJl5/l8sgaVooBcWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713843623; c=relaxed/simple;
	bh=wD3YI7564fI2Qt1woFesVyS1qYSkFr0vwyZHaKA63AQ=;
	h=To:Subject:From:Message-Id:Date; b=VPdAiegqoVOlAuXOnKKThZBPFaEHphXDs6cTOqysdGWgNlSFpeWyrmBpyrXmW5LLHmm1Ky/yOaRvpB2U03kvgLdzXFhdxsGhZHUyraIL3lYXNSDq/nRkwOERZOG/YF9ojWv0W9AGrJGYjZXjfNNzXtkS/gXv9m7Bdax5MAHDHVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWW/EQXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWW/EQXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D99C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713843622;
	bh=wD3YI7564fI2Qt1woFesVyS1qYSkFr0vwyZHaKA63AQ=;
	h=To:Subject:From:Date:From;
	b=DWW/EQXSmOigD/CqYKh3lbntX6ZxjcRfnkHKyVVpBSGcEShrmxjkD90Xos5UvaRRs
	 HDvLXLC1avsKl/kFWavcFkz6JCLvs/MH5sLapAa3GnEYdCIfZu2iPzM4vl29eoZ7vP
	 zUXAbTyl6wSfgxvLjFBl5gt7A3Awzo/zHk0nhPQNe1DO3knnenn6BIXwnth0KyvRJ6
	 RfOykO5A6jDT9m6zu9qNtmjHcl5hwiHwaOsRIla42hG2VnYSSYlEuD9ghkD5vK3pV+
	 psxwCHHLt7gIobAEFtJnHPv1dFOeNV+PV1oERdPKlz7zesgD4QWh736gn55YTxujT3
	 Y6RxRmVpSbJ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBFAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384362283.29156.14769336835504340676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66f846d6d52615287c69c6d1dd73f1ce2d5e2bed757f5264cb2a325abc8d5cc
Date: Tue, 23 Apr 2024 03:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713843622
