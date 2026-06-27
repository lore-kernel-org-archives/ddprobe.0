Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0B23A6411
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782555514; cv=none; b=NBOiLFcYTbeQR4mHvGPiM8Gy+xTdZt13gPfon2vyLY1zNJW0ArnKn/aRqj6jXtb0AnjddWUgDecN5GDVVgjVAFNZuLJCPFQRS1d1/LWrShnruzzNSjt7L1acDO7yUy1Tiwlas6WsGcCPF2iEM1e03zWW72wqZbyXb5yHyCNcMAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782555514; c=relaxed/simple;
	bh=fUiKAJEUmBGocFZIKBcDn7QxshWY5T1uPaov2Cw4FkU=;
	h=To:Subject:From:Message-Id:Date; b=YzlskNDcVm7djNpRLV8ytgcI97cXjrFECmHdAoF9TSrxht4j/tJGa9Dkyp7VMTIysGVGvrERbGJLfQc+vRYOjVHTR2wHagP9mVG38UrwKsAaJDQsdihNUDzox5MMzBlmifEPQcB2k3NaJ860hPK2+Dw+3LsM3ZLksE9KIyqHkLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRQEiJxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRQEiJxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEEFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782555513;
	bh=fUiKAJEUmBGocFZIKBcDn7QxshWY5T1uPaov2Cw4FkU=;
	h=To:Subject:From:Date:From;
	b=uRQEiJxjeY1tjmzHaBGcNmK8dQwMbq0u/p9rnotF8jHqAITgj454ofH7ev/jlH/qf
	 BkMJCfomoyXP2nPQyBeJ4dziOz0sWmMg4zVDPb4S71+JUYSxt0vfnxpUe+HKy9r4Mp
	 UPeQz7seZR/7MBVPkBQ5LuNKEOft7NCvUWmjGFQgPTLZ39TYP4O0WyMKEWyvDrH1nx
	 FW09ag0tBqBUQ4xr9/nMerwlFmRfptKUiMObcjr352Up66jKAKGJl6AgzMVBf77pAP
	 82KdLwWT81RMDOMuqisz0ZhiACYOpFKQI3t2HlLf7DC7tlr9ZiN3GJV/x+KyoLRjqM
	 5QOowPk/TWdUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEE5C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255551371.18374.2322402199585813155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccd738c64de74f134fc4dbb5e5a88222f9fea86d771730b6d8434763d791d40
Date: Sat, 27 Jun 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782555513
