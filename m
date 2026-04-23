Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276982BD01B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776924454; cv=none; b=puzrp9AZAKCuPtAVBgZ3eUOSeUgceptzz5lhesbE+JHyuVgxdBXBYYBNPbJ8KHcTxGZ3qUzEsIubvYW73y/xibAz3+9CbpKaE9b2f9fd8xhElLKAyjH39X5tIeOYx9+9GVPAl6sW6TdrbCbzEzKGDmCo7FgQ8VGgPGXSkGEiVkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776924454; c=relaxed/simple;
	bh=wlOACrNV6R3umhY2/5EbEK4/DxvDuZzDWzrvH8orPXk=;
	h=To:Subject:From:Message-Id:Date; b=mVdzCJ6I21uz60Hqy9Le7E/jDIQuroi/8LdEBFB73wYSnMQBP249QO8v1HMnN+zRFQ/Q6EbUyPIjn2gOMxLbwUNq7gNazIAx02HJC36fOfy6fy+5Iz7lKnw/85elkTgm5zAmKyUZR/K113iunJXkN7Of1AHvYZgjKL2i9Abr3Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqD97ecY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqD97ecY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0987C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776924453;
	bh=wlOACrNV6R3umhY2/5EbEK4/DxvDuZzDWzrvH8orPXk=;
	h=To:Subject:From:Date:From;
	b=CqD97ecYQ9YsDviKPAJFL8qb5bPeD+rHYkO/IZfJG+J1M6mAwVTODVbOJkk/9YHff
	 G7qSsBoisN8QD8ANOpnBbeCu9yQ7NK4uyLnse/NzZp5IVPYIrQP4NCU7OwUbUX19nN
	 fjaWTr1CGz6MMW2gPQ7XPZBUC+aOFr+pQ7fZ4+bO+3FPPFSUOZE1L86r0TXOIuJwaQ
	 K6yZ8NX4CNhg1GRcobt7c/0Epes7wJtb3Xy7akEGrWfbvlcelRsbBKHKaWBQ1JLf3O
	 uTbCXBi2uiixi9gHixSKvZzqXkhDBKPAiVAA8XITbpFa514uWcWirN90uvwTpGyguF
	 GdBAruMU5Y7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7F0FAD413
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692445373.11396.13067100749705199566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc05715eb8d06d9fe9223d72bb4fd0e18b9297e39f281d0285c90996c924ff61
Date: Thu, 23 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776924453
