Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FCB1E5B82
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753485595; cv=none; b=ho7sAK+ABwxVe0DgsnYP7WV1dcS3Q+eWhXKdK+I3lTC7DA5bgOgv2YGBHtaNZjuPalf1QsQCZwMMcSFcoWJABbEBlkDcInrYK7YV+ZT4il6iOp8jICu7Em1Z8AVzEepNgiXnKvP0qRwIPL1ZDiNcE1q7Xrg+Njii+MhcDxprlok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753485595; c=relaxed/simple;
	bh=Vjdd4NjMncFpJ3r7vdvq4NckVa+He2KAyFyxNXzX4gw=;
	h=To:Subject:From:Message-Id:Date; b=kqeKezZqMK87O2lKmWjEbVbbERIlTLjKCDmDxa0lYJqSE5ecY9qPLGcwnc1KH88Ba5/v+p2Fad7M4p+rzQERd6XdsIeKaA1ZgwciY9HsHkRLRxRF7q6YZfVoNfU+BRQR6QY0kKtur2rG8OEZRvn2pUHO2LZEpChWtt7Q+WTPwhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azc3zb1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azc3zb1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5354C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753485593;
	bh=Vjdd4NjMncFpJ3r7vdvq4NckVa+He2KAyFyxNXzX4gw=;
	h=To:Subject:From:Date:From;
	b=azc3zb1VBJP+HjSANKmpX5IEvRLukclaXIHJFlJeyX6ZuFgJkjyGjWn/mNMEfHVjM
	 jWaDhPgycZzYRIbjSrKbd7FTA9fPBhxQFlPRi8fw7HHRZUcblzvR3erv9UeHQ7XKb1
	 nf7/Ni79ly4rJ8v/ZE9uELZF3q2I8HIQipee9Sobaba7pDuReLR5kK1sRAZIvIqCQq
	 r+m0Zz4ijFWNeF8ZpSf5SlpTTSe3FTB8/YYp+C6SMLIKCAWlQRPBz3e0ylYM38xSXy
	 reKY5jrryW7te0RW8sOjWL8FA7YEo/SrUztOuYswunuipgEWtD23BC4AeGXakAWD7R
	 mtffSHFurLoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D18C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348559360.14460.15495451935376327121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f773901c364b4957f74b78cd6addb84f8de804838ebcad960c5091544a748f15
Date: Fri, 25 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753485593
