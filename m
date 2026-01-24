Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FC83EBF20
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769235234; cv=none; b=EOHqc30NkhbTR2rQkverUD5zAqafbWdYU7HQJB2Qdrni0C+UNS4dctBAhbllmcfGLwiSo6Ov3oAr+ZHY/twr4JS53QBbzOCUa7sqzFkBzC7U5YKbQSALk4nfTWAdndFz56wgldcVjRy9Yx2xcdntNhxEP3FvwZ4G8Ft1A56fh4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769235234; c=relaxed/simple;
	bh=+YgeGgS16sgue0cswSxIGfdzxC6CF1yM+S/TsrJns6o=;
	h=To:Subject:From:Message-Id:Date; b=lrp6vIPG+pcPZvABbDtWdMtFKN3VrRN/IEEpBWUolXEuRZOsAqUyT+lKK9jIZmpFDs6P7Q6fGc8YY5A+L2s46nWmvjSxsfEfFS7loRml7aKo9DO0Ej9c9sIVSi7qg+iAgCyaQYIZ4lEvFUsG7vFAZhlPHDvnyVzHm6wSwpodpHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyaMJku0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyaMJku0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769235233;
	bh=+YgeGgS16sgue0cswSxIGfdzxC6CF1yM+S/TsrJns6o=;
	h=To:Subject:From:Date:From;
	b=DyaMJku0l18I4sYoETjOH+WoSgUN1C9ptztTV3veNYPPIiAeAWs/YQY54jZy1AVdj
	 mYacymeW9ksqWA3r3PF2pK4GCveOb2yCilLxCBorFZuhnSfQlvMgC0knIMZlkZVrQS
	 e9HYzBJgTN4T3z2i5keKIXvo/YKws75U3xk/uLl7yzoA7HwY2BPE8j+fRHY0IuR1gu
	 aivxsb6OyH2pRq/V2t2Xqlb+jER/ketT87X0P/3kj1b5+ms413sTXaunHkkU0a09Bp
	 +SQa60MpP6NhUlQGJQsNkpPHqnXVQAhGgonHimxXHj+9k24ejQ+DzkhslrO2+fanZH
	 J+pkFcuzfGmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256AD715CA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923523357.13786.13354438883042037300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322fbb0f57c762b2804c539740283996fe7cc8eefd36fb13fbb1f0de6869a24a
Date: Sat, 24 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769235233
