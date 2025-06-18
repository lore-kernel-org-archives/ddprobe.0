Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54BA93D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750225794; cv=none; b=W3Yo72WhQWOvKFROEFjVWf1j7bzlweUVFBLZqMr20X13MDB5EV9rCpq9A57L1E3AavqhHFg+Cf03ZOOQMyUAlWvcgj3NN+Bjs9m/+S7zTcY08vQcAqIa8TfwjEkwM0R7R3VPVXe2xc2lIHZ3C8VtmigDXrT2xCFNyPYgykjwIU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750225794; c=relaxed/simple;
	bh=zubCQbKDLkEAKA8loj/3t9BXKdYTfoBXeqbo6ggXgbw=;
	h=To:Subject:From:Message-Id:Date; b=BkUzQE2P1I5XsjqPsy2qnMufaVOVGBrIY6XGHVduhBS30cr5+cuofCvp3xb+7gZd0IQMs6dd3I4Tlck5h0vyMs4RJS8MmOUNhMibq8VeCQ50wJtLdzkR/gineT9I50dDNV+5RkLbZxM0el0won4Ahb0TiEFHM9oY9mDdjCtk3/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbiyW+LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbiyW+LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA094C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750225793;
	bh=zubCQbKDLkEAKA8loj/3t9BXKdYTfoBXeqbo6ggXgbw=;
	h=To:Subject:From:Date:From;
	b=tbiyW+LO5E1gMpnSStQhEJY1i5DmlFCZMsA5Ilm0JlOMbCb7xRL2YTNlPlfBrMDVL
	 xETn4isSNkmxUVb7uT2To7MZlYiCxwiKtWUqyTSbA9qi0HXsFCXr+LVk+i/UPtDHzH
	 elCW93buHC0cs+VkbmUIpAhpcJ1Zq6gO3JUuRcTvSKk/2/wB+vsYA+p1/SEGMj2+ky
	 /kdYkkiW4ggOIFO6d1D/aCq5zX1KZszzxedlLR4qEZEn8vkERJh2SKMIgQLj/2z7tJ
	 +70umjb3305ZRAJK/+/zYOyTXA2hnFccI8uaidRPj0uXT1klqNQlUTwDxn/t0xPfMg
	 MhPwKAIatC1VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EBAC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022579360.17275.4763492356052692846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3296bab65aecadc522886f0e68a7f7b2e3a2cd56111649a08916fe99e3368e4
Date: Wed, 18 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750225793
