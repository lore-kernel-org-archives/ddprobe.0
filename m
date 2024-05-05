Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527B33A1D7
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714934543; cv=none; b=stYZoEeOUQoJPQbbSYTOev8tSRsHBUE4+w6o1scOizBbUwIB9ifIqcLGa/EqzD7oQsMxsiRoQNP9OHV1bV06/1CtDHYtW1fmJJcaIDXMOrc7e6ScVIG+QM4xZKxhPp0le/Q/1Y7wWEPGGR8dhSwFKKMIZOqwEyP3jWmXd8WloIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714934543; c=relaxed/simple;
	bh=9gQ6hVkjLCwzHcb7ejmhDCfJuZgkxl0myFwzqUxZM+A=;
	h=To:Subject:From:Message-Id:Date; b=qwmlvPf7VAmEcsNHxeS82QlJ9aIGMw+8Zx0BoMEOck+BmJU9xX1tvlA7qnwATpWYF/xUfOqLJ2QY6sutfXrwwoK0PmCEtpYqJRPZIW641Ip9qj7z/jsK0KAJJK7gVX/KbcawSE2KzMCV5+gBQKB2rQ2S8xD5McsKV0KB/ULLWGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ1VjR53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ1VjR53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6DCC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714934542;
	bh=9gQ6hVkjLCwzHcb7ejmhDCfJuZgkxl0myFwzqUxZM+A=;
	h=To:Subject:From:Date:From;
	b=FZ1VjR53g2xR+7xOb5tYblBAxjJPy8s4dtXrMNZ5HhHPl4JipLAgeTImXZ1ZaUvFN
	 8bIMv0ed+idAeQKLMvH3EQhmmC7U3gTfO2R4+l+quhUeqfXsCwb1nOp3k6R7UIDHXi
	 +K/RfA9M93Ti33uE/xeIrQuSrXoEtt8SmVYsIptiaVKzgD1gyiQByU8D3X4r/oYSDS
	 8JQ95GJEAuq2ATlBWFcD3zja/4TIDm4QNi/9tBE0nO1oQditKJ4tQ9Eqk2TCWrFqPE
	 X1ZhwLRdMUNkbTxa/oBsxYjCRBpdPT2KFQb7Rg+fe1QYyYcHUkmgJBFSEZw2GnNo4B
	 7KausHxbN07Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6D5C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493454280.1544.1677564126145091976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2634689f21f8276c2f4094ab6d801ce3611a1af6ac47edca640c31ab5017704
Date: Sun, 05 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714934542
