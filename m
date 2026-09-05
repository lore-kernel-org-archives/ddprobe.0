Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4624318ED2
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788612634; cv=none; b=VVXRcxQrHq+Rk633i+nsUVK7Y5Mf3OADP2Df3nvdz1gbK0cBOmtFWLhEYr5V9R3QZv0fgqHOYrSzkN3KyOJ3i+I9zDSrKvva1XVLs5VlxQF1tgdEkl2DLUAMIWrV3wXwc8s/11C6vqaVK3IJt0zpQqQIBcn7ZKdKrJfPwCBt/6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788612634; c=relaxed/simple;
	bh=urwOWLiwGs6LKr69wt+btbDjqPaBsLL73XKTRGIGxtM=;
	h=To:Subject:From:Message-Id:Date; b=bemFrff2Gj27DalJ6xt4LJ+mSqTrGoNPnw6phVOF2CNHW74JsNYYx5yl8gUxd9k0a8GM8gEU0bIn8ITbf2HT32wxXR5o7Oin8tvBAqlQ6dyBnvR5hyBF94ENe9kLkhW77B2i0xCntjnMFSKNVU3UHtr3YzwqzbMAbeRy6MsVjAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLUCDIQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLUCDIQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7FBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788612633;
	bh=urwOWLiwGs6LKr69wt+btbDjqPaBsLL73XKTRGIGxtM=;
	h=To:Subject:From:Date:From;
	b=HLUCDIQxcc/iefrgxOBMIxrRl12uNKZ4G2X/IwglTKcHop5vpa/3nwtSUGzU6DE2Y
	 JPJC+lhKdIf9TdUTULmwsBJ2l2PC3zEi0cRL7ovWQOANWRzxnk9aydvlXgA1q5GpTD
	 etUQ2jrCV6IF/tRWLDpEbev3vk0kjmb7skWnwQ9QiZioufU/KEHnJU4OwtroukTCjQ
	 z4DIg+6+2YOwk9XhVKMY9Ra1CIpksUVPUleMzDy6jEQKcaxfeqbEh1gfbgPs2tbK+H
	 gfzDMuoSB0MCXFaQa4cMdZ/Fw1b1baiXdr3sKzJ44DBemvxN+snGMaQYXIY3G6vhMj
	 c7ZKRNER/YRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB422C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861263369.27162.18246240255138099110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf1e396fcca1f8f9386b702cc7ac4058ad76d9bee23acf0de13f7d95bde7e1b
Date: Sat, 05 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788612633
