Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F335D5E5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770286434; cv=none; b=a+tLH9wrkbpM/tjh8jj0RU+Mp5OmLS40C3xl4L9O1cMcarLMRzcmFWpfzoF6L3JUK2NGGyAw6tp+5hhGl0vBXSf1I16Y77B31e5xj/NpDgTg+5LwL+kh2hPMHezzLg1IWDMEQYC+4Z9A2WEsSecWBQRpcxt/pzdSE6FrKOr/f8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770286434; c=relaxed/simple;
	bh=3FSa6Hj3/mmiddIlOg3sw4sM7WV01VgC/hPKYFPhiTE=;
	h=To:Subject:From:Message-Id:Date; b=gvk8r5YwbN/mUrPrjzIpEeoqhKknAHJc8HDuyrfvKkumiUN3hWbf2BqmGz7S8SeI36srnnTSlVwxB5QCivKMg4y395g+1ZDqbRJpoevL39kfTAH8PdRb0wU5joQCKxkINd9E1YFP6elQ9eg7TpCi3Vc98YO4zFHrzshOnNH0Kx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdMXtQBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdMXtQBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE43C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770286433;
	bh=3FSa6Hj3/mmiddIlOg3sw4sM7WV01VgC/hPKYFPhiTE=;
	h=To:Subject:From:Date:From;
	b=LdMXtQBxSQOIBoirxuxm7rq/P+BpVBEgRPS0tvFy439UwNY3B0ffoJm6ULG9tMRSQ
	 L0FUQNti9xvgqqC/k2tf6ElZhS8k2KF3PjM7iSsFK0GkojbZofNhpyUwoUJCxBBVF/
	 irWUaZ9ZIHJiO61E46QmfxC9oOSe0B9v7GZGRYooo/xvbhq8jb8Tm3Sxd5qZBa4Q6G
	 BtpjkATvYNQWP3NnK4bDO+g0N1rr/9vYelH0FnsfcCB2LQAWi7nqhzaXUu3FiIDBSG
	 dbpgTFfRR957X0UeLWmZ5DEGizy5Dy4dOSqcJuNA1ggH9lF+9DprvC88uahfLW1WmX
	 Xa1Ko5PMG7isw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A7EEC1E86
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028643361.23150.2217513154057641606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c669ab65d3adfe246c0a92a173ca8ae41c98e19fd2283d44bbc1e4a160bcce
Date: Thu, 05 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770286433
