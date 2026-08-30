Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4583002DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788096034; cv=none; b=fx8cvhG/rgpmHat4emgRRKdnD32eELvIaSVyMcP1ZYIC4bUsc92cIfZrELEJDx0QmoHnX+toCCqlDVFUojo8sNQvhmx8mSLa8bt0TcDHQxnOZVb3iJD4muX7XoxsMvfZhHvpZY7PU1BnqDeooCj8aOdFYzGY8F2JVHpurdO18Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788096034; c=relaxed/simple;
	bh=Mt98CbwJJDjovAskV1cG/HYpbzh4gh9yVVKARiqIY1A=;
	h=To:Subject:From:Message-Id:Date; b=bzO3Boa9Mv8KCNbAZsehy4/+DO8pdmh3UN47doGRn6j1uybla2yKb7QDC5iQZYK0Pv+odK6oTpVM9McpVH6GE71ufQPFAZRxl4h7Cr76wenLn+W2t7OeTe7k47kB34pXVXiXICo/plAtj+6iqQeuJZZfFzxkm8SemUBTzAqi0gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPSmXIM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPSmXIM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788096033;
	bh=Mt98CbwJJDjovAskV1cG/HYpbzh4gh9yVVKARiqIY1A=;
	h=To:Subject:From:Date:From;
	b=WPSmXIM+o9yR94zah9ew3jMo5mB3/TDu1VFprTMdyWxl+g7ZwQQMGhoEAlreU7w1D
	 jW9MGlduSy+rEqodB2ZEB11twQ+KKy6OCycCmvud32B2fiBOw9fZTB9f5O+p9ivlYZ
	 BA/pbZGnzZQu/ytQffxBJwfBP4xtctNWcresURpZyrIhZPIPTdpE4AKEIUPe6SiULy
	 WdY7+rRnCXvexDKVIJiiPf8HP5YD0zo1/aOfuhG13ONR/FbLobUCv2LxSdXHou/JnL
	 zkz1t5V7azRvPq3Vrfju0Tzx5H1wJdMfx7iyghq3gh5Gi9erc6rubW/b1ieKOEiTNt
	 9k3j58EJnK+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF4C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809603369.20021.8432013462978957656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba20decd7482226483407792f1f2625df47094647f2a660f7b3e8b19475b2ea
Date: Sun, 30 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788096033
