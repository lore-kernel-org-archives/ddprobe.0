Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035DF21ABCB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751097594; cv=none; b=l0v+5pRjiNR4Sd0Mp9VLCgsBiTcQFx10lq8d7HhoihNTGt1UNsPWuzXOnZQqfhdeXP9/8x9/OSQF/0IvG7wxlWRUIvdJzKdNSqtFVIPV6B5Y1KT0biEuYUn/xLhpGpprkiMxaL1EzDvroIyVI0BCx6RVU4PoSiQ7Fmk8bDl4te0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751097594; c=relaxed/simple;
	bh=oa/mg1Ks4/Kl+H59L1OHfu0AmrRZ/3sZ91Hvg8NWHs4=;
	h=To:Subject:From:Message-Id:Date; b=K6rLPfCM/kxoa0gjT5XWKLpxKo5w0cEE8R9rIpl3olqk6RYcROq8G2oqmkjZltx13fGTQq9pbJnyrW+AEr6e/NQtHhIDzU8gYBHs6qlB4Yqe8ztS6REtDp5NrH16dxVAN+C0NyYRT2XZgWh0dUHe0bwbZVkyTD3lQs4/GIY5veM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewVSEJ3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewVSEJ3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB072C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751097593;
	bh=oa/mg1Ks4/Kl+H59L1OHfu0AmrRZ/3sZ91Hvg8NWHs4=;
	h=To:Subject:From:Date:From;
	b=ewVSEJ3ztNlFJRuPd+0R8qQUNyL5UUghW5TTVSZPlqFtN5VLPfQxecfOMJRWXtYfO
	 PW8Tmvg1n8ev1dGuJgbR1unhSswN9bM6OXDBFX2Pc4EjLJRK03Su45BionqNe6B90R
	 DX/Rxa4YqTq3b4zF57IqS9Vv/ZDNJbwmwkeAAVMAnI0heLV2EQKdDzutNsiCfNOwyP
	 7Q3J6W2fin0CB6zaJllFip8JXT8K9VSrQHP2IX+jBzVKMK4vZNv8U9w9XbsksrH2fQ
	 qMM9h+5vV8fT6vIwyMDJtleUKfgBnlOz8JG9zhEbnh/ZjogmtY3TOGYOOk6o/sPyPR
	 Ek0Jul5fGAmRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B35C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109759360.9356.16304164306088095434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42e153910740525a0029a000fe313c6dd6e3edf3be6e9fcf670c41bd2965fb9
Date: Sat, 28 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751097593
