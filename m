Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3358D27E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768103634; cv=none; b=U5PKMSX0C5Jgfh6ryonzjgStMJBuw0PbhXHqHMTL5XxsECeWiC7DQOdJIfWgd/HIdzDnTKkLjih3qvSltj4CgLNFxC9ndgEAddUMc9IDDOLARDr+3X/M9BwAODV5qyqj+RoXvO83vPZRk/dHqG3EFrBo7/SIwYCvyR37dUIjamg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768103634; c=relaxed/simple;
	bh=UVgAd/O/ogsLjFjVqZ7ISf4EZuu42ZpcH9UiuYTVPSg=;
	h=To:Subject:From:Message-Id:Date; b=BRzydqVxjmYA62c/3u9LGO1quM8E3/jZXr9tWiL7WiKl4itCfkx5aMLjYlMYzbdrpfScb/SsA5V4eYIAjfG0WbyMFMzXh/lpmiKQCPSswLsNudt5qQWDetnnisVTK7P/5g1oIv6a0fYYyDU0sYjNGtoSi4m6/8VJUOY4gBNqc8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW4OKD/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW4OKD/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768103633;
	bh=UVgAd/O/ogsLjFjVqZ7ISf4EZuu42ZpcH9UiuYTVPSg=;
	h=To:Subject:From:Date:From;
	b=cW4OKD/8bVUHPFT0CfCMY7Fu3KD660ZZUIFILxwpIhiTmAmr3Uze1lwVjNfRGGKxa
	 EGcBjjG8vRkFIHty95+qYHgttmnXaEUvF8pAHXYjTEqr5/I4SRXGqILdcuCmSDluS4
	 V1oX620PEm0RJsapjVoinj4taEovv8ln98sVdWnm5J21ijuzbeYmziOxqWLJ62/36x
	 yhm8WJLvNGCvYqpDU005e2s/XFBj/5EsSIpBLsIvTFMZfmRUhmwHFKGTaPvE4XBXbw
	 YHg/Xq+LhwanlOw0hGgRZmTkOZekJnPO9AzXAhIXtCZj29NEKqUM+bRqjXLFEr/gEc
	 sOA/2nTcAKz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E1D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810363357.10688.5725716373118343636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dd6baea0f8401a74befa57c4513faacaaa9f08f9b162da4ca94063462db790
Date: Sun, 11 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768103633
