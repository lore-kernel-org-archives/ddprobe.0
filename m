Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408C5319874
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755253194; cv=none; b=ATHkmWcd8/S1CQN9GbGZjwdjzIo5vIAQ8QqK5KqnZRbRZewrTThlelFIcdPaxBjpW/bYwRGJQFV4EWGGmvZcMUi7JWyeXVHmSQc5kQvnGeJirhitjPEz0aHnXiQr5FVvO7UF8dB0OUiQOX/vMKzF2Jo0u0QU0PXC5pFJbn2K65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755253194; c=relaxed/simple;
	bh=PNAnVYtwkQBk56UwZKI/y1R6QwULhKwA+UQNq5JsQl4=;
	h=To:Subject:From:Message-Id:Date; b=Bf7txSpLsnmvkJcD7XrNdCEsEOEa3Mwl5M8kckRejlm3Za+MPU4SIzGagA2R/KzKGTYOGZehXOFgc5QMn4bSpI6QEyaoQN66zYLWISYQ7Axk4/rX8QZrfQLNxEBHXMhj1voIUpY93583Z6iCfmpzmiiuhynlmhjVhHeO1qWo/U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+0N1ven; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+0N1ven"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8500C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755253193;
	bh=PNAnVYtwkQBk56UwZKI/y1R6QwULhKwA+UQNq5JsQl4=;
	h=To:Subject:From:Date:From;
	b=a+0N1venYW34txgsigzud8Dn1JDYsL6OjDnFnKqGEVwrwahZ8YNJykOkE9qAxASXI
	 okxOh4hp3IFpbE7x4Ga18mTp1vszcW3WqXMRHtYCHesg3LNiMpl2QwHVOgVx//lWv2
	 mVxMQCRNcc4LvyM4PkzxQmEQN/f78k5q8RThHtYIfVzJMV7eCAu4FZBuDZapxClgQ0
	 prv4Ospz+H/xV59s4DJFfRlCO+MzJp9sLbGMff9nzVA3IauIj71LHllv/XWMFaWE8Y
	 mV+FGn7AuOLxE7y/SnjZlAjeFGC7tAioDHPKbCjmXonPvCWe/lMdLbm/8WJ39fquaf
	 5xZr3iD6Dq1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053CCA0EE8
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525319358.13863.14832306510896110382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577ed63ed57e4a16e5505b4dd83d711b7f10b9d4b0c03af61136ee6fff246db7
Date: Fri, 15 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755253193
