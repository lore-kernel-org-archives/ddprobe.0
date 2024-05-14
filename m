Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B911CD2B
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715711543; cv=none; b=qrPTtkcU9UJXRKxJpDxkqfAv9rZk3RjpFh1Jnw+qqQN0Ckvc41buOEqEi57zn8xt+zo4oTzwG8edr6FcY0IFGMYm+69ZuhIIUQpaIHFYCsSKfMeUKDZ0shdfPz2Y0U3AmqD/Os2c75EWL9+I/L6x+hx0nprjKD/FR4pXdoYHXn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715711543; c=relaxed/simple;
	bh=+MHLFeBJGc2UV3AyTnykRM0+0II6juCHygtgWBMw2RM=;
	h=To:Subject:From:Message-Id:Date; b=kmcaxG/KDbgwvWPqxz01RFKIceU96/uWVnVdsdRHr0L/bPrl5B1uWUb+OdbKgkuwCt+b0WrFlH3H4TjO9xdN4wDw7AMU2k7j+40MLgXBA6F+S4eGe1p8NcDjZcDODffYUflf1fI9HuZQhPzzlAP6Rv41elkEp6D8NnE6vkT7Nsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGfu71UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGfu71UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF71DC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715711542;
	bh=+MHLFeBJGc2UV3AyTnykRM0+0II6juCHygtgWBMw2RM=;
	h=To:Subject:From:Date:From;
	b=DGfu71UCx9JgosnUw3uZpqQIlJiXpM0cJhFxr6sgL0Q2bB1CgS5rMt61e8tClOUUB
	 kDIjPix8EGsdgjcDqfrXzqbocG0PdiS8lbHmJB1UAtvF62vpRczQuoG0VoOo2rG4PQ
	 0wKMvUxM7SLdEGsrbgnS1rfkrIv/G4y87Pq68XXq56cX8omLsKxuCp6hzMii+mpZpV
	 bgCX41qm8k/M8BUAF932QnwLRDQWsxj8ws28adfSu6vQYHtoMhtR4R76ICKvtKz2Qr
	 7qb0WR57kVYrP++VhTpTuqbsJxzlAaBTpTagj7/YC2cPwNhNt3jVmQN3TLkS6rNTTN
	 4H6+WA1YOk/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1C0C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571154276.28477.8719314014841825014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a85a7b323fcbc2478cbb543353ac9f2ea3191ad7be34ea7c6797e3f269b4ed
Date: Tue, 14 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715711542
