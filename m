Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339C81CCB4B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744177194; cv=none; b=Iloi2jDvtnvdvYPBli1KrQ66ZoreNSkOKOwjRkC3va3SkuVjE9Sj0UQcFzs64W9V8apwXuVsSHQ0ns/iU4C0bLU3pUYB71jmjaKw6pz/3m8ia/jyKkKgYo22jxyJnpbtd6WQ7jo8cSNyndyEEgx0ObdgnWdOlnblzdxLZGssINc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744177194; c=relaxed/simple;
	bh=D/nNtQPJxqHqDx8BnFcGenRt1Bi1s2UPK5RCiSwlkms=;
	h=To:Subject:From:Message-Id:Date; b=dNDQjK2r504oYZNaCu1opnJMNtwlz3RF/c7SHjIT1uVBiaYTOQz7nFBADec09Y6Lc0MNDA+tMz6/YWS+RiHTA4pHVEQM/h4LJd/skvYUK4/8bwH+qb5NVS9DvTV++Yv76YSKO6bPEYk0WC+CyhUrkRpC9X3qB5Yj6U4m3l0PrAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVtzA8h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVtzA8h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC11C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744177193;
	bh=D/nNtQPJxqHqDx8BnFcGenRt1Bi1s2UPK5RCiSwlkms=;
	h=To:Subject:From:Date:From;
	b=nVtzA8h9skt1xt7hMKy4h//qaexF2aKheq5RVjr2BOeUnTwO2iAg4yT9+80XFUEuN
	 Y9ZQJHKoKZ2ZaFwTiFFr6X0nCK6hQLGIgHxKd3oz4cHvNdCD4NjMf8+brcVycJcGp7
	 uSlD6ODjaMbZ0j0HipBqL1Ylw0Sso3GGAqyJ8kspstj6f6Utsx0rMO/75Ko5sAzn6e
	 lVzwhKG//XNWswJ6Y7943LwkY7eS+52ZMATgoYVnPEXbBU7nWDyoQpPci1V5sS+jcP
	 pAJU+603WUaVdvmUAjJ9A5+fnqUCLfupJEu8i+5RL7w3TESR5JqSLTpoeqISciLWNx
	 RiPzGsasQuEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417719360.25150.812294882523675824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed47f402ef04b32d22b98dc8b55c2901a4ebb6c28e03f61a4276b997a4a06c79
Date: Wed, 09 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744177193
