Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36668158535
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741577334; cv=none; b=iOQvxHwrhX54kx/7o6bJPOqlqrnRht2bHtMrGfhsZkFRPJnzn4KHsneXCo/Gz6va+2ghxGbE2R3dIVKkLe6ePC/RWGnfHZi2IYwlmTl73/7+BAQw+58AMFEmAm4GXhgRh9t3yTjN0OdCCNgVFqHZXl58nMBuDOeOFvuofGQXdiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741577334; c=relaxed/simple;
	bh=Mc0oCUarmRlwpSsHmLlD3yf+x582TkLPgs6tNg3Yi6Q=;
	h=To:Subject:From:Message-Id:Date; b=rDWaWuBIWMfx/xE6Ef2xNU9Qvi/xYgWiamG99U/tm6/kCYFwLnVXZ726GhRP/xi7sakOA/3rMmfXUSLshkej/WI79Pd2y83hULyjAHKUpAXgvLLFVI2FTJuuKy1dpYMwTSBqwDjhV6TmweVaN7EssjEBauD2ze4BRUHIWJtHa0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjbCZh68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjbCZh68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC8C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741577333;
	bh=Mc0oCUarmRlwpSsHmLlD3yf+x582TkLPgs6tNg3Yi6Q=;
	h=To:Subject:From:Date:From;
	b=TjbCZh68Xg2JcG/1VHohgGKfAxUwbzq0Y6W41+BCvlUcR/K/i4dpKpW9B0cdq9uD8
	 JSq2X3ddGeX1YZuuoiyfaZFoGOMiOOdu6Pid2zXAela2Js8+LuRtsCy68pDRWeQev5
	 4eYbFUKZWEHL7WMOewnW7JiQxLYStvrKITWT4uRaEpC8qnvTeY1AXuR3Y41NgFO0VH
	 g61HGVwd6qyvILRVawqgi5YSF4TsZ2+O3GOGqg4f5wV0vUrfa5bvr0jPgr4gDFoyl6
	 FqvqYd+zdoU4WpxCyNN/Sm/EnnB3OsRT83V5nr95OKtJjJfnZLi0sjPkpVCg4Jijdv
	 ShC48rTe/IsSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42FC28B28
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174157733357.18912.9992009162584961155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbe0b6894411057a2c4cc78c22ae2480c76df016f510942c6bd61602504dfde
Date: Mon, 10 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741577333
