Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6823DAD39
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738413354; cv=none; b=KT+9CoyrkQAkkhc8BqISJjNqD3hKOxkUfUhYWfFqQ4jMxJx8iZPrLHZ3d6nAU0p5zWT0fwVdiAxAIU0MGtRSMZIlx6vG44td2DiTvq0sSzhEVlnW4tWw7rsbankQbn0kTW9xEHPiAp2IEXDmHp6aBEuSU2Td8wSJxhleqNuxlLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738413354; c=relaxed/simple;
	bh=o0/0JRYcBpA7dEwSSF3GpuMvOv8QpTowzWsexR3AGgU=;
	h=To:Subject:From:Message-Id:Date; b=U2YNyxTeLQ9b51f6qqMjjaUG9pxSJIxbgMxeVuGXXf+sKptRus4oBrBnuV83GWdHToHNFTqJ/0sxtFQekcHhUG3kvqKA2m+7Q3E1q9cpNAwBB6qBOx5eFGY7RswwtuwbHBKHsvQGaaUEHNDbGO+aH9d6jyAFBQxSJbIc9/v4ddg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVGPmGQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVGPmGQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA030C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738413353;
	bh=o0/0JRYcBpA7dEwSSF3GpuMvOv8QpTowzWsexR3AGgU=;
	h=To:Subject:From:Date:From;
	b=YVGPmGQL8HBxmb+HBe+ZRr2TqWuIWs6BUPSsiXpkJzM/pFEqHjyRgmPamLoBPaKfP
	 HJumRwQL8ipgianW9OsZOlYVtxff609j5wz4J1MOLd/UYhb/BxicYGua30BsP7JxIY
	 EHnuf5wRVTn/wJI2V+cu10qPvZKxzfyvkv1dukbP6Sc/X1xt6Muo7kV/wq3FAr8+Rl
	 PqKt/RfIZ+3lcrJJpGTgIE4bvq2GQyetQKazK8YZ5ei/eEQnVKxTNkx5Qh1tZRi/m6
	 dcm4DeYUlXmfb0hw/zGMDUfRIcu7g8Y2M9AJv4b3Ggzna6GmvEcaLrUhP/2n2bmSLw
	 hfOegXiF3FgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF50C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841335360.6633.6162941004211253358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0bd0faac79b197316e46ca4200ea8613d27320f402eebc64ad82b774900d02
Date: Sat, 01 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738413353
