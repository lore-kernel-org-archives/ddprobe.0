Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC198F66
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743823195; cv=none; b=bQ/qRXXMDHDCesX6irkI+Y4DwZDdFUrddpvMAQLr9m4Uj0oQ4XZZiCEi9XyqDiVHpuPDBcAOEZUg1+8lfwOc7ZKWWd8U8zjPy1YV+Yr92RoRy+D9TX4a1ptEBs9CC7ctwKvSjgkihuQkTR4sZIqKr+sLOqhTRnQwYg0/snZ9IMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743823195; c=relaxed/simple;
	bh=lrQKfu7/ZjOkw32buhKT1exKbrizNYGsLHF5NQRbMQs=;
	h=To:Subject:From:Message-Id:Date; b=Zv/3ZiQJd99SYA5zPMj7Vz0fOA22mTFD+JAR6EQ5zHOckMtugKYSCglbuYaPYXBUiQrUHj2WgNX8MHIr40NMLzLY6ql7+Cy6dugZAqREo+7eym0ShZr1eZ+6mhZJV2ysYRxYFSivjrlt7ho7ch6fLsvjEBEiyTqFoC9QUjaOC8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ/edtfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ/edtfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE098C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743823193;
	bh=lrQKfu7/ZjOkw32buhKT1exKbrizNYGsLHF5NQRbMQs=;
	h=To:Subject:From:Date:From;
	b=NJ/edtfOJV0D5KTBVst/AGeOkj376C6talyOhvTXDMbJRdshTdw5BMhJHyMEImaGp
	 pEGTmmbQYzTjABiU+QK0mhH8Y/V1piqv34G4HoyzxjR7PmgnXl5hpyRRUukytl9i9K
	 bwn3vTOzgC0ISNXEY/TzgHMyPm2f0VEBTmpjLGhjoCHdtt9De2rLpr2WT114rSzftx
	 h3D2JeskJxzDbYMcHzB+TWT/gjvOswcmXui4kTmZu03BvTTzP8OGwfddm6zx/yDf7q
	 OGH7Gs0n3DjQ6XcGIQHYEI8AqB+RI0zilOyGN0W7yZs3WG3j17SKaURua78Uzh8PtX
	 Hk11m3BthuDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CCC3601E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382319361.7989.13014831174818067324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a3fffe3da19bd74017ef2d790a5f41637582531ef2ca86502410e371359ba1
Date: Sat, 05 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743823193
