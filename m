Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2E5171CD
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724045754; cv=none; b=HdxcQR4tQxSvYEsYam5BZBUFS575EGIr/DWIDhHPU3DU3bNRnyDk6GWxhw7PIpT8yNIOqQVE4ZrKgCpCAKnPvOrN1/ngwJeSgm9B1N2X+MLALFXGawujd8Mi2+HixMLLQOo/ZN8Mxa5iv9q23wjWlBQm1qVgifesfOcAQqvVQlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724045754; c=relaxed/simple;
	bh=2h5JJRSk9vvX9L3sRPEEBmK3b/j6vCwfzKwPACXIuAs=;
	h=To:Subject:From:Message-Id:Date; b=SHbnh/bGhhOoxUlbrMAcCIxA/grOMzxuu0a+V9b2uS90BluiHuyK7BZxBIwBTa/sFMEtDEHcWpCLAMZeeu2dSih3mdU2+FYugIGuVmXB1Nu4W+iQQoC9no/v49BcXOCKwKYTJNoYe+fwddoT/eDuvhvhaEzceD+zWvmPgpOqCcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9NwRqCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9NwRqCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEEDC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724045753;
	bh=2h5JJRSk9vvX9L3sRPEEBmK3b/j6vCwfzKwPACXIuAs=;
	h=To:Subject:From:Date:From;
	b=u9NwRqCMIdQCPuWI9Staoo4S8Yg3rZUH79SDdfk2vgzIgmTMCqqw6wMRLi+o6gBeU
	 6FwBNXh6yfx4l8aQQw7cbO5YmLH+VK3A97n+RwQbl27o4BXHuHSpdJJaZuHscxqv5I
	 R6E1XQyGDl/gl8pl3ATx6ll+TSYwAa/xbnDhLRQrAnNOyEZKWARtrvwniXbv52XFPP
	 SJiDC2AzUsGH34L44cP2FXKoanZ64WZccO6LGnBNtxeyL5QGPpvoNH6LZZFzus5bDN
	 FZYT0aDyUlTHCOsc7fHWW9T5o7nIoG1bNhWADCjiXQBJhavda8Ni53FjXWUeqpPR4u
	 GOdzS4xsOb/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD1FC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404575359.14639.14242594108020819161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43925ef640fcf1b5b475671b73b50c1b4d042a11b2793c18cca20bbb6e766bb1
Date: Mon, 19 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724045753
