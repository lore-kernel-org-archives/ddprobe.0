Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD93215771
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743082194; cv=none; b=CNjQ4XcC1Gf6RUojkfk5PU0e2Xb+P6uQqIRM7egw87LGGjZ1lIwN7xdb4+YeU2Oj6FE2FT7ju8oau8UKu3Dih0iXM1QA6fKRpfx2vuXahekj/S3F7kHO6wSJUvkkRQTISNYWcF9kJNALr5hmjZundtuXjgy2uBU+sHNXew8U5lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743082194; c=relaxed/simple;
	bh=UCQaqilrl3yFTs349oMnx90Tc4VBAluR5N0UaOlnp9Y=;
	h=To:Subject:From:Message-Id:Date; b=flOr3i147Orl4tIdRRduORbRoXe2jItsTRLwdtTkGn4jR56q2pj4epemU2QCKTJOTxAcd4FmmNIj0PPDY998ffTcTrVpqOU9GlQUOHcIttjGV8jmdDqGaq2uNq5+8UWIFMOmkhkr76jh17XpLyoQxpotVLr4NhBwrFSyeBvOPn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=si6S8nCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="si6S8nCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFEAC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743082193;
	bh=UCQaqilrl3yFTs349oMnx90Tc4VBAluR5N0UaOlnp9Y=;
	h=To:Subject:From:Date:From;
	b=si6S8nCjWesy6J/FV8JcMW9BWu8bp0gn4l1IoG4kHscrKoXp3zPTw/rmLKli1RmB7
	 I6o9oV8ihJffIiAzTmYckiB5nDKKkgHAGBoPROTpyawfrsnA8Q/Eu4ZtYuwzw3+hJS
	 VTWAHcuRoDXIl/+R/8zjiNKkgr2LtngvmYTLiblZc7e/EQtvf8LxJhORbNo/e9+DyS
	 BLkQz4nzFiJ94zaTiEXNUNi7f0z51UDKQgYHFxk0+HyOcgEFoHc7r/tpWwim5uCLdB
	 QJwYp0XnapGr6m0OzxZqG0J47biwUBinAyQBg9SXODiocFC9gMmK3dMObPxdlPxHvo
	 c4V9P41/+KT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA6EC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308219363.7738.3650870653623702721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc93677411bea58dfa82511a3051c90e1ea40675b1a014f03cdec512f461455
Date: Thu, 27 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743082193
