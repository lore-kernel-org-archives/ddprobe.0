Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B750315D33
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769787834; cv=none; b=n/YPHlSeTcrU39xKd3ghDhaUuDsVeNw1pKfpUk+oTP2TKZ9JG0cOw2N8RbzaG1uou7+zZZvMsgr9+T0RpcpIvggOeEHrCulKWRPTRfXdMSi5OOlLaKjEIhUyELjCF9uKMNPeL/b2XHfPve5Q4S6qnNXq0WPxM2xKtCu6Y0I8LEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769787834; c=relaxed/simple;
	bh=NOZNfhYV0Ug8aaWNbRSpzf6ZXxARe7OboHZJVYTwu9M=;
	h=To:Subject:From:Message-Id:Date; b=CmN+SWFfWY24AI4u66yhhVE9ZADnmOAcKf5Vf+8Ust8Q7UWmGPFW7tDoOYUhG1QLWYiwK1YpMMZvOr8+67F0EZQ1uvraiBW6un83zwCZa6fA6Z4jXMGxxESnCjhgCTjRm3Pwtuurgf5EDpeW1yPBUZ9Es7tLCSga75JNApXX8VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYzsRMkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYzsRMkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769787833;
	bh=NOZNfhYV0Ug8aaWNbRSpzf6ZXxARe7OboHZJVYTwu9M=;
	h=To:Subject:From:Date:From;
	b=fYzsRMkUW5+IT6tEelk3r3QNgHOBgRvbVSW0xoOmuoGAzIlIjAQ9CUWU4rIdeuCV2
	 zu/hmqVNlRGGu2JF/dmaNkZx+NE/WMsWeHg21LT26EGFExmB0h6S0MhJyTyUZaTBZZ
	 +tV5vG8oLfkYFzvV+/+P120BJZaYBsEwGeEN6RnJxGUuDVUOP5csgHo4+DrDTeZIcS
	 V+TIHfgATTufFvDToQ3WIGcnnyLlW6SOz60CL2ILfFJpb6C7B06fAIkaOVcM6r7CTy
	 OnewPK50j6ifXj3WaEvfLf26nMhTlAdWq9GMq10TR6umzAhgyFh2F7IU5fE/ATQmIS
	 hHTjhcBkkGMOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C7E6BF1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978783358.16348.7458444185046089546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903496304a6b308ff5f0798066d0387ce0c36f143e67b855c505af616f211104
Date: Fri, 30 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769787833
