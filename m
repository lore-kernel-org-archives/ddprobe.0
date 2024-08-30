Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCC533CD1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725045954; cv=none; b=WOdGmiplZ6dBUhYYagkM2UU1ZlmHzSXSYPuZ5mbgc/hSX9S89HUVLVKmucuOZ3QWYoD2lCMJlzdGnFC3K4SCLiFIBWrqBibfQlP3iMYortj0UTM6uprXQJal22wtE53wrG+9mVvLYczkDVpAfZVOTRecJFR3m+DkdWlQAkK3IW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725045954; c=relaxed/simple;
	bh=U32udVB8A8FcNojQNOqC1M4RL/6wz5A1U494M0mZoio=;
	h=To:Subject:From:Message-Id:Date; b=IUr+vaIg0bLId6BoEb0XvzCnQmGWPJ6MTphhhvs6xR/uqjdqJHnv0yOhnIbVKFKnWOYSnrsKTdUZH5eY37QLJMH6KjEhCeSu6YDSiVT6Zva7t3WtZ1Ti+DDMV//i96sxabvHlK7K6tOmri+Q/L+KFLOVBBXBSWOEN/g7rLK/Tbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/3x63iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/3x63iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8A9C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725045953;
	bh=U32udVB8A8FcNojQNOqC1M4RL/6wz5A1U494M0mZoio=;
	h=To:Subject:From:Date:From;
	b=c/3x63iJvfJ8rGT+hVDz7fRXoRKfwpUFKwdGbvzTWtH/MmBJy4fWREsZ9JobH0npB
	 VDVx23DiDY4jBiY7q/lzBIAxQg2fxCvg9kT6eli4KKG6C9Xi3Efx7CDdctT1sR64Ql
	 R02s0+B/p9Yec+JpPu5dxB97oTZrwlP8wM1jS9TysLv3HLsve4pIaWMbGsdewXJZpL
	 EkEyrcuSBRPfeYLifGLu7ePYuRXJmm5aaX8QlYZLQIPa1BaqbpWmn5WOlW4VuJuLI8
	 dUspbfu57GO0ivbhhOtQU8qVIIGtdCatzai6+r76OoRbzp4y6QVnzQaTOR3/MKME53
	 +AFMshskzVpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA260CA0FE8
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504595366.32240.6038225864331865556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144ab3e474e20afaf3165d989322d678f965a3448209ecac94a2575f1cc9899a
Date: Fri, 30 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725045953
