Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FEF46BF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722111354; cv=none; b=g+fuukBEukMEN0ksR2Bd/HPmrbt5zVrtwmEnhv9bRc9xsFhltxjbiVhMuBve9mT683Op3L0Lw6XjPNr6frn8/KwgIwmnV+Tlyq2fBUOyy6gaFBibqroL85roLjxtUAbeJKi/SWgbYO0qyZSj8M/IQ20iq2yroGZOuQ5jL2nVXYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722111354; c=relaxed/simple;
	bh=2pZ4ml+N/w+lT2CImR/lF0Ox3FTttkT1ia5xweZjbh4=;
	h=To:Subject:From:Message-Id:Date; b=tRkvfAUlVWGBw8jYH8r/LUq5xcfjl9BL5ivhAWUuykYYKk9LDyp8IyKLxFTTPvCbQvcQOFb5luLXCvsKEVXZ1F2Y6iYjSgemFwnIw5F0vTEU0YOs1qdOWit8WrHEzZJOXFHI7AoMWk/Q6HqcI7QXsl4vRL66a301p+mlj6gadV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEQosvEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEQosvEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D3BC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722111353;
	bh=2pZ4ml+N/w+lT2CImR/lF0Ox3FTttkT1ia5xweZjbh4=;
	h=To:Subject:From:Date:From;
	b=OEQosvEjjlyS2udDdif4G7v7OixmwH/Ys3TNgVnVcQDjRkG0SOPyIHYT1t1jSC0Ii
	 DuwDEKHjhDnDUjlCTJlbbAlOC/rskVU8yAq6SuDya2Eb8CVJl4aG7tZxKkXIKCnmQB
	 B4ZxZFLCLC1hZoq1qNr4Ol4iWJtUuF1fj+Fb0z5DVTcREqkG24Ftu4J6alkcrcAMOp
	 wqV509idPBpdGFA2WK7Z+gVYWWnLPfbguppoCUznxOMiPdlUDR12JmohuWR4rXqWoy
	 eYW75Fo0Bvjan+dBjtZU+sz1uYzT4vWvGif53BD3aymv3uNl6vgZsnSDfJtVQRg1JZ
	 4MyIJqNJyoL9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06B6C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211135363.6769.54660654255774604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4927ff77acb4201d4761cc66f4fad8b610b3bf0777b2753395625d382567f7
Date: Sat, 27 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722111353
