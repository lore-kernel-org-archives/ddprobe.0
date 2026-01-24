Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240AB265620
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769262234; cv=none; b=gOnJtmib8/YzJ5B8h15t6ysgAvR1W/Nj/oDVa0HofUpLzcBEtp0UYNZZTzM56EErttE+K2Cc88fS6PHIuaD1kAxE8at05O3k+QcW/lDa4D6mH2TZ8Ee+7W73dVlPOMOgjkeudoV4+qpOJWfzeaPx9+GCxM4GhlAxAn7go5fLxjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769262234; c=relaxed/simple;
	bh=ttibqrAOb2ayOiWy2M40EvwXIrbnGPY/WcrpF9u8lqc=;
	h=To:Subject:From:Message-Id:Date; b=djp9DtzP5sg26UioRq4lUbGoIaWl5LDerkopbdt2mYynS5IY/BbPbTjB0wikxFBOXR06Nge6duXfjcNCVPRzgiayA7hVw0RoEaBuFy+CLtQbDDl4qSjMmzQvDWZ3Qk2/tYp5uxl0s99I7Tkqfw+C+uBfuC6XOs9LshXgR29/BjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW0abd7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW0abd7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D83C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769262233;
	bh=ttibqrAOb2ayOiWy2M40EvwXIrbnGPY/WcrpF9u8lqc=;
	h=To:Subject:From:Date:From;
	b=EW0abd7HlHi5k7M6HvESbZx+E1QCCAbdOiOtBCc+UrC7/+GwvIK2RtWnrNZPeGCr2
	 UpkNDE0VMR8NQcmnEEzym+/6WTJJHJIFDtY5moBF7jR5D/AShuyY1vpMa3VCcVE9Pz
	 8YOCIt6WDepLQQQuUO5HI6l94s0ppzmvXvNm26t2/v3/+CbpP7M5+UPU8f8RiACS4Q
	 6Dszqb8LT71jsUSccZ6CNnOc5yQ7/8087relhZ/7hdUtR/DZZiVeRP0vrmpkNQsORT
	 O5tXdRg7dTowObEE6XnpsGNZvFFg+9kl20H4ZcGOK0K9B2/Jov6NO2M6hQgrzXnT7R
	 tKG1FI7pvoEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B9D715E9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926223358.24984.13518560668301924664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930582f403948a0af6b109b9650b21906b5a0596f13cf7bfbb094a54a102669c
Date: Sat, 24 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769262233
