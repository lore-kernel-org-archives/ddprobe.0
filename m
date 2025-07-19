Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395372F84F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752958194; cv=none; b=ujTjz26NP/aDb/JD3OQLn663JOD55oAFdR/3ntyW/BfvytGc92JZPRndDdwPPrbTTSjozfAX7lCPIRRk6MjgojJgAk6qj/Bq6gMNvKGq3d0fjLusu20saRRRqlZxcByRjYW1Emw+wDa2l8vE0JKYOIDNTh4xXtSX06p9e6vQmOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752958194; c=relaxed/simple;
	bh=hMC5FTPzFoTJlbD+EFuIxkBMHQLMItUlQgqFy/o4a1s=;
	h=To:Subject:From:Message-Id:Date; b=VbsgwMXwSP2R/pwmynt5a8UVfNeeG7M44LrcdA5ts1wO9Qd4hmqiny8eCJa5xwuSIIeoAVQAvwRmYmIrsntq+bu694UtP8amAAICkC8wC/w3tMdrMXT6NTLCMq1N+Ujhbl/c6HJD81p6Wv3VId7RyD45oBRz3dNcqK0id8z7bKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlhKt+tH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlhKt+tH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752958193;
	bh=hMC5FTPzFoTJlbD+EFuIxkBMHQLMItUlQgqFy/o4a1s=;
	h=To:Subject:From:Date:From;
	b=LlhKt+tHziBkmGEulBPlBlthozTiVmLGCru8GXHV0KpkbdVAL57rM8HYOlwqpm9+Q
	 XZjNqqpEHP2E6jSrjcwTb5FRbeJvu8fvvFYB7hAbXmb08J8VkGF520kRzAHZNpMIa+
	 ga+CKErRdopyDwFveGB5KV7WaUQqflLFpJGI5pU6yuZ3pxTaaeD8WA9nFra+Fsxwna
	 RMwgyn36z0NhnXE3zA1JIhsI4Uh70tM7dvds9CRCkQix3V/96mS2kJtvb+5rVDjIFY
	 p/XdyYOf6FRLsPh2VOTIr31U7cAOSgyWL+gR16wNVulH92kNGL/4bpB+mdxcb8dVe4
	 DI5hxbKeNwwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95414C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295819358.11095.15899948596709852037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5a6b3f65765304c4afca52e055f348cb2a6372cae28e6f8833495c5948905a
Date: Sat, 19 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752958193
