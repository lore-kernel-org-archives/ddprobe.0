Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D558BFF
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735084554; cv=none; b=Kjofk21heabVSyBbGqsK6I35buRYH8AALZRMCeb3m6yjEXub7P+Tzms3xuzTOC0chHz6S/jVF0EejB7G7zYM/21AM/Or+J/d6jPebuKxk8DHyL//mOQDZOgXayAYBbbP7Yv58IEjjx6TFtS80khauqHSRU4VwzhsX5hSpICsWs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735084554; c=relaxed/simple;
	bh=fig4q15SmQuSv3IqjyS/G7z4LeZpj8xjyV6IgRSg9MU=;
	h=To:Subject:From:Message-Id:Date; b=jnSyQ2+/UkTAW/eLwN2zGNM6J46ytykX3hj81zkaM6TRdBW41ABzjII/yuygp9BPzSEbrTTXMzbkxmfYaWbKyuKdKvli4/sYQIvy3KvlsgxyUjm9zk9QOlNWZmkecQWU8MN4h41IribyG2V3bkc3sQT5k+e4lIr9dhV5S2iHVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY0C9N2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY0C9N2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFA8C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735084553;
	bh=fig4q15SmQuSv3IqjyS/G7z4LeZpj8xjyV6IgRSg9MU=;
	h=To:Subject:From:Date:From;
	b=IY0C9N2nfrxh7irecWjpNHEaV6+g+n3+1R9GP0h8AGo4gjZXJmlWw/ziCX70DkLK4
	 nCWsvgV1yyAdj52q/ZhdoTNy7p61apVaf/qfyYfbmvXTPP9sVAijnozoDvUQQKYxUG
	 WAB4UlNoL0boiapDuHN+81ar2r89IbU7x2I+mYi/JJ+RFnWIpeb5vxKmq/QtcYL8fD
	 yxz2+ZCo3xj/QdgqS4b4ltQVYNMU+N5e0keeRumpQnQIL+MgrL3gjU4mFzkMb+MIiD
	 wCq/gBRh8np0wo0/IeFSzk8CHKrtQ92g4XtEWWDC3h/1oxbVK7x1XiZ/PrnN3H7oFU
	 6jICQWpOcD0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FC9E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173508455362.20445.9735616959216733899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0975beaa6c836a4193bfeab17a89336f5a2028d7ae798fdf9abce22b5781dc
Date: Tue, 24 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735084553
