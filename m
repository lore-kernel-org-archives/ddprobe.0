Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FF153E1E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713916223; cv=none; b=FBNLVBsPAdu5L2WGC8rAkoZvj60dLSdrmfISUecJ0Ds6pZ7KkJE7gOZ0+V+YliPQ+EUc8qOfqSpF9ZZvaRkfD57g5DXXwnnDVkT5HJVTxZjFwOhFYmnHA5jmdy0Ax01SxEwPyp9Imc1lPeW77HvaMUdSq7C3aIAzhBRQvNLHucA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713916223; c=relaxed/simple;
	bh=w+G1oGubRdT2ibPgJ0c3XsWV122eOiYDQ71f89/cVUk=;
	h=To:Subject:From:Message-Id:Date; b=jjsIqfqoZCyfZTccu/n8ZNhIA9tf3o+OmWE5BJixNagPppEQXhrKFriZmJxReDp5yvPzFHqMnQMz4XTJThY1LvxbYHkr7nLdc75YHMAjyN/TVL9eiVVjjF8/2T7jpgSUzhmLPOJ9LA7QxC6ApGAW+mGPU5mDLa79QZu8w1qZG1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7BO66+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7BO66+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC03BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713916222;
	bh=w+G1oGubRdT2ibPgJ0c3XsWV122eOiYDQ71f89/cVUk=;
	h=To:Subject:From:Date:From;
	b=O7BO66+/jwu+EmM39i+ut+jvB1YV1UxvbWTXgaEI2jPlpSTX2ETOuaNprwobQ8ubU
	 ukBSl44u4zTZV/SnBjEx44UTlKoldLtYiuAScia3c63YEYy11dq47VEi9zi11HWOf7
	 59CpnTRx0CAI3BPRyuNuUWHgQBo7wYhOA7/1yTsRwtzkV4VJiJEl3GgYA0xk0k9dLl
	 1p5poP3i/I7/vwp3zH5qf7Xx9luLuOWE7ecjTHCKvogpFujgI1Y7XeL169ykN8IQHJ
	 1UrotLNFhTC/o19WW7YZE1UJEZ06rxDmBeb7EZ/AnZXbc6FrYuHWZIWJr2XfERpTBn
	 9oRiRrR4a/ivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC99C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391622276.29021.10354002172803779348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b23d9ab6fe742c20371085bdfabc871607b76fa6d1480b8ba57c95cd69f6e6b
Date: Tue, 23 Apr 2024 23:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713916222
