Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDCA4315F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765414974; cv=none; b=Ei0ym6NThYuJDdrlXC+5nz78QTJdRc7cmeLE0L0Fbxvtzq0X1MBq/xP9zTXQUGriKCBciN4av7f301cfoLcDgp5d1kZleOh+DBUPVwQZ/zbOedBS4p48/4cee2pF7Rhh82zV54Nyipj0ZhP1Un0Z93TamBcmwvwCJWBNJcDTjSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765414974; c=relaxed/simple;
	bh=Wj8VIjfEmUxk2ZdOFThGt0tMZSuSn0o/C2Z6s0WPPMw=;
	h=To:Subject:From:Message-Id:Date; b=SUTN0wsRZuKDnryjVFL+g01IKmzv0L6bQCBGUh5VvkWqRHsTKWLyCxZ5zVArlUHV+M+tdZXNFD2ZRxhZ3C5jECsx8W88V8JDXbeLWO9cYtadnqRg3tO3Ex2FVgoav0RVVDg/6JXn+qyWfKPkhFB86pJbQVSWxuuePm+DblApgrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQJ6aRi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQJ6aRi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765414973;
	bh=Wj8VIjfEmUxk2ZdOFThGt0tMZSuSn0o/C2Z6s0WPPMw=;
	h=To:Subject:From:Date:From;
	b=EQJ6aRi48Zokl7ov9vrJpqpYgI5+54zMvMZz8qWCycl4uRrYIqCfplrKimTAqFheN
	 N+P09YpYObLwgSA+I4xZyora5VHts2sf2ED/+ZiS5EwYTEaGZ4zzkHjUbviIIO840+
	 3WTjj9dzR7fP26aWyFkn9DRL8aGK2oCxA8MhYWF27KBELM4u2RDkbZi8xbwmm2tcW9
	 5ixvp5muxBd5VSXdo+Lf37DqrH746TcQXyW2PjzBooKk+vb3c6IT86IFn/QiTU0VTe
	 F6iKdjoonTU/sgPrn57yJWQ8bCVoAQ4Lts9/YKkDqTTcpdXtnQsX6Remn4+q2hK94T
	 KxWln/E8hRMQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160DD3B9AB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541497358.31864.2296704044062344815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dbfd1d7ec2914168d8bb7005bc20e81e7766dfe3e70613619afb9e9c8a8de87
Date: Thu, 11 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765414973
