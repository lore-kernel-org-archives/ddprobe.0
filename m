Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE297263C91
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760694593; cv=none; b=kp02TbY9gQYe0X9VPDvMS/f517pjS5z2dEfL1TyeomEZFmEk/IEviPIf+qiUXKzlCA8kFJtEySE5JzrrBVyOzpx3fL/TDklrcjngZw13d3gB6yLpWQcOEySilgWs+6rzB+xvYSAdltrqv6e1JwgxICYodArcCmx1CNOMz6Cm2Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760694593; c=relaxed/simple;
	bh=AigS/amFIwK6dAq2FsW+5LlHRRqbS4gLWrCLtbuSPmg=;
	h=To:Subject:From:Message-Id:Date; b=AaPbj9Ds3lr7/wSZ/vIeQb8+oJkENBgzZEWffrQjMod9YixyPRC6c3CgAf7gBQZrAIbMu8/jwDK+TAUPFvW3dUBxtnGQx/n5dP1wlRZb1E9x9ivHZoUjloQA+Fn5VvAfy3EbvQ496gPkY7a4MH4uZWFtkzsLnISaLaiJkiDaNe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ax3XcuAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ax3XcuAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF03C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760694593;
	bh=AigS/amFIwK6dAq2FsW+5LlHRRqbS4gLWrCLtbuSPmg=;
	h=To:Subject:From:Date:From;
	b=ax3XcuAi71dWXg5OGSm+q6BhtX7WP5h5nrZ1czqG+gRhKx9LIoKYKZP3qP5MofOIJ
	 U1vnvKf/ZjtfzsBU5643LsADxdGqzM0RAVbF/7AIG0TBeYA/Etya6cqKKtqaod2cjG
	 2lcrJIQNW15vRlq2qL5oCj3ObdC0ju3XKVrxpPliSDVd6dY1wyDG3KgbR5HtPXmSkp
	 SnuBEE41WwxK99BjyUO5zKEN5Fh2lL5Y46e5rQQKye//40qt7OfIKtcYcG7IX6Iyjv
	 ENqUKsxWlB590NfSjzD0Th/7MIz2kq7L5RhfbJwdG/LgSW98Lb9LkUHfN2cesSi8B7
	 DdpbgaVejq9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF10CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069459358.20264.8973023925327806524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94d2d99d3677542cb38a93384fa67a400cb31ace5585f20fe68edfffc2c7e0c
Date: Fri, 17 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760694593
