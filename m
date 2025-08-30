Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B438DDD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756535994; cv=none; b=rxjYImjCOd3LXNg+ndYNozlc9xnZqqfBjOc1FuJIHfMRWbkwYTWZwRrReNCNG53jw7D1Ihe95Pf4Qj8EAMPyGZdiU5vxtO5E45ftpVE1vcDwPGQq1Ie4CTtQjh7Uw++drkM2gS2fTvvWZUKQUnHcB7KpkuPGWHcM23WS9YB/t2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756535994; c=relaxed/simple;
	bh=UbI1x1JyAS608nqnA38A+dM+zgZy8bJ090WvrhAZ/C4=;
	h=To:Subject:From:Message-Id:Date; b=PKAPGhzZUcTgvkOg8CO2jwIZp7h8gaAYrzJPG0alqRg6EcFSt2sS8YHMAHxTsaifbAa0X62CpYNNhSoxIzSHryU39uyetdHfczTm5yLQfrVcSf+fZQLKqmP/Oewgv3gW37KQl1g67roJqaKNvLDXUv234waihWvo+QnHi3/YTqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrrrSWxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrrrSWxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C28C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756535993;
	bh=UbI1x1JyAS608nqnA38A+dM+zgZy8bJ090WvrhAZ/C4=;
	h=To:Subject:From:Date:From;
	b=hrrrSWxcua/KYMDrIfdEtljfQFizFnjpwkvttBEuOLAh8foNxV0JYnQ5LMLjGl6j4
	 gFNh79Y2bPSO516BdnewjJCpdNnOg1aN8vzL3vnXu47i145kUjHSyCzEshfjEb23T+
	 LSuI3/9tDAzzndZfeHDnDsQJAB+KKP13tkX+Ep6bD6ofq1m6HlA4/7Inr35CO+U6j5
	 GiZcELd9IE+QU9qOjsegXgLebfqwnXAFXEK9UYTldP46QtAWTI3XfFKYbL0GL+DdJ7
	 Fl+9qKa3+5I6SPLW9pRNUGLy73YuLcZd01p8rbsiGTGp6v4vAcx98I3zbZP8QFmTkA
	 uZzYm/FTOjKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CBCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653599357.6684.3642380912945371147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e55e2b8692ceaea5dd0d6ef08c04fc53743050e397070b9f8765e602e433c3c
Date: Sat, 30 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756535993
