Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F31265623
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786701034; cv=none; b=WYfXg5LihvtsPNAYCm5O6rGameeDicpfmukI7nFnOhi4d8z7pW8BFS/475hII1Yo0+7A1G+lyNFCF+/EOtSdaW3hcxqxe27ZdfTwIgzScKl+oYQL6VurFLvrYm49M02TfpdNLX1zEdaZAQJIusARy1n7agbgLVoU4wtCGLU4t+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786701034; c=relaxed/simple;
	bh=JkawZNwWTJEm8lD7Z/F54liD0ib33I9HUaEDBlY2cog=;
	h=To:Subject:From:Message-Id:Date; b=CUmuyIUKQi2Gj4rKbDecGy8Y9osYCVszjdHbBHfwhuMa925kpjbo4TpJy8zU+OsCsKjn6hxv9kI+u1VHpCOnEcXOdhLSjSH+vHcxIKA0G/f9Fhe3f4WTuT2zn3DJDHfA7a2MVpr3wxtZPxkh11PXIcS3FxrrLITX05VSpfC2F4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpGLU/vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpGLU/vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786701033;
	bh=JkawZNwWTJEm8lD7Z/F54liD0ib33I9HUaEDBlY2cog=;
	h=To:Subject:From:Date:From;
	b=ZpGLU/vcqHfQbN/9Knyb+QmCr6CE9BoyR8g5Locc4cHM09ewapsSvKAZ+w+QWwZXH
	 EW1wH1L/dDNTbbHWzZZDzeyaoU1quXdDS6noHvI6brKZs2uV5OMlgcLdqmiaKfBfTd
	 MSm8CBIXCYk6X7YafoVP/ltJ5ax9vV0/aAklgVJI9wzH9AIIZEKFdazNlHizziIRTL
	 5CC1Jl/O+u7m98eLxRKv49ijDsbsx0xP5t6D8JXGRvmBGTwhp63hpHL5xfk0BnwGZz
	 qnTjkL3WBjj25PfxbNJc6urw4b7EJejvQRPzoNz0fXSaM4BYUTSV6xp7g0eOofpLsv
	 0nixvw+a9+xGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA674C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670103367.13622.2052849311627607049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7c557e26ce1a72db837169bd34842ec5108adfa13e6646500dcb1e484f6bca
Date: Fri, 14 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786701033
