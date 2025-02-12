Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CA76DCE1
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739325054; cv=none; b=gMzCpQDA2skmErR3vKVddOdsLlKvjkb38Rg8l3VwBaCNWJ++iJjt00gSxiJgrqcXenBcHqGcnDwwvFT6IJa8zWjoQMGgAim06Vdj+z36I6BvRByjjJzOWgenKCzYHjblqmSFM0vhGOMPuEGNkm5mZj50ypMezKAkXesRGVZENqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739325054; c=relaxed/simple;
	bh=AmBiuD48gbxzam3/N7fD7KwhIcqTAUFOgwfKYqXqCsA=;
	h=To:Subject:From:Message-Id:Date; b=CC0islgyjiRgjSGnncqaSFqylnHB2BV2oCYrvDdcO+lDSPUDJDq7usNPvppiHaE1SI+dzwJD0fi+6lKWppyB4YskUgDDUIGRRsR4zd6c3YDmO7zGSHWNu4oc22uvBvWQKBxaEuN+IYSoyBS/7jP4awwZULUFKU3Awe68LQpjHYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rle5POWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rle5POWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BCFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739325053;
	bh=AmBiuD48gbxzam3/N7fD7KwhIcqTAUFOgwfKYqXqCsA=;
	h=To:Subject:From:Date:From;
	b=rle5POWjs9VD6YI4wsjGcTPxTB7UhSP8IFrwkAoJn0Rc5+10Ga9R49cmNEeUNKshO
	 y+nSWhFczAYb1sqK+dwfDStH5a6awphJDyD7XF1nlz4XWfIGos/DqkproKw8omCVe6
	 R2gasCI3SBYOyoRN0McB7TGRJ0DEOUGmsndL4T/Z6uTd4JbqwfMzZOjU+dwD9UaYAD
	 X1OUgWKSxn4gCw/vjNSnMfsVxtqaJFdY2zFZe0myYMdKUOBebppTMt7eLeFpPQGpRd
	 cSje45/hMp5QtaqwqamqouTFTtii2yulSLCNBwtgb3qRlWixvjPgpAMsjs+rVO2Huy
	 Sy3Lg8DysTbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B626C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932505362.25452.7281366943208868531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab7af48d8f38d384887bfacb650bdaf8f7b8763e81cc8e8a4f0faf0ed30e2d0
Date: Wed, 12 Feb 2025 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739325053
