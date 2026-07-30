Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DEE4014B2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785409234; cv=none; b=N9moYr3YvwzeibjConuSS9EjCp6qQWqGVy2wzgwF8V5B+HiHxh6k1Spw9Y+Iju3tNEZcmahNZPTlMMAj2/FtID93wVKhEoYh8ZetUP3ED+8HaFiSt+ekGETjRC9IdW4Ude30kSxAgp7Jle4mpj7LyxmbK/JCTX/CV+EX46izceY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785409234; c=relaxed/simple;
	bh=imkggSPZQkYdEmm+EeT5T4lRthqnfH7hm5SwdsZbrFw=;
	h=To:Subject:From:Message-Id:Date; b=aO+rkx3Wtn4WwIJ0tmNWs5yCtpdLsXx2iX6BjyI73zVkKrKlpLobTiqR9hbJNBJ39TgGsllZU2LDnoZWJuUdPUm/Rvydo72Aqpn99fc48k9ZzLYGi5GWSOSTiSqwJXbA8i55SBIduG0QsZKYk1In4dexo+Eb1g7oQRqcnTxgJAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5T3UnP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5T3UnP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA8AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785409233;
	bh=imkggSPZQkYdEmm+EeT5T4lRthqnfH7hm5SwdsZbrFw=;
	h=To:Subject:From:Date:From;
	b=d5T3UnP3n8AcT9bvfbmyyrUPHPj2bScHjLbdfeJTarmwqOu4UUqv7WhOindcVewDC
	 gQlW9mgm2HJNYvP9DcbsLHs2CPJspLJbhe6BqCAKkcqZbw3CU8n10njxZgkyUwfPZk
	 N91RXOkc0xYqqnUK1AmB6JZoFerG4ZzUvbU2TCa7FlhJi7Y5oLzT6aG4ig65wD64E0
	 yU0saUCKpsBjULD1H8P85GE1s1V+5zQJC7iGLmyuIFmwuQ1s0swkCpqdAgSLmFYwJu
	 pcBCMiTJ/Nc1D3JE+xRYslJ6yzte1MLgdXfzWbl+nfLMu+bv7uvHuQMT91DEsqCmTO
	 Dc5W75iYMibuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCEC55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540923368.9469.17975622043659112910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ab7be737f7944643b0a61f0bd817fa06838c6ab9e9443b69918456bd1887b5
Date: Thu, 30 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785409233
