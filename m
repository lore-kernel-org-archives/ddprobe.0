Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AA4410D34
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778260054; cv=none; b=J8dnIxDptpDjuZzdzgS/bDjq6LALVeDR3CJZPiEBd44ewvQT1XAwtTIly9S83Q1bWViqv7ODIMPsG736mlmnKI6P2M+C0HoCbs0rRiiOzGpGd0YrsCjboCUK8H+ZwnTElULP5iqGofye9CzQ5XuGXijcvKcsyy199fXbBY9qXZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778260054; c=relaxed/simple;
	bh=JYvAUo1Gn5Uuj50pwceCkKr6jjK7Vy5TANlwGty58Tk=;
	h=To:Subject:From:Message-Id:Date; b=LxtSxNYfNyD+KJCKTm7mKghH4xmpMRKzhfmlEE3UUzXEIZ/3PxMfiPaSLzR9NqFPTIroMDTQb9Msp1dgYI7Iuv8R/tlfYFdQMKUJJjZbjjXWbCurCesX+wx+3YYksl140/+dyEZAaRrKwhu73qt1RbAu3qSmX7cGl0SrTGzdVFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOSYKmTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOSYKmTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E70C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778260053;
	bh=JYvAUo1Gn5Uuj50pwceCkKr6jjK7Vy5TANlwGty58Tk=;
	h=To:Subject:From:Date:From;
	b=AOSYKmTup29Lrfm4kmVdPb70Vh+JwQcikxgR7xtZmMBzyK0vB3EYB/nLp2Lg+JW6M
	 Azc9S693yDk219k8CUlwrO4USdOIuj7qj2GWhnZQr/tXvKdWb5yXYVCIyQtvXVZ88H
	 8Zc5kjbX1GCcBxdZf+cceErwsqyP8wQRD0a8LuWssMHlPJgn/uWPaAVfXKvKwW4IM+
	 gOk+NQ5l3aYyaI45aSpB1E2B4UCUrKj7n9KBMFHDIZv6sKTJuQETA8F+b0ZLP0GzPh
	 +gdmaoPuOHSJgPkyfvNHroZRk3Iy7tuhTdrm7iNLcJDu6IpywgaUeeZsjRUh+k2P/y
	 N8Xc6E86BN7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA300CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826005368.12870.11394048642588576791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8111dc1d9e127f35b61d31c9a9835d5ae62ad994a49c7b48e588f19f3123c7a
Date: Fri, 08 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778260053
