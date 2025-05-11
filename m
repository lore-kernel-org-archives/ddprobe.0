Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5191A20EB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746953394; cv=none; b=by4U3lSf8ibQptgxe+vQDdvhoUQJeORUI5WSK8HFvinSRyJuHtICFTCf5XAetM88nep/WU/bpST4sNjiDZOuExlcihb3J539rOWUTkohMnfNv2wKodXRZWGEZxRQRrx5NX59cFSmiNZ1OtNT2yjUuu+7+eZuNStPS6IqDetU16c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746953394; c=relaxed/simple;
	bh=9lP4Ng6shQDdx1uL4IS7L88zvG1daQs17rzCIVf6y/M=;
	h=To:Subject:From:Message-Id:Date; b=XUG+huaeeVUzLdngEkJoZXZHZSJh/qtmLCRpbQ2ss7LewdcFeyrgN4phuoqzpxhOD+q3EkMDGcXW3955yAFohnTn2b2qrxYk6Twk1nz9RrzD/ASY6KLsDVq69G2DG1xlfk6HzD7DwCCMxcidaMskOCcnnHwnWu0pVbKXsOajZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U495F0iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U495F0iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC394C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746953393;
	bh=9lP4Ng6shQDdx1uL4IS7L88zvG1daQs17rzCIVf6y/M=;
	h=To:Subject:From:Date:From;
	b=U495F0iJNavS9h+rQunU6babhMHJTUgJjTvAkUpatYhuJBvVZN0QvAyUvGmpK4jew
	 8DTcJIpM0kODTrR+9gB2tiaU0HX39i591dtj6K+lf+MLBQBQ5GDaYCeRHGNt39t2eQ
	 31MrVX9HsMhLpykDQp6IIvIdffOy9sIO0ExYYpmK0gSR5C1AYh1zQtnCLhd6ckK2OC
	 zc4t/7QhrmqxmBOX9tvWhXgpLd2+GNSrfVWPvVvxH3Bvs7fMm1Jl1vnLnNia/iE2Wj
	 tD/lTuVO96vO7VD9HGAG9NGKeNrHqr5aPoyVy9jniHOtnZbWn0lWZ4Vl6K9Mo0F0DC
	 sDZcKhEG1ihLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D1C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695339358.5806.16801061342545206521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eeface18050b59f529483b48b451d37ddff9bd798405c81f931e69594e2836b
Date: Sun, 11 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746953393
