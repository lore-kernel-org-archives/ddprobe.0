Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFEA30C637
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779657754; cv=none; b=sDgkQ0HNc0anx9FV7RTTH58O+Xp1LkU2Opl8B/otWz7Rp4CaKT1JkkrcMDScwsTWBahC+GSrfs3E4uHEC9nNU5TBWuIVN3ullC+sHUuA/JCDf+YrEXLoqZxU+rj7JUy3WyAlmlzb5k1k4b6bKjAvxWVzhjQGR+pxFpIOwW30Vqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779657754; c=relaxed/simple;
	bh=6T/Npdcz022UqHiIDosQURSYToRZ71XbzZOOYO+tzAc=;
	h=To:Subject:From:Message-Id:Date; b=GUNn9UdXTIUqfjS3pR8djlqxRp3fQYmemJcwVE3ulY35iSjFVYBe65VX0T+LMZs9/bPb+FyPotkM7zNzjHSjYrEL62L8zjRrEetx3X78PfTHuvvWFn5+tuJqAJOH9IR9Tx9+zYPw9D3Glmdq8/RGqNMpfb0/6ozjIzB2PzfkKBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC+JKhDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC+JKhDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C49C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779657753;
	bh=6T/Npdcz022UqHiIDosQURSYToRZ71XbzZOOYO+tzAc=;
	h=To:Subject:From:Date:From;
	b=dC+JKhDbeDiNpEm3ojwzCZIGFjfXq2xh+S6zNIDl8RiL39u1yh7jL9STRoAnHv69H
	 dRlqZZ76ZZQCHkyl89Vl9o43+huXRHIfvOAdGE+8gGkklGC0xn62B4nxd5kknb+hgz
	 Yrk6FHAgq9x1XswLTzkv0ZMzvCQ93OUpk/GYKadxIyKRjbQtbhyUO7na8yzzTgbqrt
	 yIzWWYpLHGU6Q1ofIFzym1Ye3ObfXfCSADrK1aVoM2I5G4eLtZafWf7EEMSqQ2mq5v
	 ou3I7Ratl9kPZQBzpMqn6aFEVRHDpW76JeucFgbpjD36l5/All0Cav5qfAArMPhSgM
	 ax8prRQtdxXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB19ECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965775369.11204.15594663689664277532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35813d38e094320713c67ddbd9b46aeb1edad06d5d66c06c30dd77948ab4fa2
Date: Sun, 24 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779657753
