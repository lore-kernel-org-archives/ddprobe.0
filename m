Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0F1D5160
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763830314; cv=none; b=HDNbPGAPQOKKmkv++6fz0JUULm+ret8lnLrIphWyJ/yPPNUKLe80JthPSM31hm5OzEENCJEj96h4h9pTtSoHtz/ZPHUdbZGJ3NEF7MvTKRir6npQnPIUIdfu/KMNB/YyGbb7pByo4qlXE/I/7EH4Oxhbuu9+As6Burn1ixS/nMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763830314; c=relaxed/simple;
	bh=oX5kGbVcMmO7JuKo19VoMywCN9rh7W0n3kfi+bS30Sc=;
	h=To:Subject:From:Message-Id:Date; b=oyscpZG9+uvdYe7FUntfnHqiDsQnPHF0iiGPjHu60FRI+c+tf+F1yKXuENcIeOTDvohmSRJmtMYPOQttjlqfSpagNJ+7QvyjvQDNgbTO6+Xs8x4/Ru13s7x+nugfG1BEjx2wcbFJGbEUOZHr46z60krAwXKCQHNGq6b2RYzhBM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyo7WOtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyo7WOtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763830313;
	bh=oX5kGbVcMmO7JuKo19VoMywCN9rh7W0n3kfi+bS30Sc=;
	h=To:Subject:From:Date:From;
	b=lyo7WOtCOh5Oqn3w6Rn0G8+7gC/+D+QcM+QlhVsA++IRVXEzsFYGcemeHlXf/xKff
	 Qx8bRDMKDULNnOe4T/NJy7dbbbH0zek8mbinluARFWxpZs3eYQZ/t5hR1JFdk1SFRh
	 hWE4RS+XbllQZUbu2fYL4wyxh62xPNKz6/C62dNq4hTs9V2uomW2n/CFTALi42NP9p
	 /Ie7Wc9jR0upeJKCkB/HhCUnZKEa7Mr34yHpjlE576wxWySBhwLjExhHFkjVTiOEjK
	 pezjMVdfUQgf0wRDbQbvAcIPzzMAe8VavZVcucVTOIptbozwTlUcH8ZC25v3tq15p3
	 e9EXlvDZRWbUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF1CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383031358.13110.7265234034829697749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421ff2fea3b5249b35586c849c29393ae036bb0ba58f28bf7dfebb549a879c25
Date: Sat, 22 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763830313
