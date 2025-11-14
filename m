Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24921E1A3D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763154593; cv=none; b=h/gvxY/7sewcUaoEFJZGsJifg6O/3oZMv/7IxIU2NROZNJfXkyUs7N3MS+lcdNlzlZ8fvpL95Za7GW6tA/ftOlvcX+KHzhxd3dJjzCZ83C9tF2HyVX6tfAQrlql5cuzSVodlOUE4zObe9oI1t+rCTzjvmKolYzXUFnUV1zBQFVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763154593; c=relaxed/simple;
	bh=3svXzIS6jhdLEwg6aiDlEQRvii3HPYxHJ46ZAxihLak=;
	h=To:Subject:From:Message-Id:Date; b=Jl3CQt1Y+bAQAJim/l6taA7+67yezNjQ3c/8pCMSIQm+h9NYD0S7ltfQgwyu2xgw+2D0JWLji/wW37dfR83H5mL/9CmRVJM3WJhJ/hu7QEhn11Ztweww8DefP+14qO1rUsWvyVz95fgK2tH+zyEUlrXQAjvNRL7Nncjz4Kx69QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT4jnxcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT4jnxcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A793AC113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763154593;
	bh=3svXzIS6jhdLEwg6aiDlEQRvii3HPYxHJ46ZAxihLak=;
	h=To:Subject:From:Date:From;
	b=pT4jnxcBFkyu4k11a9QQZEOFFpzeYUkqgREGIAPFt5cgbR0GxyirOUKdEWXaMgO+I
	 mWb698eUw5ZVBYu8339TRFegYz34u+HYQlKKGwcl8KlczIG50eENsF7w7dgB4PxXPF
	 +lctK7A1JzpONdY15hgMYUbkkFIG+VziJZc4PkflW4KkedmmBB55cRX7szSMS79tOx
	 DznatiVlrfhEJY+egQSdmSWyYv9/5mBU/deDhEiVbtPM7sstC2SABkWXyxoatOUxXD
	 jtZRe57sVrl8aTlDyXZJbH825Nab6hTzUakDQ5sfECfar0GThikMUTsziWOVVIKs3p
	 l4tgWteYTRo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B05CEACD6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315459361.27702.6435578883741892797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d97473063b37cf6ba8333afc3b2550ba13c7719ad0052c61af5c89231136a3
Date: Fri, 14 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763154593
