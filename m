Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1196C157480
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759644594; cv=none; b=T1w8lKOYL9eHsQMU0mBGtfIUnrShmdsK/01dbWz4nb7a0UsPh8PdzfBHfJRq63I6rZNpykuPI3RlywIWo9PePeihPtgIPdBhTSwrW5sxWQDAW5I9W2Wrt9BRniVAx3sMm7A1GMssqbxchzzAZhxLswIikUee38ZXvBZRan3a2eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759644594; c=relaxed/simple;
	bh=GiFGWHvGE2BK3xGvzb3t97FS8ODISc2cl46sN5W6Vqo=;
	h=To:Subject:From:Message-Id:Date; b=FsVe+QRg53hD+JBm/NZD9Owyeo+5z3r6lni2BnHa4rOwc7I1RubEaNC7An7LWbG4FtHmPLej/v1OaqoEee6oXmKLtuDTqlupiNp2h/JxHCd/KDZ4Ad+CIcYnLujkd4UajJcQ+++PXXUL4R+MwVXRWCqgsriCH/7R0sCmwRstUgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz/bboiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz/bboiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA689C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759644593;
	bh=GiFGWHvGE2BK3xGvzb3t97FS8ODISc2cl46sN5W6Vqo=;
	h=To:Subject:From:Date:From;
	b=uz/bboiyNrLy9kLuPupRRBTSTsG+/SQt8wtnDUNpNHeQUIneKj6tfR82btkEZPlX0
	 ivwQUz/kFtMAEnLyvnG1w/81+v0rdbe/z7VPAb1iCK66olvYwDEqcNuKzSpHc2sp71
	 UvaGeDzNx4vLbyRytXLQwWuiHUuXMlE0ECXCQCdW5rqkI6vIwqg8M4CCvdfWB+fsRV
	 nw2xVMmWecd04K6PK0ByrV9iiLt8Xc+gjvMbfw612BAg//In0mm/Ta55jbc0KX5FLP
	 NdJUTWI805kwWm+hCs6ipHMaJ6fz6Hd6t8TrFVabuOlaPZ89m1Alft0yB2z0XVF3ph
	 7qWvb+bISml/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964459358.27993.3400216013902659810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506637fcaa89fc83f9aded114771bca2b538cc363ac9c8d1c1c807175c795234
Date: Sun, 05 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759644593
