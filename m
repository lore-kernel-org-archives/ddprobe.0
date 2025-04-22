Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37712223DCD
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745357994; cv=none; b=OL2DE837VXPS/LmixUz9RrWXqfOx+h+ofOCe7W2Z2siZwDEIg075YnnWMrNzsbd6ajUx883hgvHjHsAhc87skMQmAw2t3Wi+BtYF7PWhbXetbXcYNZGplB19zPKvVte28Tku/uOh+JFhbPK2JK/5K06wwawA4GmQNzEtpcQKuvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745357994; c=relaxed/simple;
	bh=UqHy0TwW+KIHu6D6L3AnTfWPVEdKj3hKObHt1K6bdkE=;
	h=To:Subject:From:Message-Id:Date; b=oxlC87j86QLzvRCgDA3vKKd2woRAMAeRhrWzCyzeM0UEU+1H3p/IYMbbUAZn2xfBbGNtJVXffiusCW7JQzJrXWIAnW8yMsCWngr9ynbvtVSYZvdNGYC2ResUhYVjEMDkwgoRXXU+/vEYY36QXf/u7U15sz+ecSL67P4jn9OaAg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0My16h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0My16h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C49C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745357993;
	bh=UqHy0TwW+KIHu6D6L3AnTfWPVEdKj3hKObHt1K6bdkE=;
	h=To:Subject:From:Date:From;
	b=Q0My16h/2QUiiktE97tEvsR+Rl4Of/uHLEUjRTBytBy+w1Ka1BE+kI99QlBFzK/be
	 sovEPTo27GPxA6WsdJDzH8ZgYtdB7gsgMkKelcey7sL6v2kPYDZZsxGLWmJEP+TjN2
	 qeO5lKgEdzoCJldTXqhSQEcv0K4TKAScihRHO/AeycABToEup04l9+ayT5raeww9Dx
	 k1vbMzDR3BjQKytIaG8fXN6aLlmRDbrRFNdNGPdC2DHWtNQGSNIFomw/5LuBLrGaeP
	 erMDRdHmtf6f/zazzV34zNtLJmA0TZuINpTduzXFKYxSOxGFNBMXCpEXnP0JGsmV/O
	 LQAZMxPC/XLIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBFC369D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535799358.26362.3878909714495058374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e88ac3eede9ee01a907b829897dfd98cb767b54e3fd5e16ac7615d336838483
Date: Tue, 22 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745357993
