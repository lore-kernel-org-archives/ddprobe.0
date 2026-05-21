Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B45356756
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779336634; cv=none; b=m3/CR/rujfZXwQIdOpZswnQfKsBlnHzYkZ6eVaxMjR0mXtW5TRYQ2KlpXjZl7bovFb7tw59bdKR24e3vDLaj3dSHPBZnE9fUS7tgJGiR2KIXtn748cCRv+hqC95po6yqVFeLq0p7qssvYg5bznXKKur1knlxKrZaLuK4i7RFHcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779336634; c=relaxed/simple;
	bh=7fXQ8tKvIGUtByNDHftaY+dKkgeVxxQpoB3Ta3OwL8k=;
	h=To:Subject:From:Message-Id:Date; b=djE27AtUCfeRfZjIL6suyFOhvTz0/IFi+zdhIfcvmvtLxDU+LPhvLU2n0qE1QP2VyQwVwPriZntCgVLm36/PyWiiRSIbHstXb+y4hq3/Ot6TMkURsNSpzM4dmBxxbzhyXeWxJnNWG7kojWIjpueBv6WwAlBqZzj/3HbD9YCVKrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qanlcRtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qanlcRtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93C8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779336633;
	bh=7fXQ8tKvIGUtByNDHftaY+dKkgeVxxQpoB3Ta3OwL8k=;
	h=To:Subject:From:Date:From;
	b=qanlcRtOZBa6vEtVeaCTU7o6Ja596Hq0PmG35gCImrJj2T02q78CX8pzfTg0wyigI
	 Buucv7GzQMbHxK/kICm5zjHgZstiicpbt/4e6kaxD1hSteMZsKCDX7IsypHH7zFaVW
	 jknFMmBw6xU186sjmaHJ6gr8AU2KAehMOvoJNfubq56qSozOujTqc0XRnlG8ETfrAF
	 y+L9ygbHof9TwOGi+RljcxbHTJLc88BuNPbdLjScB4jrehDGIo/4LOp+seeZRkrW8k
	 nk1VzY14++ybcR6MlFZMea6xpHuLyCsybZABPLxiVEgV9FXn1vos6ATCGdaqcd7UXK
	 XF0ale2PNUKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD05CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933663370.11459.9415836193879589616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b0659fd914e9c99ca8223ff9c0928216116d70db844279ab117f5038fe1826
Date: Thu, 21 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779336633
