Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BE3F8DFC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849294; cv=none; b=uveu97uGlRlvDxxOmJUZqI0cRh3tZZyUU7G2Li7pow2b8mXHyXHeNySEQiDlvIN8Vuxzpd5QUkwJ80CbjP8b9Vg/QTKNQS6fqi1Bo/TtA2e1FVL2kuLJUTF5NgcCeCBGK+6e6xUBYKsurfPe6K58bRW9CZNnp0miWjChIUbd6aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849294; c=relaxed/simple;
	bh=X07LcT1NrZNXSj1wfqVE0wD6x7Sr8hy3p2lvNV/djhQ=;
	h=To:Subject:From:Message-Id:Date; b=biawgjtIMVNR9N+u/6/VD4hbeF/zFRAMy8s6e97oXf9AmHAbnVsE6WwFRgVXHzIaCilHPPx8sx3We03YGJWajtKV+/qYSFZicxEluUSHfSNAcu7qNNmPsJqgyR6BhUWqXrgh8k7s+mmNW3NkILyUTzEXxbJcyAvsNk9ko1qbjsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4t4s9Yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4t4s9Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC24C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773849293;
	bh=X07LcT1NrZNXSj1wfqVE0wD6x7Sr8hy3p2lvNV/djhQ=;
	h=To:Subject:From:Date:From;
	b=g4t4s9Yg9CubVOzbd60U3+amHrinREsiFe8kdeck0qboTYmJM7HXONRkgyB4zASkE
	 FTSdrePdrki1YYbFhrM/Lro72qzdHTFGYtCfMpZsfR3zT8Esd8EFqU3LLuI6zjozRR
	 ln1iiCtkt7mkdTdlcRXjuj189leKXdvVxyVBKsQc1h7YSwRh0fzUyMQFDI4gdAwVYK
	 TFiqkfv4Tj7kMqyXRmbr2WeF/Bw6qCB3Ua6wgfp3M/+mR5md/3poROvApCTh+/nOuI
	 RMLf0C9b2ZMmyvXkgHf1pNnEPiWvR7W1QxATFw7rzXEWqwgUFLyKkxSd5xyceUidic
	 Rn6C+Y/g6HpMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049E103E197
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384929358.307.9641820869279012141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ecef292c54bb965d51b9f202b6c2e558ddca959cae572f84595844037f062b8
Date: Wed, 18 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773849293
