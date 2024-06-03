Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3DF224FB
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717397123; cv=none; b=oBrhvt7gS40k6E9Ql6HGSK1N1C6ynddNUwM8BySEHwizYIb7iDLqA2cTxtA6XYN7RcbHOkI+dXCBck0pBmGAxdYG9fmOl6P5/eoRS3/tRhzjpocFOJl0FDGbBbOzA9Qk2ZFiZcsXpZFRCKwLLR3Ew7HBSPXx4jOTqTFxCh4/nAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717397123; c=relaxed/simple;
	bh=WiKIQPPwiKF3YkUZI3bfXalUb9RprgXpznjS9+2TfAY=;
	h=To:Subject:From:Message-Id:Date; b=YLC4kWYHIHcCj/a73+svLZlZjujX+qkULNAv0BbYnb+1UwTngmgOSy4M3Zrwi6TSSjvTWnKzutSg3K0RBIE31qbKQIdZPwhdzwfZOQOtbqKGpxj4Zu0ZhDll3vGN2zpTqvsz4up4Ea0Amlm4Gw39D69C4qeAL8A6smeIvWUZAcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ly6u9Qby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ly6u9Qby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1948C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717397122;
	bh=WiKIQPPwiKF3YkUZI3bfXalUb9RprgXpznjS9+2TfAY=;
	h=To:Subject:From:Date:From;
	b=Ly6u9Qbyu0kbb9vF7t9MT2xT/xBAT3IUEXgausJg+qZHXCBplvkvT4MlJdt8gtLNX
	 xuXoLRF1zfaGLijdSN5ElOgxcVyDjhHBUDkZ8E6+p74fpsyv8eXfFrnWW0ldEA1wCO
	 gZYf2wWI1EKYRrYCBlpawPdgYJuIacs8hMwwevvCtK8ZtZ7TmSavVbuutmJ7U916WS
	 yCjRkQbiteymykME68BVt4OKYXOtYQJEIb0fG0X6/NV0iJCjiCvN6sC2ZflLBdTjHh
	 qSCUVAiSuuKhIh0S1inOqPRG+9U3BO78Zp14ugWRw9fhc+Y2r4Wqj9mnqW4icWAFus
	 q4vAnMMVLR25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF783C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739712277.15520.6256874099074278762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd93790a28adc9db251bd9fa708457bd45689b63990261bbc854d5611cbac452
Date: Mon, 03 Jun 2024 06:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717397122
