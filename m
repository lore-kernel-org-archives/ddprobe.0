Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603D11DFFD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731657954; cv=none; b=S1gt3hZJl+GVqTFdDYBBjuIbxMFhK+0c6NAMqsXkOQGKFOXyMmzbRz5VTyitrroCwKdLuuIYfIf6omET5mQt76JKh8gNL95modcYWkzKmLsL8DdZ3QEB/A0IF03PiLTIahtl6B0yGEY5pF9Z0G8CTU9Je631St/SIddfZrCDg2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731657954; c=relaxed/simple;
	bh=rd2QGFk7Ox18fSVaP5Y25Ewx0BYNTC8qBJZZSiiQkxU=;
	h=To:Subject:From:Message-Id:Date; b=IiecLFhnR1qT0bCz9lyW2/838qwSHyAcq+DlC5ZN/BkEGWbP9Fzk65Z82igWGw17+C4CVgPSK+565xdoA1oMVebnv/38hIa51K7vTNHXwvQYu7PRI7eBb1hp1XfnU+rljb9fMxRsfWklzihZwcfUPYINLNSNiaOJe8fO1aBs0IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VObmhud9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VObmhud9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE974C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731657953;
	bh=rd2QGFk7Ox18fSVaP5Y25Ewx0BYNTC8qBJZZSiiQkxU=;
	h=To:Subject:From:Date:From;
	b=VObmhud9JiM0BUxGu2uzj9O67MpJznh1KU/B9DCjTZRLpvYkiGW7ERIBJ+P2p89TM
	 oNJgRsIgoU3Bj8AGhWC86nP5nzTTVt84XKxUvP30nHLZWhs5OAwjpuoB/A55smfuV2
	 dtcdX6JRev9g19OaaOtoqcFK6yl+P0haK9RnSf8JLDqx3IAJzWgbCjjW1uhtjlod1C
	 Q4ZmY65LBUMnh1HsZNAglhyFpLoSt0xuv396+85DBjW3X6p6u9DoF9OtwMRCqvYJ2B
	 +41D0mTTcvQ2PZITd95luNgzm7DAlbqd4D6Hwf+JFCn3k4qum5/d/I5MtIzNfaDJGf
	 CkUiNMVBzgo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C24D6DDE8
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173165795360.25419.9682672935070050386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935e322bb8c184eebb674f0e5bc392f1b22189a656bba832216ec9763df25030
Date: Fri, 15 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731657953
