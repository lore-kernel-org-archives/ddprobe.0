Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4187E3D9523
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785972634; cv=none; b=OjEMV0+K3IczOIqrg1dEjQCCMB9pP53ljGz+Hb6FUc92nY9jvVshLYEMqbSMB7j07JNzcmAFWN9P/EvYHufme7i3nu2W1eUKWn6ND9Xi1pZNGKzsdoL19kUEruuzQJKq7mH5EqULpLlAiw+If7+U5eoJUmdceJAmDQ5bGYgJFI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785972634; c=relaxed/simple;
	bh=UNn1jnyJf1N49jVhcRTrtWsItSCOAyGFhgtKL9wtBdE=;
	h=To:Subject:From:Message-Id:Date; b=kjI+gxpmBg8N33T1fOZP/IdF5atRGZJEodC9DSJEC2YngfNiV8ZF4INI3KxD0akWmCjXM1qJlEfQGeCGJTmIAw6AYSU3HvXY8dRYV0xa6eET8gdoJILHZbMDgjoRHo+pntl6sLXinWe8yeavnUzETh79Zs5zNH1bnSmzqepVluk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utLAx030; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utLAx030"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF00C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785972633;
	bh=UNn1jnyJf1N49jVhcRTrtWsItSCOAyGFhgtKL9wtBdE=;
	h=To:Subject:From:Date:From;
	b=utLAx030sfnDPTsGzk/T3YFHh7jRe4E7YCj1v9xWXErkfeW/TjABeH4ZLMSKgyMmR
	 vMsfsRviDTy9Z6x/3qusaN8ySfgCyfZv3hrDlLJKjB5WXhpoJ5jdDf0Y4vAWtZnGcK
	 +l989oSA9farY4NQrYQrk+zW0xPsQJxofI8+UtUINmXQEE6NhxVC8M62XPk75WHgQ0
	 1pOGpTPuvCl8E9w3yxy50Atrara4HYxi0lPtkZbcglHcnqM2Z3Xxq6GHgo1diCYEZ0
	 ltIkVTdpfZI5diVbzyQ6Dd49l6mWLcn4j5U50ZM/cjYBKXWMzDPUdQykzSFyhevddJ
	 3Bm5fZE+wseAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAFEC55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597263369.25850.1795268116163112360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5410e99c91539ef8c3b1897753f368fb6ba1d96e6512aefbb1c94796cc09b54
Date: Wed, 05 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785972633
