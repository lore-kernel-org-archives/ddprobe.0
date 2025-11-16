Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AC41A9FB5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763285454; cv=none; b=KZxzCQI6odZCQfe+smuHk7l2DIMGTwqtl5aFFdUaLMXWgQF2CFo6bILURzGOfRieO/lCb7jwSMOoODVERYNw32de4aXJP9+sXJBZ+/htDMx4k14CxxLPJxnt2k2ujM039P1B44C69k/FYkVbsoN8WUbYJWMVEWNh/AGRjneUYj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763285454; c=relaxed/simple;
	bh=WFk/8oZtKqAWcEGlieMG2jB539RDUBwAvgTGPWRbjHI=;
	h=To:Subject:From:Message-Id:Date; b=cYDTUDUgTgAr+79rO8/zcGhlgZjkLL4KnWIwXYMZbXtF75ZCKmR7qJ0qAGKw2o0HZIOrlo15slDLmLwczEU4bLKe1wPTErvB/1SakbTvQGky4fizoArnbLlzys5O2Cn/8dKTmjI6HzRozr40DvMQlSddO7ag226YYGOWevO2Wm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgqvSJIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgqvSJIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763285453;
	bh=WFk/8oZtKqAWcEGlieMG2jB539RDUBwAvgTGPWRbjHI=;
	h=To:Subject:From:Date:From;
	b=KgqvSJIeLmEz1fRb6ZlNrjaiPGp4BeDDIs1fCsfR0iLwWjWIHPr9IrKsyR0md91hR
	 nojCNadohtU5E/U5lWoSn9lfrDthxQO52zS2hvRbkk9GfEfxNdhV5UBaAqxP8mRP4A
	 uwrjzc0iwlRpRZHS9Ez1R1dbldBOB9STXOV3B1KC7IUbc40zLu6CN2LlpuH4MZBP27
	 K+jAe70JMFc4lMQ1ruOSCqquRWox8m7F0cZQfq5SiJMfw7X2hefhQk0akq3+y3EOim
	 kWgnx9YvNFzwjnqzQ0oWxqPFQMjMxze5dIM5tWOZ0gODa/LeRRyh7TxIhgVUH0u1W4
	 Mc0jgnOomixWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EEFCEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328545361.8712.8151583236174395678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ba7bb75ee8b2721748994eeb1fb941a39a5df9a2a01c676caa4be8f35f328d
Date: Sun, 16 Nov 2025 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763285453
