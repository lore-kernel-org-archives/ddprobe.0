Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D342874EB
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750037994; cv=none; b=PCpfczLcCqPZ//adpv6l26ixlyhIJ/CTf1pO8V72EOX3FGp6ZQy7Ep8n3Dx/GU98EQmGFs/7qbQJmBX9OkVHBmb17H9+ZZ7mOKRZdIOGFnxxHAdGtwSmgyQ3it2VgawwJLarb2PFTtuJW6+J+5NGo63W9leVkffJY0/GYkzxbTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750037994; c=relaxed/simple;
	bh=numLuYnhWymFDug0jQL4uTXhs/5/P03jGPM+TADnfwk=;
	h=To:Subject:From:Message-Id:Date; b=AW6v4cflGSugKXSkNeFW5Od/vo69bzJ5p9/b6YPboxkg7Ym/IJ93jiTvhovaBO+6E+W7PBSBIjqBfnE/mKHjYziL9EwTkN+Wu5dWizFImXXeXVGFHU/PzvJFZNPjxO7yJmdbKgP6qXtJK7fLTtsnioJrGyC9HZTE7rdQoUHDX1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU+DZn3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU+DZn3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750037993;
	bh=numLuYnhWymFDug0jQL4uTXhs/5/P03jGPM+TADnfwk=;
	h=To:Subject:From:Date:From;
	b=nU+DZn3dc8mMYuWRviagd8Dle97XgnXWL0CD6NPOwI/CXoro44JPLAoUXO9FDyL3U
	 qu7hjIO71PLVStZbIzZBjFVw2vpQQHKDgjwgOrovVlR2RFL/486UZIvVqTuFaWQ5p5
	 Imc0HuE9dkWDUUzLpRepXUuSX1R2N3bvccWoZl1p/eDinYvGrtNmjMIYXt5LrVW9Es
	 +2GRFNLOTi0uzqjTpV2xSwEfnYaQtNKQJGc6kySG/n+OeRsmZThnQYjirDzv8qsTnI
	 m+UzfIHCW8QVokt/b9rQYtmBCmRwcwst3R3MxID8X7VpCVtY4b7MY8Z1Pix1GJGxbM
	 SZanK2AgBwjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EEC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003799358.31674.13477726089929791102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df6aeb8c3286feaebcda7b9cfa3b8d4c290c85b709d250340830fb7a1770c3a
Date: Mon, 16 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750037993
