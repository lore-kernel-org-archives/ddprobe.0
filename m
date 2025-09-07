Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB4189
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757203794; cv=none; b=agWOOLAFYo82EFtZgnj5Z237V8AqDM0JTUcc/wxpGYMap4YvLIWMrk6azWaKGz0CXNgqKylN1P52E6vMfaliOD79ssXpzGkmdY8qHCHz38JMYIAy4Zj5Y1hHUZPFWCqTiTMFi80T32F682LyH8asNnsYgbTB6JMaTjPeyXGb1hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757203794; c=relaxed/simple;
	bh=30IRVQGo222/b9hTqB6o/ucx/XkeL8AmAHfc+ZTNBGE=;
	h=To:Subject:From:Message-Id:Date; b=NaffdPsWp3lxCaJ8lCqChjEbGzMC7c5StbzTrEcKBGpRZSeO+F0av0bK8YdYlPZPKGuzyUytjapJyyp653pTOpxHeIRNK1mEAm+Td3PlHW7zQpcqeMKF0eFsejn++kH6Yn4iNN5hUM0loryUyqj/FB4TBCL69mp4xaK1LxEhmR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epQFv7/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epQFv7/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757203793;
	bh=30IRVQGo222/b9hTqB6o/ucx/XkeL8AmAHfc+ZTNBGE=;
	h=To:Subject:From:Date:From;
	b=epQFv7/i3qoqbX8T+QEmyeiBVsBOjH5/f9pfxdh6E1W/4vSNqEyDwLslMhrrolTLP
	 eOLn2Gy5py2GoJTnnu5C6PzPw1V30fMwPsu69P2m0AmrPCTwzzibMjIialdqSbDAjS
	 bGmdJMHArj8N/X09GyvoYMMMIZuHD+xwp/X4XO7BEDn9JfuDv7sl31MYGKz2YAzoSe
	 XmpHKjp9hityeFurmvGPmnybD8YXO4yB0VvbceEliPK1FD9BN3RswdOfNq2s9BgcTg
	 1bu/kZ3tuFJMOAAQ7yPPYwYdeb9p7lHXek3WvHrFiHXhzl3M8/5CY370OvwaD8/aVb
	 0kBvoiA7yShSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94406CA1002
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720379357.6836.16743178723372778834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f148fa79e9b821c31fb08d1e8f6c3ede07d162cd9194b7faa1932bec00a4b8df
Date: Sun, 07 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757203793
