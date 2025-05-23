Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470C8231850
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748009394; cv=none; b=cKcPhlpfjvkKmiafqsZfL71Wz2n2Syxcj1ZgEkGt+e9mfC0d8mM6hopHaI4goqMNvUG16Xg+GmWUKjNc3+sMqwoMvj5Rj2FcM5mkOuFPUOyJ3OWdrfg+SOkxM07yc6vvkmPKvCE1CsrnV1tPd200jkHP+uPI122znG9LyecmmLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748009394; c=relaxed/simple;
	bh=UjGpzmS9MmYl8XqbmgjHUf99KaPzGp5gOMlVf9WiWWA=;
	h=To:Subject:From:Message-Id:Date; b=swLr1D/v6mh0FQf3zrCATW8MP5/wbFp6nSHhxoaEezAI8YeeO5xYT43jMH7y6GB2RQJdH7InGenQkkmIkNzplPpAsWLQmyMlmIVwUFm8oSW8tohzaz5Bvqys7W29AUksqw/XLO8oFDVJ9KRk1xFiR9Q/79eCk33wk+b9hRyklp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzAnbGbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzAnbGbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748009393;
	bh=UjGpzmS9MmYl8XqbmgjHUf99KaPzGp5gOMlVf9WiWWA=;
	h=To:Subject:From:Date:From;
	b=uzAnbGbTx55l0uAAre3mu3YMIMhavImN33L+2WeigaN3e5nA9pcu2LYuZXdbu5HjB
	 jaegU5JlCzsXkth43PCW0G3VQpQ4epxRdh0WfVMjaV5bTD1H1gCzsyxoLYTREDSrVH
	 JVoV4ZjvnJTvGwN9RVRF7hANNmvpRCcHXzu59K/AO5xKu2VtrTs3aUHpXl3f5k7/ax
	 7mz0RA5LCc9QYLREf4zWNOW74tfcYCOUxkd7eZTW0lunMdftZwqa9krq3bRXmjl/Di
	 SFU+4dwHwa0NkwwhlPAz+8MSQVGUO0AyyFyu8OeG7zEkhBwDuQLL2/U7HuSMQ1pFtZ
	 r84t8HqvSlwoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE22C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800939357.29263.11053032187529999720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8df3052b0e8137b10d5800f2db0953bff86994baa1b3a39de33abf085d37986
Date: Fri, 23 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748009393
