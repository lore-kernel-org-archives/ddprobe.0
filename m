Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304D918AFE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780753474; cv=none; b=QYcxe5k0I5qsmDNYbwBdJjmGEwpIGErzMMt4ownDQv9NwC+3CY3VPDjTy1reqUx7F4NpidJzzgg78zEcKXcddNvRDeLRk8L4ZbSY7VVp6A2H6UMaZMmIp8C/ww+Ud7s0gGdZkJ0x82Cnve7pD+6ps9uVfPlGG9eExGJ1Clak2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780753474; c=relaxed/simple;
	bh=NVxa0JO7oU9BTRJp3mK8VfuPrdMcwHsxbpyO+OpIBqQ=;
	h=To:Subject:From:Message-Id:Date; b=GHcyf1Hm5nhKw1pw82belRse7J/8r/0EYXMCeP/iTPgDlBg8eVvpgrVQepeEIoYu9IbM8RtGCWv+6/j8PYHx4t2XGocfGYVUCYAD83YxOBYZ6kE10j6/ZdOhCLojZBn+h1o9EPb5tt2csPd8D2iGGO3bXnWCDPEGV8KGJJd3wz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt3VBd9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt3VBd9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12E1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780753473;
	bh=NVxa0JO7oU9BTRJp3mK8VfuPrdMcwHsxbpyO+OpIBqQ=;
	h=To:Subject:From:Date:From;
	b=Vt3VBd9IId/GXE4VRtF1bCBKv/r1pfKcBWmUiGcH6gGQzxe70utyLta0SAzshartd
	 WY6kRxsHvrL9+v3Hr7N6UuJuFCQRZ0fGs55HkTp+7ZZXc32bkkQg860Kt/nHnFOTZs
	 N63DgJ8HTyNJjaah/qO9Hx8C3cWQwIZXBFhSHx4Vn3EeNEmOzwJwN1j9pl82cSjPe2
	 r49Cr0iajQJAOMV687sMmQ22j/OzMXI/te5l1grQflNxghGfHSEytIYs9QES0L75q9
	 0gVdt129Qy48Drf/NFAA7yJkB3Cf7Tn6P3nADviSzqlzPtHgztIaEzSHQq95GFBinq
	 tleKX5rVqGgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD18FCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075347368.11532.6479559796938801757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb8fbe11ecabd3f970b498c0c3f475e9fe01090bfcc7bd69d1f0a0dbc5b149c
Date: Sat, 06 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780753473
