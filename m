Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D67C363094
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773251694; cv=none; b=udMIioRRTDBSAl7n9t78ApIYLwP28VyAP1KgZ14FWhz9ocRGWv7SDrbg8YR+wKOGoNzJbRxkvvdZJekhj9WuW1+5+gZ2ebZ2ePWHL91KtWL9H8BwGfbqB9Mk98DYNxvnlSQ0Wl2Xr8HSBRgnqskptCk2b4B9r2rVYtNKwClBXYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773251694; c=relaxed/simple;
	bh=bBqx3v6ltldQv0N5h5cAnlSio1t7i7mhRxkMl+oxV10=;
	h=To:Subject:From:Message-Id:Date; b=ewXYCLTmPTQbLgCxbp+BPOLH2pDvPX3Hu9oINJzjrp1DOHW+0zAO+BG6YFomjCmiWkZWtzVGFVEzpizsMLscLStS4+tyUJMtpAE4IuJ8eoB7Yasg2kWZr8mEnwbJuAJl7crh/H5D5OIbpGv/hUYuY8lUggIv2dkPcrp66A3XeKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQ1jb7ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQ1jb7ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8672C19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773251693;
	bh=bBqx3v6ltldQv0N5h5cAnlSio1t7i7mhRxkMl+oxV10=;
	h=To:Subject:From:Date:From;
	b=RQ1jb7ftd7vXGUFoF6gZxYewweXZZ/J+KbJOjQC94KKGbmLEly1m/35R6XZofZ93B
	 WIiP08gw5fXjhj/aa5+3DdKs+7L7KaY73EYWwcAI+q8rEqvJosc9y6UU4GrbdsR0HS
	 YE/1WjTPdIgSIcLKukQfbyHneiyM42X1k2LIVuLRkm4JQGwsDSMyw9yeQFgpj3D6jL
	 Bt6uvaf0ZHzKqLbQCO1cSn56/ijZRIGydGzn3NxuKVW01KVo8S4vR4+G044TjR8RPP
	 zA5jP9SN2TRE0POID87nFq2usnKHxxKHlYix61A58jW++CNKJcU9C2c/sgKPCi6JDy
	 uXN7aL9gSk30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306B1125858
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325169359.31663.1309403826563257024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d101aa89ff80b292bd9382cd27b3c5dfe6dde66797d2f8e3e48447b38a138c57
Date: Wed, 11 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773251693
