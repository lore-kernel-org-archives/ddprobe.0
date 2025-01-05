Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F4210FD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736078154; cv=none; b=BoxOTGB7C8InOi2ZEBR3D9GLD2hjK3rrxte7O40UMEU2gE1R8znTpYgffmj/hbzTVuQlesXvvDnoCSlTKvvDW8uVrOvI27iAYDn9AxtIsHr1QdABpViHpa57mbfXFHFyNYEjWpQSjvtZdpu26Sfi85gQqJQdgcX+tZTjKLrgAtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736078154; c=relaxed/simple;
	bh=8wTTbmYG2Ygql5zUpc4RhblugVXwuBzJv0LT0Xv9bJQ=;
	h=To:Subject:From:Message-Id:Date; b=rl+ANZFSXChPwVLtPipjntFz1q4yvI+CBfxeJcDXyuWDFmw4BNGWa9l+Ofczb+Zzdg+3JTYkAltL8N2+WvsDgvs4GeOfa4tA7yp1q78CMHwKVJ2Nfcds6UEvp+izjcRCqO8gIC4s0x6Y6NLv8Q0Bjazzlc7BBi+MsQ4NtNpohkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiNVp75i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiNVp75i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D88C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736078153;
	bh=8wTTbmYG2Ygql5zUpc4RhblugVXwuBzJv0LT0Xv9bJQ=;
	h=To:Subject:From:Date:From;
	b=kiNVp75i2GVKRMYkgjVnsHR3alxW/d+zmuxs3J+qxadgm+HkhjNkSJILLRaEu8ndf
	 RNyuDkeBiY/la6X2NBCbnMVL/ECDKzovZOUjZJtLNCvWToPxhAStiQ+TFQ5lvLGa/u
	 3esczD0gqRlk1uzl6GALqIONoiVWcYw00RGLUwMRsq6Fkxgx0oywg1skPFdJCKe5AT
	 wK0n1RIts3lAIl2OyF4cuOnLr9j955VgAPUgwx8Cu/0FS08oQDA7JR53l01bsEYK5R
	 5SxXCDfW8xE0H04QHmvGYSm2jWeYdv8VNCJIfzKBhiySoBo0Pb5ia8Fct0qoNeHYv0
	 y7o+FRLY/Qwkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B640E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607815361.20205.3289358867803800440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b717bf1d0bb745c14e495f875dea166d438d4e0f922f20299979ed35b98832
Date: Sun, 05 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736078153
