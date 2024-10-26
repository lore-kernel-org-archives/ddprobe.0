Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD6EEC4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729902354; cv=none; b=ps68Qb027NCBec5vOIRTcc4cahbSScAg9S2ZaS6yURRhCNwj5ieYdR5OPH1eJUXFZNK+xxNAU+aQYVC7iwKtV378O+HGf2Yj64rEXZVMNx9+KZYodL8sBx5Y8sxARWn+F4UWGKz7y57B7bXAwdwEH6zPhCLETmpaVc8UvC3MOz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729902354; c=relaxed/simple;
	bh=sfDI4Pv7UkxCZnTstnhH6QkjH7N/etghNmtBQ9sCMrw=;
	h=To:Subject:From:Message-Id:Date; b=q13ce4YCZ1wEwF1MGPnoEiqTD5hT/T60L2sIIQyPbtNmgqEp6qbuBkgAqMZ6HrZWRG5cYqUW8XnqRw6s4Qr2SIHg9Ea7H55r9zso+xPNBw0+POIrnedlWQpzXl8/d8rhHL8s4t3l1Qxf728JgVnmDCTfH79mWfiz0wGaglFi9qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5pGUmqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5pGUmqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9EAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729902353;
	bh=sfDI4Pv7UkxCZnTstnhH6QkjH7N/etghNmtBQ9sCMrw=;
	h=To:Subject:From:Date:From;
	b=t5pGUmqnP7vCsUN/RTLWusmBeRsuFQj7uEvePLhLKEsxbGJTdnWYP+YiTmegZGCn3
	 zIvwjtkkRMhBMVg/7y2YPjhPRABVgKTUqf1x6RaOe3sxwrl+VyRBmDJouFxdAZ80Ml
	 8D8zQrd0j2Py//KS+N57Nfq/7evbf9QFZFxkZ58lM2dIRQY1w0ffmn0eJpzOM/j7El
	 U0C0dhJTQdUiUrK0zj2ZBOBg+k/sOh3uE0vEEN+UJpbvxenm2uDjqohs15yEmf/ra9
	 zTmHeKoWlOQ1neuoy9Ld+qGD1nJNoY8SBkz8nVqQZ2TyI6bReoteaifrhUreAR8l91
	 P7OmtWNDsVlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AAAD149F8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990235359.21309.8749860683607936942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f79fd4d7b869de22d52abb61917eb0a6487e4ba1068ac533d916e6e4b50974
Date: Sat, 26 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729902353
