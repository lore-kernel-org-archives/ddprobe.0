Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC25443ABA
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786397434; cv=none; b=adSAewtpqwFF0QGpnIw367MD0FZ1ZzU2ZDZoEDxDQCz/dHdZVdYgV/zK9sDyiu1TE5uv4vvfoP/Rmaz5qu5PFKUFbMDtMZ3MXwNLB6Y/d6VY29kSXp6evPk6nllwPTr1lAZJtbe4V7hG5bJqRYwsdSu0JegC2JvCDQXJBQ/q1lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786397434; c=relaxed/simple;
	bh=rAN6dzUibKR+PLTXMXRoOTf+hnkAPqu9iCKo/QdRGWk=;
	h=To:Subject:From:Message-Id:Date; b=Qf/urYzSQoXA5w21aqPncTYCUOKRzZ/M384ENeeoTp0Horj7SDKaJyQaT8IYWpYVqaHX7KYXplhCJ5YiGVeREL/vU8AP9gAd348kJacmAcW6gj4l8DFoQy5ECIiiaDJR0KURYADwgoZTPuRLBYPLDOyXrNuMf6DiJm0hWlI6Shg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkqeQm/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkqeQm/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC3FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786397433;
	bh=rAN6dzUibKR+PLTXMXRoOTf+hnkAPqu9iCKo/QdRGWk=;
	h=To:Subject:From:Date:From;
	b=RkqeQm/k6QGtXFb7/kl7w1b8zIsAkL7OwBSINTKpK07oWXPND+w1MFZ01QGxPd+I8
	 qTxOZ2yo2LgWmY1Z+R8lRyH9rU2PruTYfy9mpLC3W/ue6hLOgU7yAaJuCK8fVyR7Mi
	 N2YmXDR26IiGcmIvYs4n9yX0LQp2LwvMQjXOrgMxcc0EZhKoIUZjCXkR9y78IBw107
	 HPkpD0PaQ+E7crC+vpmwn6npCbgQ3xBSN2vUQKQNJYURr1QYzon3E6x79AM2DjgHAu
	 wOLNAxqNt2N/UAB2ghQlb97bawQyBJsh2ftY/pGZr9WpC6cdZNPIsZgja+pbXgrngZ
	 o7Jb+btVhb7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB71C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639743369.28624.7377084162641404695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e7405aa94b962ff04302c9a6efff585055cf26acbcb8819f80bdac24933299
Date: Mon, 10 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786397433
