Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D6638946E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768389234; cv=none; b=N42/JwFQN30zG/mb2oZe8yjBwWe9qvc1C+smVMtkyLFnbgZYEBx9tlbst2iaaUwcS1nWg7pBCCrR4nxgpJiiHg/TwQANB/aV3m3K3sWLjlc3b+publoo9J6OoNrvgw7ZLDX56Bfl7bzTtIkCk68khFu3uf/Psy6K710yjHiEyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768389234; c=relaxed/simple;
	bh=IuXJbvhc4/E6itf88zoGPwKHlPyNYMEEgIGBrHCokzI=;
	h=To:Subject:From:Message-Id:Date; b=OIzvx9f67kZld1lRJy1pvQAR8xunfhQoT2w/a37HbpWgx3rE0siLE1IcjEMdj3KFCC1aMN9SkjwvK750hVlLLnZBtMt1OFiJomKIKuEhO0a///n7juus0mnvfi00Nhto1a5wamZJIIdwIPn/An7hinEh2rXya3bQ7HsFJuuyIHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d726NgcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d726NgcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F660C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768389233;
	bh=IuXJbvhc4/E6itf88zoGPwKHlPyNYMEEgIGBrHCokzI=;
	h=To:Subject:From:Date:From;
	b=d726NgcMKhlgLzzTWTAOHlIhy46ZFY9F8jHkOKTo3uq9esKyoxcp0hncitClE+haW
	 to8FJNYiQaoArsi37/AynGErXppFJJr8VUo6gNw067C/H/pk0mPNqjbOf9eMJt7qmu
	 Izgve0OUCfCdPJLmKIYskMUDM5oanHc9zlHOkHTllbxqs4UMbZrd1AB09d2MgKejSA
	 /ihAuQnxu29oBMqOPwwYcSXn/xxXbkLREfHBTR1rLMFhy3uBEyY+RPk3ElHnawi09z
	 h7w175uQaTH+MXTv5PpycG5ykNnQ5pPxav+hONc/V137/iU6UFPl6a6FMa3kHYrZMq
	 X1QqC8cvSrW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB1D29FED
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838923358.26391.3937164405738710114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d576cbf26c12dcbe538ee6a7494ba9fbb8c3837d23529aaafdef77462d10cd
Date: Wed, 14 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768389233
