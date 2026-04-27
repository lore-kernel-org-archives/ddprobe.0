Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1332A366072
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777329454; cv=none; b=fQ3GGGprRDm10kVKWjQye05WJazYNOpODvAjaDyMLXQ4uQHpm047sgyXWi1LWj7K8AHie0nEaMJHtQVs/3ecXGsS2XvJXjXr7pt1mPath4oZ8MXe97fFJF5ffZxrxKfhwfB+vZnsFDfgY+bwhyAb9T/o/yEvN2G7wyOf3NE2vig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777329454; c=relaxed/simple;
	bh=DQjiCafK5Aq70wmcP/9geHv/+dJ7hrTtfwe3n0NV3nA=;
	h=To:Subject:From:Message-Id:Date; b=Usi7nY9f6CTn2zwneILISNmsh6ifrdgCC4WN5uH6FLMSysjDX9DYljmiyMXSiLIQZpyZmKmmmfK2hRENHXLQYDm/fswLumsQCn8yfb78wqL0QVO282EPKvdzbm5C1/BGWn+rPHBxrFqAIHp9XFb8cUlCCweix3jKz3zCPI9BBY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFMBhYS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFMBhYS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC347C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777329453;
	bh=DQjiCafK5Aq70wmcP/9geHv/+dJ7hrTtfwe3n0NV3nA=;
	h=To:Subject:From:Date:From;
	b=TFMBhYS0CihGGqXRBf1xPARrtYj14nkD/TjK5Td5T5Vo+T4wq3zc3+/dLHgxqjuRT
	 AN+ly8ERl6+mq2+m4rOjeJ+F9fN1DzdeiDHOyy5MITnSXanAgzMNfEjj1MIONGx2Iy
	 IxpBQOGfT8Bfvi1LJmMbVpM+tyI7TllZEYHnioIEY9ayno8FpUEGgT9uFCifVFDwcs
	 id079o3XFm9lacLgaOcwInnmiDcN23GXWbHtxJ2g5lt6EP9v9yF900dlf1YdmHw9nH
	 rK1ycZ+9kuDOia9E3DrJFjEOaiqbf4EkxwlXQnSqJFCWKxNSukKUv189sv84mb4cnN
	 gZlMuCQOTRraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA627FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732945368.26156.7139865769844853684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdf11328fd083f9f6823cb45adff05d029092a33fd1f70b96218b9ad93600ac
Date: Mon, 27 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777329453
