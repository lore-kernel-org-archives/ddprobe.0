Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92D30648C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778955634; cv=none; b=jeUp486x71ocHoqbQ5ffLwOclxJtCiZxfehntLGGeGyzhPfDUvIhA0y6t8SX74AeNfWlBYIuJFdSrdRRP5OEGj8FqMV1bV4t0yxZb88xmOx3PJOmUsJ2z6inceFp8S0KIoogV/XMBA7NKHlYD3mVEgszSv2n3uNmfvsc7b0rRTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778955634; c=relaxed/simple;
	bh=X3hBiFZH7VeUtx1QJi8mtLoM57F8MjlEeYux9mu1UoI=;
	h=To:Subject:From:Message-Id:Date; b=E5jibZXiM240Rw5IQmzsKhHjcX6TA+6FydLgLMuW+WPadBRpQjdnoVcAuPnJjqhdR9lOY5KVmoRAZhKlZG99T8K9qdSLAZFPJURcMWlZmvP1U4bcKyXj346bt2PxWK6KVhq9omCjadvBiaxUinAuYq6XKuO8QNX6ATxJlbAZqCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxHWVaEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxHWVaEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF93C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778955633;
	bh=X3hBiFZH7VeUtx1QJi8mtLoM57F8MjlEeYux9mu1UoI=;
	h=To:Subject:From:Date:From;
	b=XxHWVaEAz+d3A1Uv42M68tmCLwRmyXe6UHKbBCjQN+gFcHxi9tklarM9wxHHpTGHi
	 FZum7PDcNOfKz12750768BffPF/H/XNEdZZ4E9XMziS6bFKiieZsFarr2x/lJ609NQ
	 2yejUmSxw7bDdB0feKtGdUCqM8U98cOsoFF6a+2nFnKXvCkXOtSxpPfajNOxZm8pQ0
	 4aCROpjJJg3Ac9OwEEcRovZOUV9KPVvNmqilYw5qapQxl2DvItd3XOPMd3cLX+SWWE
	 1UpPptKsOJQOtYza+N67T/+rjpIssA/uCKFdl5dstda8Or/ch66Vc+D7eKU/cSg9W1
	 trZ32kiR3F1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BBCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895563368.31098.10575012070605889778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c448411f93901f0dbc6ec50a6f7213bd91058377f565212273d5f84118958c4
Date: Sat, 16 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778955633
