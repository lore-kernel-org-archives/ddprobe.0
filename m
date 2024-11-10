Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FC55C29
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731270954; cv=none; b=ajePNp0eEAzxJEH4jK8mtiXobPPOvDwllXvZxAAz+NsXidnnBYQ+/gWFw7CtxLnL8d64ip+m4kNUXE2HcyI5z/aJtD5ofe6w/iZe16e6KCoD1XWhxb6zQuhQuURp12hkAdJcewzrGGKD64uJ4DX2Gj5WlKmuFDqHV9zZCwUMPl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731270954; c=relaxed/simple;
	bh=DqucA6WaDrylsNtJgDH+c+EktvJAUYaDYB+CNO2DW2s=;
	h=To:Subject:From:Message-Id:Date; b=Ey4DgAl/r2siONj2PyPfW72Y86Swp0YYJlxKqqPIbwR4mePlVdUW66mSq93TFukmd5sRBxmYHeWLM45d048fjQ2mn6NG4BhvxygNjgseMC3GNNtNjW0bslXq8oCqD45IxGlttH17LkJnIgMet3ipR0wLohSfsvsPKkAmTSzBz+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw1w2WDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw1w2WDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156AC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731270953;
	bh=DqucA6WaDrylsNtJgDH+c+EktvJAUYaDYB+CNO2DW2s=;
	h=To:Subject:From:Date:From;
	b=kw1w2WDyn8Fxyk6VMrzA0u+jQ1BA9PABu1pffPSqjjjHbFfv8Y/Vy1XVhFldBVQWh
	 fcLH6F4GXGdnmM5pA1xIopYu2c4Vj4CdfkQyBLjsJxGHhT3WxIfiOhmczL74klA3q/
	 9Wz6KYr9q3BU7oqHnLmgNMe8/LmQ6Tbfj1E+xjAMu/hjnyWtt2YX05Rl1uRW+aqurB
	 usZcD+1qicnxEV4ysGjWPCxqDkWlr70CWnyUG2BVc/amIWrq0NGIpWIyG1JVWzC55Y
	 EM0Gow1zskps3zcAuHJ80YqFL1XTU8Se3yJ6NyhTxxfrzVajXv7FgiIzxV5zknPcul
	 nkOfLfDDZIF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90418D12D50
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127095358.14923.16557764987974788598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ce35a74f869612ac53ca78edfc1c0bdd0518020d157ebb9dd274daf0070f30
Date: Sun, 10 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731270953
