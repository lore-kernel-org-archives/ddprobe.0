Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F63D3491
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778653834; cv=none; b=WK/BIi0khc6Tika1ES1NdSSr+T69B/byHTrv1NirZHyq4Ti06BW3u9yzw8uBSJ/TXY4GuxHWYeKbUFbWNMRBQy11FUAlyjiMkLWijhHgZ2rDrLcTvlYXF+i7UGzJAeFvIkmvmKOozmZXi1FC1n1QA9iDC6JocctW4r1BPqI01Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778653834; c=relaxed/simple;
	bh=jZ/YU9nxRo4xlWHrXZsjFYfJq1AHj1y3bmkQF1aaYJc=;
	h=To:Subject:From:Message-Id:Date; b=aHUl0Tx9DlseUutYINfRakdVJC/ouBSnyVWcS3OSDbwixldeZjJd8jidloJ99VzMH5+lVTcP1jdGge7RzcAvG68iKEpXbiJNhndRq8edqC2Ec+WZY6VRnwqeAvzabbeBxOy9ey9L8PBj5M5S1HtZkZP742bdOqymzuNkU+UyPpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPknyt/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPknyt/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC04AC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778653833;
	bh=jZ/YU9nxRo4xlWHrXZsjFYfJq1AHj1y3bmkQF1aaYJc=;
	h=To:Subject:From:Date:From;
	b=FPknyt/q0Ky1zqDbLTexJ8ZJGEa8srqUCQ4EFO5nsk9WTtylhUlD6u+mFPFE3gPg0
	 H96Ov1VSB9Fvwzzli05OP0kx3+2JDucI7jkCglx+fMBjWdnMfY8aiDz8E/FuPsobpT
	 fLYaI8dScnjN1frFb3EP5gyspdegzjKfaOhWzAiOR50y7aW+Gz2TAYGzjsNj7VEdrp
	 wHCs7VGHkSsDsfIBCGBEBjc3FqsIh7ymfZpNHR0ALxGon/hm+79LnzYKRiO0E1s9wF
	 zc5+WzeVxB1V4XJsDdaKM/Kb/KPlw3Ir4UjclqsGqYEc0ffdWxxc03lC/bo1fvM/bo
	 9HuGyfmedWByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC7CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865383369.11003.3602212287422484170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507d09dd5a26b760e6cbe2f0bd50307140b38bf31f4f858dcf2e999824a5835f
Date: Wed, 13 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778653833
