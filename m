Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098A17A30A
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741423734; cv=none; b=QvOvBcSF2K6nUav931C0FlbA7oqiqQv2ANQ93/6DUbkZnMdnKYYH/gjf9rlI4prCf9jnnPNnNk1pXOUB7m8ZZnySx6JysemwADoZl0pCbITG/ef5Pv+L4LZJvdJxiGFZpvlomK47ds/MllEHVSYxkDrizWAs22gP4k9mVSfKFRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741423734; c=relaxed/simple;
	bh=Csyo6XsqYR8nbhFNrNFA95Mdq/6FliYKs3bV39xbAnA=;
	h=To:Subject:From:Message-Id:Date; b=YuxeogUhU9qoVDP8CPz51JiHMyGyGjXorYx5oGmHQEObFGXEhEfmY1Q6xRATcre1YiOQupOY9gVs4LArxVh4nfnrqLam3Ypy3jv+rTz4KQDhLH5kmGPoY2XufHJw4gI7LSQ3hzaNDeaPWTilBV+r21UDpvgUtpa9KFedrio63Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQfACfff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQfACfff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D39C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741423733;
	bh=Csyo6XsqYR8nbhFNrNFA95Mdq/6FliYKs3bV39xbAnA=;
	h=To:Subject:From:Date:From;
	b=CQfACfffBayK48EGlSbS+HHy2qCjXOzUPxiaMjcv6hr1CdQa2nPH4jX1MWmXXzI8J
	 4bUi6jjDo2UvIWmm6FXPRTXq5lLTvBz2PMpYWD+pnalDtTUrNfTE6Yn25mGILDp1ke
	 8sz8hwojsqthtIe9Zd1lNz9wMRrHScUyiflM+nThI1Q3aY0YlCb3YiGsSr9WmRxOkT
	 pbOjF71NHpaBYAXfkBjrrMk1O/qeIDixxvkAiKwDgvnIHs/NTwxG0LSr5JA7NuJqsp
	 EuaDKobepXzrRR5KR9RtYTLhvG15BlhAtH2GtQPsJC/gWSWn+1eabdN0LdKUKtfAKh
	 PjLU9kgWnxCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCFC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142373360.1806.13272448121412196032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4d7b7f06b6c8d8acbcbaff3221a0107038c153d89577df70488eea9f446b69
Date: Sat, 08 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741423733
