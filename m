Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401564A1D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141194; cv=none; b=kkDvPUMTPUJenaLxMq7zaqD4E43HK4H7Z0MJNq6pVR/jq4Zl8o84j+G1pvETcwlcJosPOSwccCoKRM3fF0kRm3TAT9mk1+7v7kW9dxwCiSvQDpQ9IX2yCrxbrUXrHcMkZFXbIQ4xv5v+j4HEQne5dKZjB6CsFbYni2OHjxNRZQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141194; c=relaxed/simple;
	bh=ucsF0iaAGsriCBQNsLcMwW7drElYQR9vqgTdD0jwxb0=;
	h=To:Subject:From:Message-Id:Date; b=iJ1jjYYs00Kh4TLEpMR5lB78cun/bXNnTt2ItQudY0FbM4cZdr0XVpFjx6dPyqcNRQ7YmXTJDc1PkY+gWhheh21+Hi7qSb2wwbJtfjQzx1JntpUj1qpWysxUEAAvKbdEqZAlRf8RTpd91OYsEyjjivagtE4qB1R2CCXFvvu+SAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6xSMZkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6xSMZkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FA4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744141193;
	bh=ucsF0iaAGsriCBQNsLcMwW7drElYQR9vqgTdD0jwxb0=;
	h=To:Subject:From:Date:From;
	b=b6xSMZkEzKGqf3T35OtM1MtALmlTI5ZfPViX+WYe9sQH1YiD1v0fH4X2w6PkHSuyb
	 sEiEbek4c1Zlw06JRP61jyZhGXDJgSgMdAd4AQQfFx441882s5OlfiqJf9oSdpXUFY
	 mPPqc1FpPyvGa8jBo7tPQBN7fnG/7w8nctKFoy+brKvSTJDFje1oVhzo/eEQclQdYF
	 d4S9FlLl6y2FubDy2c6vp3YPDLSvdLdX90GtPZzJyZ7J31kh6WYfg14WzMaqk6KkAx
	 gj4RPZbtC068LrwEf/piEK/W8FlIb4jC298P/zvA7SzunsOOHlLbGTd90MuMie6zMA
	 +S3hfQRU2mw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92219C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414119359.17136.15712464862850733528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfdf974ae2d4b6c66a69a38d202da913ebbee2a0a322f73176d942b33b50c5a
Date: Tue, 08 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744141193
