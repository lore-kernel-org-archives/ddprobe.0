Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F28E231C85
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728121554; cv=none; b=k1kDb3gSSnl2sXhC3D3iUbg15uleHQIYyO6wEPZEPhUq3wG5mD8SeLWv5lFBOkoFWRlXG9p/l4fcZigx+KmRrWCFcU1co5DWAd0u1jzGlRranQwxRknSdEtYUvj75YqVhgjUP51KI1arKKi540WXMEWkj4s9c8XAdvPnFXu5CtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728121554; c=relaxed/simple;
	bh=yv8HIw/kdqwYWo0rWCBcmP0Yb7pkYymEQFeJ6O9+IyM=;
	h=To:Subject:From:Message-Id:Date; b=L1ENgxyygmBTiO8YaySeJ/ENqYJvUKtmUS1rUFcR1W7LQ0Yb/HBts11sxhN+f/a1fJr953ZHwLfQo+7XuwrVZHtqhVlx6IU44mn+hXC9L/IP5sl8DAcdP4vP3jg60emlUPvA4H/F+ynrlOEueiUzAjsUCNTRHUxQsC+L9avE/Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V88Tsj2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V88Tsj2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A52C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728121553;
	bh=yv8HIw/kdqwYWo0rWCBcmP0Yb7pkYymEQFeJ6O9+IyM=;
	h=To:Subject:From:Date:From;
	b=V88Tsj2T+NQtTHBB54DnapZST9xKMd+VTIBiT8wo1xlVkn6BewLMqJXrspoqln3Qu
	 yu/qcVbcLA2ElFzTSlis+4zimz3XZhdQgRSB+vKKjhL8VEgEVlo3+TJvlGArX8Cyiq
	 fAuebcmJ7lPxgqFioteHe3WRmT9ixZgxxirWE4YOvCbpWMHXHbLUJ1iGHlKqHYEOnF
	 PRqM2s9SZEtZ08KwPJJncY/xIwJwzgb3o7lIhP62lJ5+iSR+6yS7QJkrXc0Z2SJZmz
	 tBb5ZA4VorxpqkzNT8Zsf2UVceaXs7qsY5BsE9eSHAA5YRXkhQYg7GpfTkAhbeNJ4Z
	 lD5e0GfHglCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B68CF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812155362.32531.4015245704530037764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af98b09d66253a19367a03faed77aea4995be6ef7caff8054d2f72afe033025e
Date: Sat, 05 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728121553
