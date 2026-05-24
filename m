Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F112F7EE7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779652954; cv=none; b=WkEBfc/lpllweBhO3opeZB3cJx9rfX4bBberXEcW8HbNQkn/9J5Td0n3vAwQcnlLOY62dHzZu1iMRnNGBJBW8lZzj7JySkTkLGOcF3NUb6yP1SHLDdLHnWZlb3YiGKSU0TiD1DlOjo8hVtVAJ/iyvw83e71di+mZ6HTKyyaMs/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779652954; c=relaxed/simple;
	bh=bUlElDsG5cbuy3n038knlATyHhYIdbXZBzmFgUZht6o=;
	h=To:Subject:From:Message-Id:Date; b=r1lMrvDAofZb9bdXpvl1PO/TH0WiVjri9j6Oc75KYSx8svDNw8k4HIG+3yVkbpIAfbc3r/uld+vCisV+MXuZzVhhfRU6LaLjf5ruuHDWOYD+AsHsAdTCbZxEITj+oxetvWeiqfdOGtKr3a0yPxBgP1GkArfxOB5kKdiHVw61RSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE2s63VA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE2s63VA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779652953;
	bh=bUlElDsG5cbuy3n038knlATyHhYIdbXZBzmFgUZht6o=;
	h=To:Subject:From:Date:From;
	b=AE2s63VA7iLcUtMwq5hOxwYpNmp88WvOz7xEOwchXnTO9ZsKQTNlkRZNM9kpIl/Mq
	 xmCuLbxJXFkzC6MNDFBpUwloDbiQyvgpd0s/3PUdARWP9iz3HkHANmBQupF7dutJez
	 cHFYIb8b/qoiAF7OpZqvjKqsPsFoqbgbDIhW1vsDK3APjehvnbxhNNlPHmdUiVIVFM
	 nk/9PhoUjxSMIGQsTbOp5SiqtIjDFehhV/2brbSeUw8PcDE1WuIiG9MyHgqk2EWz7+
	 mydJX9bQo/boUav5vLIIH2O9X0Q7kmXikSaIY2uEfNzSqs6hOFcGepp7/VSduJLg9M
	 8wSNTRiREaQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD225CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965295369.29513.9005992358240867690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c73a434928ee9327f626a3e8cb8fb81fafb464ca789709ac2396d0298769b1
Date: Sun, 24 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779652953
