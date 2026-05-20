Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D81B30C61B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779292234; cv=none; b=t+o6XsA/Rl8cbgaNFaDt9Q49dZI4U0rIS40UaQ2RiNmSzx7mmcrlqgdEI2c66errWeNidAPAjuxt0GrOvFzBE6H31ymk7hXHucw93q95Bh1zhq+KfOgb8Kjuf0+9971nWaH2oItnl6TvjLQ0uzDWMZ1Indm/JqjWUa3MF1eJVIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779292234; c=relaxed/simple;
	bh=6RVhG1rHSPfZMKev3fqm32K2fuKj+PzU+F7XH04Ye9w=;
	h=To:Subject:From:Message-Id:Date; b=Dz4jFeygeG9XSD/bMFeVvdLjvEc5Z2bPhpqyNga0KVVf+dU8yIYCeH0Vj8vnoENCVPufasRONF/zeMh8Zht3LJylac3hvrP6onQFxRg9hKBOybwG9qXD6QEtAPKHYu2JoRo9YvQirn8tm2FUtxL5mTapjR04Y2GAt5qHB4wNuMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/UaIlZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/UaIlZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81FBC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779292233;
	bh=6RVhG1rHSPfZMKev3fqm32K2fuKj+PzU+F7XH04Ye9w=;
	h=To:Subject:From:Date:From;
	b=B/UaIlZIObtzPwutGNFsPCdWmGxR8/gatga/UVwTld6+QxuIlD5vVxqN9fwp5p3G9
	 wOpL8UBvI7+avVIPb1laGHa6yPrlgZfPK11UWp4wsT+pq2eKBW3QhLDHPIuPuXqt4V
	 GmRjFlyGpKA3mv2pGOuyX0ezGfDAoPcyuIOot0kNEf6D1bCuR1naIy+5njsRh65RfV
	 EQxZpykH3/tnZdiZhY/cyFXCjgGsag1oO6uqCrskVVGESFeImSBpOWQ7paa98Ao+ZI
	 Xwwc9X0ElJvqO93eICrbsskr/dpygSUOs+4iCcG/SMtnQq6BJ/sTlTZe9MNXDFU8UN
	 Bm4dD9f18Fv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF40CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929223369.28007.7218587480088567567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3ea44b654fcb5efd2125602a56b1e6f4ad00dab3f89ef819dad557c0312384
Date: Wed, 20 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779292233
