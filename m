Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54945959
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707644297; cv=none; b=evqs0psEfK6f/V+foZ6AC1pFlfNa7KjV/ssqSu5vD4f3rUtKXAsrlfUamYv1iBnFXK2fCJalLWbqs+mPxIPgrGyBipyJ8bs0vgD3Bf4nMex6fFDsokt1s7IgU5pSsbELorBQ/R6lu7XSBiGI4eULRl5obDj5Mp9u/AP00Q54gUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707644297; c=relaxed/simple;
	bh=rEo7/pQDCM2Y/hLcqiGRwKvgvcXPia7DZMieG8+AYfI=;
	h=To:Subject:From:Message-Id:Date; b=WnGsGUtWITwMxwIMEZi/oSj8Eciwof0nKQENloW786Dclj0L4z+fQe2sAzXjdg3Ri21Bw/1yQ4AMCy5TdjPqRh5kMxPYTtqBBmkT4cfWTcFWy6fvVGgu7cKkcrWSzTJiPwL9gTYpmaUNRnCD12DhVZQ2Gy+mS90yHkHhkG/krgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRqufexa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRqufexa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784F4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707644296;
	bh=rEo7/pQDCM2Y/hLcqiGRwKvgvcXPia7DZMieG8+AYfI=;
	h=To:Subject:From:Date:From;
	b=NRqufexaLBY6qQ3tKn3nwwiYGtU5c9Qt18yCw56RbvKjIwbmZITkMKSXNi+rUyP92
	 p8TkKz+foTSl9uLVPp/VUkVgSt65MezpLusGf5ywyt7N/Ev7idkbXJgXgzB67i0Lg4
	 0Udlv8XGkEyAI3IZK0om4n6UtRVERScGU8UNCvQzuzQktHcHOajxxyXmEdBtb+ZBkt
	 LhXCM/rJ0j12RAa/5AxTcxqzeGM9l8Z82gZoFzeAZwRBFdv9lkn0ggF7H2qS9WVLrE
	 0MVUYY7eUuh2wFEg/QgIdsPp/4i2IAx1txyeM8al9k9kVLd6FKm3B9dpdBT5PL1JXy
	 adY122m+yWKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C18EC4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170764429636.23428.18217910655368224500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d058fd9979b2d9d5be7680dd4aeb06d4099ca84eb4160b776c740cf610546d12
Date: Sun, 11 Feb 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707644296
