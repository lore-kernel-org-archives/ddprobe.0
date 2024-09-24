Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF4BEEB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727189754; cv=none; b=g6BkI7KDN8cm0g9tN5h/hLycX+AHMOTVw6hGrE+yQ9yLF9G/FLL1y+9EWOOgbmfv2E0OU08ZZjEntn8HYJhiyW2RJ4inzfKP+QiAKCzJhLxnmu4h7YSFvpFACJsXUxpRGgVz4i+WxnU6x5OhwQYsiO2HJ4CqAUtDGrn8MOkhigU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727189754; c=relaxed/simple;
	bh=JAVWPOrR2HpAlwfEJk+vEUkl16lKhp6QjC/lGiYM+xQ=;
	h=To:Subject:From:Message-Id:Date; b=cdEyw/VNCaldYgi6rLJn4LnBkYNhW9kvV++BJ2SAxreaRlk1x21SvVPUTz7hSp4DB7lyZT5YXxRoEo92VIs8dqjTLRQsJX2qXblQHCRdg8/TwsxOSJgBGeCPkhGT/JmlMJUK1veCtEjNKP1YOp30C985UMcY3J9fssdtR0JY1O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/IpLbLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/IpLbLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5DC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727189753;
	bh=JAVWPOrR2HpAlwfEJk+vEUkl16lKhp6QjC/lGiYM+xQ=;
	h=To:Subject:From:Date:From;
	b=u/IpLbLVGSnByxYu8mu69ZFrj9COHA7QEbf2Tun1Fxz+oJpt9laiKqvVy2IzwPijb
	 1Np7fbUnyld0dgtEiBclgCoEga7ls7/4hDt9yLT+80nb9LX+87O3810u6Vt4D0s+I1
	 CjZfuAx5OmU10i219LZlNIMxe3E7GMvlAHCv0B84lKyNzPDxs3/LaFHiG/9/jr+IFd
	 JUS7k+2DGQ3cO4uVFAM6mLtKjagYwGBiA73O68puVEY7ZzaHtwOXkO4Kx5K7LnryGv
	 LC8JjsaHCz1K+tjA4ergS+CilzX7T2GarhZoX2vBLOUZxVIlWtnJgNUbBLTtC9BFw2
	 g+Fc7HJFOgt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F712CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718975357.13801.6062580489663618954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47cc43d3b4ff589a960944132af87744909dda0bbc8abd9ee4dcaa40b27e9fc
Date: Tue, 24 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727189753
