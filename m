Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BAB1FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748382594; cv=none; b=qLA9rLJIsu1Uje7TaFAbpVoEdB89TTJanOxs59JajO8d8TTEH5uX05rPih+Ihp0iPzIrpZj25GHha0XphF9mVk9499B7fyzYM+dW9YzL8lk7MzRejnVjxPC7LFsEMez/W5syL37Nnlz4w0v2QJgNMfGYphUbIPEILj7aP9K7R0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748382594; c=relaxed/simple;
	bh=Eh76hx98VPPGpbsJgK5aaD+y163/zRU5W215d7AeqMI=;
	h=To:Subject:From:Message-Id:Date; b=HcKEH7ImY48TgLBIfUET6e/7WywCGnvu+qGEsW7hsZB857B68PUVGgzuYi0GlM3lrjTVYdkuQjblJf3wt5VZStSeTicmgsaxdgT5fTimJTfNUMs1WnhCButu5DIlRdV7qNk7EgJ0Zp4dwOUIzJUx2dzAMjy8jk9LuRKGlCjpaKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inPQAbX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inPQAbX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748382593;
	bh=Eh76hx98VPPGpbsJgK5aaD+y163/zRU5W215d7AeqMI=;
	h=To:Subject:From:Date:From;
	b=inPQAbX0QCr/b9Usvijt5mh9ibSkFrUv3CcFP70c6j8qYDlJ1U9kH+S2Qg7XOUDtY
	 clHmvLZ3yEIFOBbJ1axecwzrAg4tmQcs71uuLo7UvSmtfMfiINUEQWTUX7KUVNPlNN
	 0w5ws3KwdQCFNP7fFtWEWl0/sVHp6e6j8cfXy7Bt/z1YLgj0y5dwKcLxtL1z+6VICZ
	 py1N9IeWmRr/Q3lpFOd/BQzg0pXDTpijQc3rhn3WsQFRQ/0EiqCkotqMfd4Y02IO2a
	 CMhKCgoxE+qh9zPNPKEkOhTxbL+mUcIBGUP4hk4LrR0H4RNrT37tL7YmIVVqevYuup
	 1N5oWl2pknDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96492C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838259358.27173.7134645488974340547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da71329234417b7ae9f174631823e02d5a007eaf361972a6177c65cf19471b0d
Date: Tue, 27 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748382593
