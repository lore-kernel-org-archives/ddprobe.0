Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FCA2D1F50
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745355594; cv=none; b=T7iIvUvRiT7Cn9sSJG27OF7lb/QbusJ5XWyUJBRJiuWtb5PKdKx8Pw2EuQBoedQfzko13kcv04NnEmlPK8wDIaW7+qty1FGHH708mCTC+beXwB8oBKRZU7l6DeIzH3QiVAK+TfIINRMD1RVDeuJyzPKJFtnEGjBpe8O2ggyYODg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745355594; c=relaxed/simple;
	bh=udODGmMCbCEfx5JjxdWmH+YT9+KJFFOixyRAjEZI12Q=;
	h=To:Subject:From:Message-Id:Date; b=FmuyJYuBzt9+pnA9+pDO0HOIn/VgLZOfuIPveKWcD0r5NiYotDHtLpqH/Qr980xrt3KPW2CLk7dklj+GN6ontBUArwYlyL9Xbgzo3o96OuRvlx+VzN0HhVPqE8+VTlZ7kckrv162nTk+gj4lnTwGp7z1WDz3Pq/iTvFxHPjR/Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kErElf04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kErElf04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD25C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745355593;
	bh=udODGmMCbCEfx5JjxdWmH+YT9+KJFFOixyRAjEZI12Q=;
	h=To:Subject:From:Date:From;
	b=kErElf04R2Xlrjli3Gzsn1MwuLE7YKMvxB/rkGB3L7VCeQwiRH6UNAfSsO3h+jHrM
	 G3QcOVIvKdy02dBB3t14CAUFi3xQiVM+JSMjDnO83WDbjI5/8LJpbUpYD1aiuu4z6P
	 mtdxs/hca6BWBqgJer3h+rGPwFKBlw3xj5HvBYWvCHSnukCNJp/z5PqPD51J1M+ZcY
	 dLFBLi52EgHWwu6f3emKC+zWiGMGVWY++PV99+c/F62bF0ZQY3H9VswDtZqdkXtg5j
	 MLrZ7f2/YaNUx/i2YCXOryZKuq3XNklOb2AZlfKA7KsyfHwZ1glpn2LkDUysZs5a8H
	 IIaaOS3BvzetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9171C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535559368.13220.6892601971419444396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c5cf5da35fe44c3de66074fbd42c51c7b65fc0e8e2c696bd0c5cba966da7d5
Date: Tue, 22 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745355593
