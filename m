Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A08B275114
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756551596; cv=none; b=ljIPxzl1RBRP3IewUBYR2aP1j3k+r31L7qjJJl8FJNBD5yhKywUbqnanerDDRQwAQ/ELQ4jK5YUCZCuG7RlVT3G4KFBUL3QCXiGo/AK52i40oaeaMoUd+xD/6teJw8LkZ1zhWCzQBpwbyGHWxND74OwLrpU3/PTQwDdU3sRKjD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756551596; c=relaxed/simple;
	bh=GUsgJGiYqypfHkCN4kkYHa9zmVbbnLqF/fPm/vrpuFI=;
	h=To:Subject:From:Message-Id:Date; b=aSlPT/8ExZnQ+EwZsFE1oTQXFnq2isJA6s/qUKLpVD94Ho+FF+W7TaMGkgCm62x1Bx5bSh47tm5Z8cQatkNeu6B1Jf8oBruAp3Mnk9c0HYKHJL2Rj54jgAmUmLwWuS+HJOtcPDLHOv688o6RMx6iEz3VATKbq94dNbWA7EUNBOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyRdopvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyRdopvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B37C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756551593;
	bh=GUsgJGiYqypfHkCN4kkYHa9zmVbbnLqF/fPm/vrpuFI=;
	h=To:Subject:From:Date:From;
	b=iyRdopvynwoAh8g9ebwgiAIOJSevBuwZK/Wj0/In9D3ldmKvBj2x6ZheBr5R301A4
	 vRxdKjP0eUrIvb0M6uglurticQVfYko/iL1tJwHTE4knrE3liGDg0acWmDkkVWQMkO
	 ed1RlyG/5qZmi1I2g67sjLqkiefrMbz/RZyRJ/KbFh9dTO5dXClieCW5+LTuoz0LeJ
	 1M2rzcm9ES99WgyzlrIAdy7McP8U+Za4I8OfkMFXhRvg8eR4XpyiK5YGOfTE/F2W/J
	 tpwjrAC9mKv9tgIxJlnsInRswWQ8kvl+3AtIs5UOvm1ialeWZBl3uxgxn3CLnC++i7
	 LBLEfgxBIZRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276ACA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655159359.18643.14534524395976645382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbf232bd3097d406bf4db7b7963c113a186430daf0d7f424677edacfa4fad06
Date: Sat, 30 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756551593
