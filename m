Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4215149620
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784410114; cv=none; b=NeMxZiYlO1b0xKg1FKDtyUYgZKzCLENMbknkWQ348UPawQp5KftzEXSHm1LxD8jFz8ZFSiShdGPtA5433nd2XpJlAki2pPCl8nLYVFkR0g2p0KD/iVwyDFNdGfstCEx9vx1h6JoKMwSoqj6nglL/8JFUgkEs9hkjzb7EwMAs5vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784410114; c=relaxed/simple;
	bh=1FHPV6Ol9GHc1Dl7FrsTwQguOrG7XGm/ywQaMv6yfFs=;
	h=To:Subject:From:Message-Id:Date; b=cp6xaE8HDNCPnRUkAhokbh1hotpp/mLJ3Q8isv+4mPWXCYqbPY1ZvcrDeg+702FH+PVyWNjA22EWb78dhpPKde6re4yNe9S5vUXXN5ga+Rw7jXnKpD2ZBgvfbjFkxmaBBWr+xgDtL6inj0MFtrUnjFt0Aq0U7LPFCyKwucshjxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3X5lZ1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3X5lZ1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C9EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784410113;
	bh=1FHPV6Ol9GHc1Dl7FrsTwQguOrG7XGm/ywQaMv6yfFs=;
	h=To:Subject:From:Date:From;
	b=q3X5lZ1cbHYn87/uaL5ncl5DYHI8T3g5A1t0iMlBrwx0iCqcGv+dHG4JSNeum77IJ
	 Wus7jmyb09WrchvuaNYZrXGzAdg0PQ0MyklaiM27Hy70ZG/gahWaGR6ddy81tO0lo0
	 QKaLz3KYuADRkAf3UczoFLZeWAzVee90cwTGxTmtJziNqxEt5KPP/8JO6zDkpEPgGg
	 AjJ6RVJkgrEV5NvsTvEeAtqNyDocvnr0zfQzV/0WRatDpZ0fWAehjocJiwQ2gyi8la
	 khPC7if1qPCJu+9AoC4holWjSYoFFuH8vTn5RF6eJrmXEYDoEn9tEvHS3OnAUzFe31
	 2TTzaU7w27MIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154DC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441011368.27303.16397858939459033115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c80b59f243a5daefec6efd9b3c8e65825d40fa27f853a99dec3b90e4dcfc65
Date: Sat, 18 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784410113
