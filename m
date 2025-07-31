Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1748319DF62
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753999794; cv=none; b=IOxNrRNI9wjA3TzsNVTY7bMBuSaHdN3q8cTCGdj+7rD4DYw4Pvl2B/fUsNKiElHFZ2Y0TU+2hHF+F3NQq2tFhrCrZSKN1TP0KoA2DR++BZBUCuAzNZPjerMkLgRnuiQx5SHVOPpvJ1nFIfLXKAFB5/74AXllFORDZQwDmLU/zkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753999794; c=relaxed/simple;
	bh=fgp3IcnCwxsxxPaB9WGniUcsZtlyrwvV1FsibGIcYFk=;
	h=To:Subject:From:Message-Id:Date; b=SRv0lUkgHMipCBxANoUwyPuoVfMvecZtVW0go6CZq5RvQDAOrGzOtUmF08BkE1jaLLaZeLXDj7kzetb5eTt+RWJ//+pkQ3WyVs22bcovHbE1Zv8jdjY7Lkg6NDfpLSQR+pnmHRX8JYqKvuMWyIfsxZ95gPwhyDWWM633H2RW66o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAYK4x5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAYK4x5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3695C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753999793;
	bh=fgp3IcnCwxsxxPaB9WGniUcsZtlyrwvV1FsibGIcYFk=;
	h=To:Subject:From:Date:From;
	b=NAYK4x5hJABFX8WHwr8u6aHEVM9YwGq9lt/VylWnYc26hqr2as+pFURJp3xgB/Wqk
	 DLiWzvSPXx5thrWX43GGs5orfcH+h+XCbzMpX0dUHJ3DJzwrTQl5ivl5a44x7J3RO6
	 Jm+kGaZ3ODEjZoagM+DwqddpODggSlQg2HvrViGncoNqiX+AJKC3W68H28kEXi1Px8
	 ZqxITLm7dXhqACPijk1mn9qA0JgrikYWwxmKQ1d1X5zb+DAqF1u4T5MecrU2THXmxR
	 Sa4llKvDU9ObvZmWfDw2NUH9tD5AFVS0th7Y/BPQ8Ov88eYMeeod3p0v2qGdN32mtU
	 kxKOPGNKvRMuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90366C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399979358.499.3498113149447839473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db50414142d8d637f5c1c7087b8acb2aad4d33a76d25808379fd79188e07407
Date: Thu, 31 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753999793
