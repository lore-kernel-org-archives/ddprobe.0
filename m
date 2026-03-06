Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B4B221540
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772782494; cv=none; b=PcSkRZrHRz+PoUv0LdvwTbxPs43kwF+ysfG7pYM+N+YerBJD8WsURi70H/BeKuq/HbJQMT+/HU5bonkhpv9TKiQtyru1N8Ghcaq3hSWlW8JrDX0LNGjvJfH6YCWFSkZLFnDmZRhyiN18Mm5dGk59RYCE4dyL5iPgGol8A7ILobA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772782494; c=relaxed/simple;
	bh=ucJeZSJOblrLeEnGfdvZHZ8Byzz9wp0n6rzJdh2EEkI=;
	h=To:Subject:From:Message-Id:Date; b=J6BzgZCotGxDKpR/jtRzeC6n3pfzvf3DaO61UaxC/2UmYKtp9Rs0sZHPDg66qXthgkZsSYK2nGA9lTVa+ulX86y+3HMFJy1vwIWMjzfl6iISdhVpUoZgIrOh+uHbjK1/HmYtQVLyEwWI7ivuwoGlZljwGG3dBn6BoJXxOlbDKmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgT3CHNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgT3CHNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859DC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772782493;
	bh=ucJeZSJOblrLeEnGfdvZHZ8Byzz9wp0n6rzJdh2EEkI=;
	h=To:Subject:From:Date:From;
	b=BgT3CHNPkrSGgmXQFUj8Y+FFKpacmplzPIYsj9AXtCyZUyRtMfMEqH2i48Z8uzzyd
	 c5LICije2yluzDVTFCu/zmKCZ03d3GMyWRoLE2N/91cC+qbw9CZ2fSINrFgfseEn9F
	 9VWnWz/iFygsnERq/nmaVWWSiw+rUAA5TpFIOToN22R68mqFccSR9fCvIZFoYXIdjz
	 l78kjixMQIGo7emOIjyCeCTRnJPELfCczlH5nF57HJiKtRS5J1qYWuoIyNjmE22VK4
	 v0w7r3rs/eUEP+CVhCiHsTmqoJeJBcRm1TKOyFN+4t/TT2IBRi1CBdQyQ/LscsyCMz
	 zhsqW1/1J4ZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F06F01801
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278249358.13061.9696287860272883392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c43e39ae53606c5a298e9b54d37059473e0176edefc7ad9ab9e927e1a2ebfd8
Date: Fri, 06 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772782493
