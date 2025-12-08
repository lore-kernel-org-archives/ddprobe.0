Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ACC23496F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765163574; cv=none; b=dJ8FG2q2yaLBFqnAKumOQl4zpQi0V8BoF1E7mDlhxghhk+6l7fiIYB9BVB/FTnbDXfbz7VzPfAoHcKf51e6+dCgbzXJw+tCC9zeLYYEPKn2Pq8/5mDLB2EQZzUITbV/cl98JW2ge4HgK/QiaMLim+03Bk62nkMFLwPjNJSDXe0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765163574; c=relaxed/simple;
	bh=yLrVmMsuUJAdlVTp06RgV9/bT7G34cs1oa6DdtnzBjw=;
	h=To:Subject:From:Message-Id:Date; b=bBpl8c94W/SBePgCsWx+oopUpekCx1obzyuG8GJn+KLCeUpFOAMefuvj5o6FD93KsSrxQiWMjOQAGbrLVOtI+18T7kFkHD5ygzBqrQ3+kIyFOQ+7Q0dPRrU8PdL6PIYmS7Wq5fY8wKe9u3TcxbhhFdKeTv/BVagAngu67J0ifzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkoU2j2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkoU2j2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765163573;
	bh=yLrVmMsuUJAdlVTp06RgV9/bT7G34cs1oa6DdtnzBjw=;
	h=To:Subject:From:Date:From;
	b=dkoU2j2DAld9ssybqD40QmlJ6csP4z4iOzl5zEkxGSj+d12557wwn/73swDJs1vDc
	 eNQufhs0YGdE8IbUItWJeRE39xldaHHbWVW9rbJU7eEz1BtINp42Z9nBWSH1vBT1tZ
	 jfYaXGHS8mxXwl4uwpCw8rMeA1ZvsO2IdOA52M6S7iIe8wQu5VrogCvJ2p29Jp0dka
	 sn4RGZx3+8DWFBJRAnZAogS6ecB9IZv9azLsymlvPdJfxKTCLkLE4gGAV7B40ughGi
	 jX30a7mY0Vqm6XRLnA7WjausTfYYmQWU+yLlHNtw7cUor5iBCLugrNXz2uH7NCaa4k
	 Z6E3zP+rlm0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B6D2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516357358.12325.2940992517605410582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b754373c1d83224b556504075a484410b289d9eaaa44636dcac6fa88fe7f7b6d
Date: Mon, 08 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765163573
