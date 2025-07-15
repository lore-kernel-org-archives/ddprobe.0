Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0961B043A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752596394; cv=none; b=eXbF87KTVJaMmYaYhcQ5EfRtOKA2y6dao3mNksQaRH+dE/1M+jNW3uWLMGbkPtJSdccWmx/X3dQ2oMvQiFcsWdJThx6wOUbuuMvgGWHJq/XEam4/yBlx1UlyqNudKJF1SMB0PUpAQ6AXG2SurZbmB8pome+UU6+FB4MQwbUftq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752596394; c=relaxed/simple;
	bh=V3lWS9LVISgRWCPFa4V8zAVOK21ODK4L/6X2i2qg1rU=;
	h=To:Subject:From:Message-Id:Date; b=JC8qheBdhPU3m0+t853YD26omGR7xUXTQvsw4PIGJwK6Eh3pkyBiWT1giadHfU2gzn64YR7ZwbfhBqqMn1u0A5lVQUYzGixI6xDlfJrA+kCL+KVD/tZu5HoxX71MvIvsl7iG33xEJ0k29XGnAo2B9Sml7xu/MxQtOj2bPcQiqzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HljnhQqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HljnhQqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E49C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752596393;
	bh=V3lWS9LVISgRWCPFa4V8zAVOK21ODK4L/6X2i2qg1rU=;
	h=To:Subject:From:Date:From;
	b=HljnhQqCA20UcYkyl2JVW0IbHUfDR16AdSf0R1RZTdg6/2ImoBaSSN77yy6uTk27y
	 j8CELkMg2IxoyXuC3U7qtRnEczMxyj9JJ2/uUFnCmzS5kLR/g2gbYgLfE54+x+BhlN
	 notppYb6ckJV/lbIMWKHZyuQSO80vVdE0g0kS6T1l6MA61at+S/oOnMS4LjyQ2Ca0E
	 S+9AWb8Wpot0eQmhdIizFu3tk2wOHu0LyI8HWPs4IMrrIG9IuyFfeOwIWx0C2ab/5C
	 U27BniNXErNPgUaSZZQh0qoZsNRdw4WKMTJPsu1h6I7UkMjgSWa1Y1KtAsYCN0iTxG
	 ZBlnAdY7XF1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C9C83F2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259639359.20325.2624622460520145885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048c26eab7a709a834ff1098adb58b471570f7a731f1ca01104e85678797d9b0
Date: Tue, 15 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752596393
