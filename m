Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECDF259497
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735496753; cv=none; b=kZqWmYaKr35/qz3uomardqRu+tEK61QznrbhD4u2xYKcBbjWl6+mwwA3uV1keV5y5tU74+nDlWPs6zdp3Ie6aNK0QezZceO+ATuwkxW8Wof5eisTqfSYOTPkDuWYhGMqOXOeRDOx0EKtxN7QYtGR7JSiqRE2+dAn2bGn8EpCWiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735496753; c=relaxed/simple;
	bh=Eaxsio5HNGRwaMJGqkHCNE+i7pbHfSrPZ6ZkHfFIs7E=;
	h=To:Subject:From:Message-Id:Date; b=JKhApaO9u2pZzf5MySAk2yPtsISK6/bnZP71mZ2ZDiaCisl32ukSm5sFBIxON9BgYNGnfmlPoI+srzEOTlQKvHS0TZCQfCn/RwBFiUezupHcQjzmjY+6z8g80tznWTdp6X+7Ymi0JPSfaWnsRaqjrssb812LYdN1RZ5GhZyUWCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVRRjze2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVRRjze2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF120C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735496753;
	bh=Eaxsio5HNGRwaMJGqkHCNE+i7pbHfSrPZ6ZkHfFIs7E=;
	h=To:Subject:From:Date:From;
	b=IVRRjze2nJKKY5XSWJd4BCR/8IQySfxfxa5dqeFuYgzPCriKm5XHjQw0uaSE2g1dK
	 p7Lqz+8V47S+HhKMUm2ADiQIv06c34wJzqb88zY+AmmjK/rwu/SQG5aCm7d0gplYQc
	 zGcwtV9eOXWq4ULInaMYq3uLTkBZpm+cTOyrYPy73+wJBsU4kkGIxGcOnwZSOHLG44
	 tSWYFSFjNfRhZeK6gG4PyJMKFEEB9EATHoN/S+f0C/Gp8514XnzA7f/Q0DCO2SOBFO
	 Z6bkmvArhAiW8cyBV9PNXC90mB7GR5BdlDs3+vEiKgFnPGdRoYQNvimDwJ9GLK3Gk1
	 6JgB/W2j4t3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99705E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549675358.16426.493497712093853249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1c1ad1669b0cc1c85522baf08ae1b42e0a2f6c95d80d5d80548a372b19b212
Date: Sun, 29 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735496753
