Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373F61A9B39
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747998594; cv=none; b=Gow6URyb5hJTR76DJ7rpNqPqpe9ASikgmHC3+yzdkGz39sIY2Ieu1exCk4ZQNSDEZ5t7YQNObR5LsTYJWVK7EolVQ/Rnyp/AvQNA1YybW2KO56OjssjA2xPzn27JoNd/wx7c6V/IiqLLEtet5Y5Al9egO98QVc9DJ0d0uK1/xeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747998594; c=relaxed/simple;
	bh=gdEEDVp6eL6AXOZIT53y3/Ny4+VEpWwp/k2h4hV2rME=;
	h=To:Subject:From:Message-Id:Date; b=ckTWAVhKmyv+X1jZ5TqjamGU7fTjXRwIcnX17fmJSb1zjUVZHsqOYDsPTCe+oaOR6Yzu/I1JlXlT1FgQo+VsEdReLpx8J5/wGrQ8z0Ys0s8+omGKFyF99IuacskVZfdOBHcxn9tgbWLNQg5aZ64sAonI7g99PVTliZUKc8t011M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avng1VoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avng1VoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0061C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747998593;
	bh=gdEEDVp6eL6AXOZIT53y3/Ny4+VEpWwp/k2h4hV2rME=;
	h=To:Subject:From:Date:From;
	b=avng1VoKHtOyCg3i2MKHojLnvfrbtXlk7BfgufZumqrHGtHiIC/ercFcDOkxYck+3
	 nEgtcTP4USfJy7TARuAdKauHmY2TyqwYTPjIHyzJ3O235+HMckdL1siR/OnVKiQy2w
	 Y10gPz3N7pJOdrwDjkYu2RcFH/WSAqJIi3PQgCiaW9kAJZHYyAtlDM/G07OvrsZEOe
	 tJWikFuwGZngWcMxp54AEZVV1Hmlr60yA1emq0g3OsSvUQ08TDOQ+rTrew0lujt3So
	 d81+N97ajwN198LuG1VXyoEtZgCMjveg5RFINkMkz/eGGAV3AflVW1uHOQp3MYR2sB
	 U1WrdxWnvpVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F3C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799859358.5857.3334690661532322425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddabc88cabc85b93fe603727436c3171891ec43a80badf04b0362ebdabd804aa
Date: Fri, 23 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747998593
