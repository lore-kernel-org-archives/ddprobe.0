Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43448175A9F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780811674; cv=none; b=pVlgfU6LiItZNHgNsx16oSoTn+AP1P5WFi89U+e3zt1It9zkubif0g7b7vTYSDS62hIxvshHxUxIxIOaRBw5GuurKwzEcFLrb7jxsBDP+BwvzTeqE803tc/X0hHn8SiqHvDAM/FKOX7UqSiX/vsfUgPIRn12hKO3u5dq1PkT7d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780811674; c=relaxed/simple;
	bh=KtV3DEprEhSMfpB638+89BToSEGiQYQsHUsVF9VhkO4=;
	h=To:Subject:From:Message-Id:Date; b=evsC+c8dCMpBfWW9Dl1k6I5twVuSS+E8V3JIDQXa7KcQQ2BNf5PMaoTOL6vBNcUYx5Pcph7NI7FZj7T47L2p84ONfKeyX++u6UPZzwqPXPH8+GBO2+PalLUfdn94ket33j7/6THxqTSnps3CNCo1VrM/WfWDDPv8sY8P8iaO48U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMp3JGos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMp3JGos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1929C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780811673;
	bh=KtV3DEprEhSMfpB638+89BToSEGiQYQsHUsVF9VhkO4=;
	h=To:Subject:From:Date:From;
	b=sMp3JGosjh6+XizwoYvbilRSslh2HPePZ/siQjs3/LPThR32pV0p3h7bmGLzewCZK
	 +BG6qElYfJeIPbc/EkRQ1DhaFBLnsMdWIDV7aOyts9FmbFGomhWWhZ0Zo5d0XDTP3S
	 zB4V6JVzKydWvByIbb+1SyGK7YW8dlxz14rbVF/b+60bwkAkE+JhcGnTHhsQ2XsN7r
	 XI5xIQKSzU53pAPiWBFQWfUcXQ0bAEdZyNzDiW5u4biZABihW8ccS4/QNT0mDEDenj
	 AzjURFh6SspZIHOT6u4PtW4RJnYLjmFZf1NUcAkdhdm+YWpa6VVjb8HqOmfYqXKFTv
	 beaWHFOhv+FJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB42DCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081167369.30463.7617147772798670912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ab18a3b69cf8bbd6097656911e217fbed72b550a187d7ee825ae9349889f01
Date: Sun, 07 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780811673
