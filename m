Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F482DC32B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767207834; cv=none; b=BSBPRRN+5Ct2F+ZMXzL+5CaJlNrjKmwx62w9uJ2wQdqr8uIwMh34SMaBwQOGqyU9xpK7Uz1ue2YLaxRASKOeFZLQm7aUunMVGtc8l1fw8YAuPwlGtF1mq/NhQYpXMvyMzxdnFSgBEB4vVDTA5FfGeaFJn06sZalca+eNwIGN8yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767207834; c=relaxed/simple;
	bh=S+xElmqmRGaYWUdCiMboWDnsNsV5vsWmGSrkeK7THcA=;
	h=To:Subject:From:Message-Id:Date; b=HHjFUw5puhi2U9QNHoT16mkMKHDQmljkUTWbKd1DjIDNLLsRMmBvVy4KPQNtQ+Otf4ZQ0oUEBUV81qD3Y0YVks6w3y/2PQz8b+5bzmMhE/w1jqV4ZyYRw044dGII6Pral0Q698t4FytqCwybJODNm0/gRrVu6xDQYK3JOE7WJ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaQZBXWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaQZBXWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E4C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767207833;
	bh=S+xElmqmRGaYWUdCiMboWDnsNsV5vsWmGSrkeK7THcA=;
	h=To:Subject:From:Date:From;
	b=aaQZBXWIFJ+QOc0FJ+sDb0bB9lZBepcURa3QN++4fMNcv+uMRTyGmh+rNsJe7KFk6
	 bqRq6lh1lmsMr2Ia0+D/GYuc91hRlThAJhVHTKqy089YsYDpF2xsNjbB18qLCEbzEU
	 47NboAF7eP7wyjUtljQOLc9Dva6StRkXY2T7tzlVSk1PQO1NK8kjI3TsTuBEu5upy+
	 U8rJL1h9L3lbsG9upHIrai7atXPnu7Jz0CBFeELWB/QMYx6Y9UCnmwTKGnrVksmqzs
	 wHtTdpiVVh+lgjLa+U2l+cnXzoIP8Z0dyR56DKIfbiRHTKrMyC4r+epvG9ar+D9WPw
	 k7rPIHC+VYBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951AFEE645E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720783357.26815.6990809529030557688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6334ac5ae79cce39fe332c770728a8a2ff709d839a6a8715e7f3289107aebd
Date: Wed, 31 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767207833
