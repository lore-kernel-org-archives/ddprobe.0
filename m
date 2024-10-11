Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B7723BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728614154; cv=none; b=svccnwQwebjLxnFkyMahsA4ToxhrI+jX5ElEGH9eUhka5kZdSs+iSq7vqu3UvN52mOgZmO1cp5MAOa1ad0jfvqKy+1vF4Xh+2Qr1v9N2TsFMMu06jNzxNUDJU1UPaSETnUgyTkxZCgrehb1zDcUMzoNLA4Kl+PJfH0E18bZU3QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728614154; c=relaxed/simple;
	bh=j/l2zp5HM7uClSqxtrvHLLHq4frIZuyYT7SgNYanG4Q=;
	h=To:Subject:From:Message-Id:Date; b=n8GybYQa+YnRaP2tXfRl+vc4HsWdl5oc/f87NDe7TWcw+ILG6yFHZoNcme9IzWj7bZKaO3TKfBP8ezNFw2Pc7dwm0UZ2gDPMk6YXcnVbJuHBiLOChl1csp8vzo+YUlC0mNN65zwpSmbAPLW2pjaZnXp8hX5psb7iRtOuVLg7EC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7cnUWIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7cnUWIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4877C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728614153;
	bh=j/l2zp5HM7uClSqxtrvHLLHq4frIZuyYT7SgNYanG4Q=;
	h=To:Subject:From:Date:From;
	b=r7cnUWIvMKUYTjhAvNn8nKueXYIqMCmFyic7pArXgBU/nsXUgAvK3zcyLX1fGepQ7
	 VsqdH6+X6S7XhmE+Jw47BPhG8+HGAblCgw/QV5Dod0G8ExU7liRBWpQmWRSJ77/rBi
	 rzE8SUZ4iDAjeaUCR/PIjDIEDokGXXwSYWj2S1VXsCoyX0DBXkMW++WxcZOamgjUqH
	 BE06SuMfQKfwjpmL5tJwN/v5yYLJf2SaSpvt7JSP1PUEhU/Oqt5pYFneE+VhGp9e7E
	 6iJdjmsKhBLm2Tx+Yd9pNeTF1pBgsOZWEz0qfkjaJ8SeTKRKtVQq04QblvBgnXpye2
	 xdYQ4kjfWWHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A468D24467
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861415360.23539.4705071643179263016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd56d5bad5dc3d367cd84d8478cbabe323453d3f8b07654561e3cbb4cb25391
Date: Fri, 11 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728614153
