Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AFC2D97B7
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763969514; cv=none; b=LGFyJDDZ+D1zYwy0S5vHRvgaRUkaZbAB/x19mQuW51HZZcyWxQb8HBucaOlyaS8QXa9homI57sHh7rv+L5Y1AZEM56bHB7+OMhwiJVFBbFzIaxCRdkkDnsKGgA4RXVdNoFNfvoV1MCI2zAvPOUA0Zmmb1sPtbSHkjAj0oYNGH8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763969514; c=relaxed/simple;
	bh=cJngCdJ9YkZKMUopRVyUtSvQruv+TM5tpnIUr+F7aRM=;
	h=To:Subject:From:Message-Id:Date; b=Q29w8R6IOnij8M6+sMTz3whI70t/b40zHkYKKvTwXDdZ+xvNJfKG8HdVGu9V3LiA7dUEuDemwmu1f67FbGQ79teOGK8frVcDzq9SbRYkZN7iiS64SgtcdqQgqxk90eFad3hBu7+AV2uicRO61fig3a8Wciu0/PAhpXN9j68bO2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHzfW4nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHzfW4nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763969513;
	bh=cJngCdJ9YkZKMUopRVyUtSvQruv+TM5tpnIUr+F7aRM=;
	h=To:Subject:From:Date:From;
	b=hHzfW4nBO9q10h1Gv8kNPNVC9zh1Wk4ClvzCXURHPCxECO1S8RMksB97Edh63VwPE
	 bvFsh0adeWWnG10ApUnHL6rIPm6jd5koVIa3hpq3lQ+gYKvaPALSEylc5icSpuuzLb
	 xt/7SxbyNcG6AiY2cr/++ntMSEzw1siaA6lZPGclo6KgHubC5GGXGRklUCKuOeKGmv
	 0Ze42Yv3oA+zHZ99vYOMI1gOwAm4FC88OBjEvOc78vIi5TSJYCmULquM1AmBoHG3mI
	 G8UiwowjYeC17TmKFyd0MczpCsAWVLSf2IVxphTa8jYzpHKdhrIFuyO5G/Ca49IiDT
	 pmaX+yWdkEZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D7CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396951359.8910.16064694859874461217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a9bb81a83a137e0cf6a4fde75b42689faf524317784dde577cb1b65449bba0
Date: Mon, 24 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763969513
