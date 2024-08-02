Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF51134B6
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722580554; cv=none; b=n+oOOCmb+Bm8iaPsXLcoFybR7W8bby/KhUoXQzrnhjIuKIf9WbJie5NRL3dne8xmeqd15BIu1s+VtaGlQXNW3slLkm2aLCRm+4s5sBwt5qYRpNYgbEmxtWF79GK9rEI5uSU5q61MU2EjkyFTgQVev4roJS9GKDAyOUI9lnjsOjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722580554; c=relaxed/simple;
	bh=X6E+rOKF2S8JHKd4rwSAY8KUsWq85k4V+Msx5I65JHU=;
	h=To:Subject:From:Message-Id:Date; b=jBxhoL4ggPPQi6mS76V33/1mFkFHYPVr+K4JBOTJ0iIwX9n0VQ8/RisZEp8mg8WzyQJErCpqAcNZEIxP9N+sOF/FFaMPy6uW+u69CzxM6hvZ3IsQcLAzjzdGhw45H2cJkeyvqn7DYxVUpPJxTt80bwpiSvCUcMM0g5zaN3kkkQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix9td4/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix9td4/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB658C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722580553;
	bh=X6E+rOKF2S8JHKd4rwSAY8KUsWq85k4V+Msx5I65JHU=;
	h=To:Subject:From:Date:From;
	b=ix9td4/BIsq9xQK2jkS4qHaGvh1GQi/WIf4icUjP7tvREr3j7UYZf0YBbNkFeNByx
	 ClSrjAfjvNucbsVjLyEyg/5IKy4FZP4pOMNMWT/ef5XFsrFe8doAu5ZWrAlksfkFj/
	 kYF/w30ZDY9J3uv+nu0q2DXblz39OtXT1uWmbMZafUX8Y1dwtnY6mB9i3eYkHzF+1I
	 Y6swPRJCvQygOaZo9HRPThBd2IcKV5IQDWS5MbC104KjeOTXg9qrD6Q5l5cn4H7zZF
	 K/IfY7UDgZaTzRSz38g6sosz8/9dUW/4LoExF75BXaJtdRfR6vIl4QfZMRu/8s87Kt
	 QAMSWFc1L1PAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4FC52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258055361.10977.9634113517251141887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28327e52a29bd8e3910c3a07ae39e61ce230e790e7c8020063068eb0213e420c
Date: Fri, 02 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722580553
