Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECE926CE0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766949834; cv=none; b=hhytqkpIxtlMUrJzYC7hBfkCL/mKKVF6+li/L4lRFT0d1uNUJIWoBipt/8PfoZi5oCyGHrFlF0uXTR9vQ1ZAkbSN6q+f6emqLfCDGt2SdBnJnorjfsj5geZkPwlZS4sXpQ+nCMGisHB0Ml2lu73/2a1p3tvQlxEPYf5ybUN5fo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766949834; c=relaxed/simple;
	bh=6GaPg7oYx2Z5mnXCY0XoquRJ2Awstdu4PrJdi92LUw4=;
	h=To:Subject:From:Message-Id:Date; b=LcyGfiCugx3vtXtYw16E+i0QLh6ovn4QIjHbAOnTXeYmk0s6lGplvAnWh4OVf3rNJyKDqo+luANU+5N3pyWfIWw6hHDf6miHeRj4qMLhq9JjPU6dx0gF6OcVQRBfpwCLAOAmxekNf1G6jdHm4ZzmBH4htbR2WHcOK7KiaNBDM+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wlf5XyKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wlf5XyKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23BDC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766949833;
	bh=6GaPg7oYx2Z5mnXCY0XoquRJ2Awstdu4PrJdi92LUw4=;
	h=To:Subject:From:Date:From;
	b=Wlf5XyKNY9hhqwJKRzg65SXBwsIbNTszYzBxVfr2Xhs+QgnmlARrVWTg6w3R+WvBA
	 ItDdweNc9RNkRGUVBcmZ+m3QeR2rRR6pt04ft8o2jy/HfhcxZuP8sAOjVhYdQyDRZv
	 14H+5O3DYRBRoeplbvP5zbQWcVGKHgoVEch3yDYD9tMAJCsbdjjODEh+ySAf8B7+Dn
	 f6IjuSuqVQZLVOcF/s3DSeWZV89zgSK8rEbVxLyZClFaiCSoGO9fPtvOASTF0CB5Pd
	 gKMkebAuOMqily0PeyrBZ1pNlUel+zP4cl4GU5I3aKXOauXkc4bC7Lhey8YgLO0+ax
	 qKYBKhskKNe3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E860D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694983359.17477.4274654777504756078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8935b0a0038af039364c42fbc0cc4e860989d7e1f4cf99dcba918b8a7bf792da
Date: Sun, 28 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766949833
