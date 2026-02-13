Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260BA33066E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770971694; cv=none; b=iFU+Kap7JlA8MU80wsB6um1sitk6N9YSny+/3mfL3qgAQyk7xVfgISIC2nY2BB5YkB2QFICk2YZGTUrdG6hQVFBGC6M0nIf5Nz1u+p/UZLA163rfRAfDVgM35cuHC1W6CrexxoNuk/h4zexCWZpoydifr4F7dqRxI15077Z/2b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770971694; c=relaxed/simple;
	bh=xNwYiFETXYx7Y+WbLOyW7AA7nxixKT6XFBm/GHY605k=;
	h=To:Subject:From:Message-Id:Date; b=OcoQApmAwStMPs7Vp0Fq4Ln08jWg9bWIK66NBFCxkXov/PzqsOpCXcmvTHBMlaiL2+KvkKXC2uNAu2ztmh1/TfZXKhhG6LMP/3BGILLrNrXrpj1Vq4hdyCcv43lLkiJ19vIx0nUB3kV/kCC3JGx4D29HJwlQjAUhdkq4G2BT1w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP43443o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP43443o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB987C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770971693;
	bh=xNwYiFETXYx7Y+WbLOyW7AA7nxixKT6XFBm/GHY605k=;
	h=To:Subject:From:Date:From;
	b=CP43443o8ybd1AntsHmeUFE6zAMkEljnrwhYIFA4i4li4ie5Z0Lnxy0s4YFJ/JtB/
	 xcL9Zyl+uw1towHLzHjkjo3K4VF5lwdnvFrWQgtP2cfzlC8Vnc3tFG+umdEdR3uUs3
	 mnLZuO78+QmfEiQe5ks632fuOEDmZEmI1WQ8D8XBi1kd5yo9I4svG9YJDmKkHwXgPD
	 4QE7As9szgRCrBujrt3OzXfl2omE+AiGHZ6ZqfLy0LUVxc9D0tRr6Rrbd4tggGl8Es
	 uFa9+AvDUCwBXvrbKi459eYJXyrftw66ewjVSakWvrUi3HFb5qEXkXa0fS+VEv4DKi
	 EL/C/RPh9SuaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2642EF48E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097169364.2393.3635907288904139477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004ed4da72392bc8748dfa5c47a3057ea1e94f2527e8afb0cedd40fb44fad838
Date: Fri, 13 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770971693
