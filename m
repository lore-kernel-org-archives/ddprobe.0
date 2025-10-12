Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501C224F3
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760233794; cv=none; b=Cuys2nOL9qCnLVuWLOFKqj4wJ6Df7UhtxUJ1sju0ckF/G4zLEEY7IM8zvbkO5QfIbCuSdHeurSji7D44G9rHAjv3l4wXI2D/9VBvQdDg+W5uXozPre3ZORI/6P1MtY8oqL6yMt6xuNKZu5Z2N1W67FOrg33lxhtr4Dz1sKA6HoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760233794; c=relaxed/simple;
	bh=xDmGgOQlBNHtZw7l04ZBp7aHHrdT9JO8fDuSo3csDmc=;
	h=To:Subject:From:Message-Id:Date; b=D9AZWQ/CxYtp2cQ5Kl1DuC68SwhLvdTPZDAEwWnE/j4dx2I4k7XH9YwOYp1uNGxFNj8+jlhgrL+q6oAA6cAyVSvCdmdfu4HEI8QOc6yqkeekAlCxbuz9whuYhK/Lb8iccVlpjl56V5msxyrQkV2M/nAiJVkhw3Dp2EnVOO8jqd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A05OcIZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A05OcIZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760233793;
	bh=xDmGgOQlBNHtZw7l04ZBp7aHHrdT9JO8fDuSo3csDmc=;
	h=To:Subject:From:Date:From;
	b=A05OcIZ3RNDLK701E/9+tsRFieRwZnRM4p6zK0RcArZNG4wMdc0dvLD+8DoDkB+8w
	 7CivpeM/t4jWa20NpIM/S7RGuQYCsIUqAVwlHykvXCp78o2DnaLnpr6bXspw/tHqMR
	 QHMzK4/7m+qC0FZyhQhB8+ZwevwiQNNg4rriK37S6zxN0zECUdY72Qzk8gIv/A8qin
	 x89yCZ+wgQHOkA5M3e/lRkrs1XeG1hE09HPYqmdoU81n23vnX/cA17VF3voXkp6Myz
	 IiWC+P3uq+6gUKGfKGPIS+K16PGQlDNn9YKOTpTRFDSCqpDR++acGKgLyelUh3Z3lN
	 vT5RF9vZFgOvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA3CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023379360.18865.9017707038976454707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6f23cd18e91d7de1c826684d6a2147d6993cb11a22514a0b8aaf1d92d03575
Date: Sun, 12 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760233793
