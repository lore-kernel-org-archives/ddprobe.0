Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A521C861D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762729194; cv=none; b=DWnDg8VqgkwgSu6tdOo1w9Ra2xWINH9aR6oDJ8c9q0WfxqkoK0pVw8UpbMkTrZadlpodStPl9LTk5u9sFCItTMpZgeTyA8wcYAXV5tBey13LDfwG9J0S6TxUNJJd82mqIFK0XeraTcsTpvSoCoiLDsI5WviJ7Vx3Qum7YLaRsss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762729194; c=relaxed/simple;
	bh=9IOjLUdLFKDRLvQQ5tOmXGP/u6e7xQ1fbtoZlEBQCr8=;
	h=To:Subject:From:Message-Id:Date; b=AZEZZLPXVDQhXVqPJjWGccI+XqTslzhMTsgq0+UxXpqzv8leuE281k2gq7FZNotW8japjisCgjRhvfJMzfr8cWl4I7B0at6gbxy2xe7zU3HONRoyYgFreBYSc+2DuaBTS2AtQx5WdKBbZdn4w8MOJRY/8AXOEyFS03RF2ZlQ4tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECMfyPYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECMfyPYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D86C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762729193;
	bh=9IOjLUdLFKDRLvQQ5tOmXGP/u6e7xQ1fbtoZlEBQCr8=;
	h=To:Subject:From:Date:From;
	b=ECMfyPYl70ti7DOUHUql3DnVRHesuBy3IYo+0tcld/OdJ4apdq2ApCfc4LYzUQRER
	 eUzLQO7LPu+zSZ30q2XEw1z17hXX0U0/Ne64lxjWCOPiLYBPv0t9CvjLBe6fNcZsyk
	 9anuHXO82DI6wZxX/Ks9Iva1Uxpkto4PBBOtPl5XMfEtf522NKdY7UP6XoXHKb/HiN
	 WRjHXYmjE5gl0PBsUTrsql9mHtsIDvz7AzGaNIvPfM6ZwjIpGfGB6mX/bT/dCAGIIL
	 p2NiENRplSA5x1YDu7nYyrnOV6itp4gaYmKpFobtSPbfZeht1HmU18pgf0Su9tPIaY
	 FKNbv9Klk1ZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E6CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272919357.26317.9588979191983199548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa02d231d25b438ae3e77810e4e2faa9c0d94444540f4cf90d5b1ee1c90dd3fd
Date: Sun, 09 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762729193
