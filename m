Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCA826ADC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287834; cv=none; b=uX/ATWCIjAIYYeWOBLsHtCWAvO2QyjsVAK6xyMgKMk3sJahs0ND78nYvsu3zqghDt3bCuIesp3Sg//erI7SRBtpR7RyhnPN/AXSxNKjEUyduAecAhBkm342T6E/5xoW3opcHbQCKaLqVfW9pHYrUKryloop9ivKGx/QnHMdRch8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287834; c=relaxed/simple;
	bh=VJ8uBpeo061LTG5BfyruuqLY+aifEA/5j4XkPZtz1wI=;
	h=To:Subject:From:Message-Id:Date; b=BY44BW+DKa3kTd8wIXLM8iuUiSH4mMwWHP1WwcfPvj23ZJSZLDbGZ4nEphl5r7kdn6b3/xFCD7y/dwiZZpJ/CZbFKJyOgowQHgXSrklTsMNXGfSXKh7AfTa3o75BJWtuyQu/s8G/l/YIsS4jz7AS5DbsMlAOw9gcRDIfknR5LUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeTigmqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeTigmqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C36C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768287833;
	bh=VJ8uBpeo061LTG5BfyruuqLY+aifEA/5j4XkPZtz1wI=;
	h=To:Subject:From:Date:From;
	b=SeTigmqd60TIDIW8zUV9JOShOZ4Q8SqMpjB7XcqO20DczHavxwlBhtdE667nlYipr
	 nlilyVXQ7TTwMi/D01aPDCIUnisQIcuIGebLZNdPslQmrrKfNbCE1vmp5rlFW+0u0n
	 mlLqwFLooaD36VJTDbPVqCz8+M0WLZOxKfuTCT4yTIuzrvWwi4b5pGBW6PFK87USh9
	 HZI8jRgnrdG1CbXoEFifFGupFETuq9HjpgGUpMC0FBMhKCLOfmwvz1xZcr8P6euHUn
	 viIDZQnn3LXEoS8IivXcGS+SROghwgfExgYIX+vy7gvqp1NM8YofY8Cz09O1L5XYaI
	 R4OTkCzwTlQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90606D29DE0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828783358.8074.1904206489887297640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6447d9937ee1590f38cb924eb2060331d0b6a1d3ed09c221704f888377be4c3c
Date: Tue, 13 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768287833
