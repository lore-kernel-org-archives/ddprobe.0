Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBC9257828
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766061834; cv=none; b=ZmnQKSOzw1VWiwfAJJstXsUmcvHFD5arewr9zeEysRgG1OzlCzKPoO54bdaWuLHOSWmtk6qizyhpdbvBXgzMzSzq5zSdL65zF5fX/MtUK39G2au/olKxOMB7MAuHwR4IhB8asz4KQCZWAX9L+Vgi1HBz1NDv1eAOIgSPF/Ug0TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766061834; c=relaxed/simple;
	bh=S8kFoWon8fkbY+gLQDfrLanQwv7YG1KFBKB6tWgEXCs=;
	h=To:Subject:From:Message-Id:Date; b=j3TzAOyDiKg9r4m19ij+YatoTDOjI4zntgcgM5jODu7rzVnOwc5+bY5V6UPe4HhoMZskTlIszmSC29Alw0+nZVc5OMdnA4L4HHs/8KC9Hzxj4H2b3v9+DzP9uyi9TbsSvJHziKxxeUaRp1c9RK1nKMjoixufdO+K6mx0NQWmRVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITmRj+yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITmRj+yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E61C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766061833;
	bh=S8kFoWon8fkbY+gLQDfrLanQwv7YG1KFBKB6tWgEXCs=;
	h=To:Subject:From:Date:From;
	b=ITmRj+yrh1rAgfHiYjlRrV7IsRDp3iNgowF5+zOTDpPv2ukvEqVLe7AyshdPhMyYE
	 6SWLJicl/BtzwUHFYhYNSo4sKsAs7qdQh48oV9OKtl42pJOJ0P8BZ6VHXy1MWWVBsJ
	 Zyaod5GSmQvG0/m7bxS09Y9r4JqvL6Gv/sSDhU35SEYvFuO8bxyiM4wy9OkO7LmKDB
	 tgaTWDQlfsC2wwe98vDvf4rtRyUGJka5VhHzHwfQsKoBQWFnb45SFoe8dZ0sQ+V4pA
	 GmlFMpiJcih0C55UUHnVJS0AaJjdjV6AVvh4AJjcOoE/Dr9HG4USGGCgNzT9gI9CMo
	 d0wP7J0z14/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBCD6ACF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606183359.5217.15574988581312114363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9084feb70d6de1c95089e6cace58b12e5836ae2abae86ce1c211a25b4d9cb404
Date: Thu, 18 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766061833
