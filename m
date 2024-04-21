Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4583679FD
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713705623; cv=none; b=TN6FkGfQ7TCkn1xLo/l84UuSDkLovqbc2k+m09dO+HxD3HZgXa9BgcGcfO0+uRmR4K+hXhTTBlxet05S9iIlMCqnsVgKazUnJpuVXL7TnZYEh21qHp2vAgPo2A5Ii7NFw/xgfsWNzh3yjx7h5rF0w/ADj376IcFG9KzZnM7aGEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713705623; c=relaxed/simple;
	bh=bPkQaJuQv3d+8Kh6lnfC6oAlK6z7jILQc2F+acbQbBU=;
	h=To:Subject:From:Message-Id:Date; b=Q1NbyjZhqTnzFWvsDeIiQ5Ao6U3kkAEXXd8FtzPRxYeKqNutfT0o884WAajUfmmdTYQJo5Avx2/RYqGcKMvAPAANsD1F23h192w4l3eePszz1h3lKfDh52QcG/s2SQJdy6j6yLi/b/ikCrz7X6oFQc5t8agHAsrNXh95uvWd7LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOMw1got; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOMw1got"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA369C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713705622;
	bh=bPkQaJuQv3d+8Kh6lnfC6oAlK6z7jILQc2F+acbQbBU=;
	h=To:Subject:From:Date:From;
	b=KOMw1gotwmtq55SDnWxw+PvZ+5Mx3z818JJpaiwGpSGwluu3EUrTO2cNXenEVjwqW
	 abISZXZRTou/KX/i00m0e93CNMO7wo8JFLHx2zbGnpL4k1nD7hsAaAnxAaub5A/6NI
	 uVy+8RqKqt+Z98d5HcD2dH9znBA8ZrIfkI+C0gfOOr2/9UBVTfapPkmcPfYwUs71rf
	 1L8fzA8XyAd18ulwRQkyh6oh8IJFpj6rMoUdb37QS1vhb0fPgNpD8AqSlhDx33qYeQ
	 bYX3vHvlNPpUjJnobAyJGzLn/VastubQXjZ8qUZNFbcEnqmwFTAeCuNk6AYgwWVAg1
	 sm4uFn0eEbOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EF6C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370562278.20879.8692533176472638753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9d18182671838ed59fc8ab6c1b44a960b4575af1da1426f58f7d5298a80107
Date: Sun, 21 Apr 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713705622
