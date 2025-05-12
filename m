Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA31E2838
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747013394; cv=none; b=I+UcqK1zy94SnvQJ9KEHEBxvOCBXNPe5/hsWQyiMzXLHC+di/byjXGS/KIuz7LAgN52CQ8S/Kmm0SInlKY6/ekIp6DHfCOwVlLxOWIgmRlGjvzZNWhj1STzyENqUd/UnBTtKY8iuX+QZxfxAUHvfaqagyuk9VpE9wpmol9QKYtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747013394; c=relaxed/simple;
	bh=ognMzhYtrkh/spmKxou0TlFXEx+Qiu2sFJk3ZK4HSiY=;
	h=To:Subject:From:Message-Id:Date; b=sL3bDqihnqQJzDzHbp7IiOPfh/TqK9lmkU23pWhAwVjKcytlWM3jQCrY5iRPZHHIyzCACWkQJPnNuXMV8jR12iSb+q5goDUkPf7BSjrJB515vtx+UeGCC3p/2tFYCEqj+mqYB6075BivbnKRsoDdADXIEasOCgwCwftfPvrdMUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaJT3pwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaJT3pwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747013393;
	bh=ognMzhYtrkh/spmKxou0TlFXEx+Qiu2sFJk3ZK4HSiY=;
	h=To:Subject:From:Date:From;
	b=PaJT3pwA7bE468Z9+C2zyk/hUE8X/uSGXrd22PeCnUUUUhSIdIuL+xege5o3gP6tA
	 tmAEvQsdmVyZS33YPNF+3x9KKYiZ8+KE9WWZd1MAkfqd/qD87jhw05uZJrzhnpI7jh
	 MJRfja44isWNXZN/kiQJP2pBEigUlyUS3sRw97xKO2Dv1bBotPOmbW63IG8p7wpZty
	 kqdU2ceTZFkDAY5KeKCzak9abny93llZWcNBVfHcWSStdaALIUcc6hkGEsOgMjIexo
	 DIQYP6xKj/hbQvb6+zC53Meug/xgIpHa3D8lFo/QfaTFoM9koFgDotBY+AlyTjJtl4
	 HJTnWDo9+Qxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE7C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701339357.1381.15586239790956869744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d16c79d9f339164a0fc22432ee9ee9ec376c6bc03f03123994dda2843a46af
Date: Mon, 12 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747013393
