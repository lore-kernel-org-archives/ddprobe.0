Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3109D4C81
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756651794; cv=none; b=oJP2K93JEET6RKqsKbxZzPu3wJ9dhkpMev86QatxcnYZsUaz+WyKxZ309RiPkYqv7JDzKeg4JliLltZ8Uxe0kTdHqZkQU0DxCxCSkC1IagziK7ALBwdJ1Yj61svjeKIbuo9yWB5r88uEwbnijQ92zdc2zBUD15/G0S+gEfAETA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756651794; c=relaxed/simple;
	bh=CXSZGM3uP5floMtHoT77w1O63p6dfl1w1/wsPecwHIY=;
	h=To:Subject:From:Message-Id:Date; b=f4Mr312sjrGvZS/wynSlWeUHaL6hQU3Y/Vi+/BKR82WzKflyHBf8iYuGtIjJoev+yAuqxy7Vk66JY5yeB0vHAHNEhBbsWghBzPcsjl/SuSQmtvSFuaZN7211O8VPRFx6Fg5vYNTDASs5liFk8YiYDo9VT4oJ6P6MxE4Y/uAXZK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEWzVKY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEWzVKY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A972DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756651793;
	bh=CXSZGM3uP5floMtHoT77w1O63p6dfl1w1/wsPecwHIY=;
	h=To:Subject:From:Date:From;
	b=rEWzVKY6p5viaKWppsSfxDllS2qL/HMaJrAxLcr07rDpwWarXhniE7dI2GhKrTKVN
	 x9d+7EvXeP3qSXN5IWx7SRXU85KpUS9eq7a4F0ZKYBDGkKTWDnezv89Vmk1FcbJYXL
	 1PXxKc7yvUqI7tzAIUodV0JqrdIEgZUQZnhaGPCNf9W2NHforRyz6pqVvbvtCV3j7J
	 E3rkz7U30R+g5E6Rq47QJYVP7tl8jho7a4L5HNdKVT9OQVmDp4ebHZzpfXOHZf5ryR
	 S4GJ1mF3GfEy/aigrVHbWLxurtnOTaS4cGZitDY61quDd8eMLzp4Xt+HSCvMpsRrjh
	 oWvulpW7rUsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91703CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665179357.23124.10667450306586223161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82c4fb4360c8024ce5097af3f0f55e37e92afc933ff9f4e0dc0b1197ca23a43
Date: Sun, 31 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756651793
