Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACD2179A7
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733605554; cv=none; b=UTVg6edos/YAFBlzY7yXBpdNOgy7e3OxeInQ7+t8bftEqrGpo2gqGlKKUSjLPPOfMkm/IIyhnIHQF+m4+oq4Hb52sjtIVFEoAU0xrcq9weQMEkT7JQPOHiN+OuG95bKj0V/fBIis3mfqibvMF2XnR2WFL34bGg8WU052xVbwrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733605554; c=relaxed/simple;
	bh=igal1Vy+/qqzJtKFG3cAXzp8FdhbvyENhIqbKf98oZU=;
	h=To:Subject:From:Message-Id:Date; b=AZAhA5/imLu7goVCq/XLUJUahlwsEowM2/TQaYEYY0/8n36YrEAfyt0ZAdrIbt6ORNBje7uLJEDy+c0hWaQI0WRE15FU/n0pZI0uixgnxHlTex5/neQONCf6Tf10vftYTEZTjEX/Pr8KEn2vpRDKkhMDawQoLckZoU8uaG5fjTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk/sYjrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk/sYjrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07C6C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733605553;
	bh=igal1Vy+/qqzJtKFG3cAXzp8FdhbvyENhIqbKf98oZU=;
	h=To:Subject:From:Date:From;
	b=Zk/sYjrxdfdQqTi0Zl/4pdQxICGPEKHdOtZqIH24XdFgY+1Dg49lfZ37dLJTFbehK
	 38i/gMbXZB8jDUKWirpWi5lZ+DshpLecMhCAw9eTrD8CSf+V6SyJNzOz8vXcHEiSme
	 XDb4hVZ7Y9s/u4UBR6rSAq4couhtQ5vzVIGWgEhRvEYfdn4ylCT0Of1dy59nXyT4Ao
	 l6PR5Lw8xjVoUr/voTbBPG+q0m+ST/332subxRdjRBABjQ7OsgtiJGNEBelVR2s2/J
	 PyDX2B6RP7dHdnHZ/9CdAcHZSZX37zZ65Xr4mqB/Jn90nFKizQOqx8uOVM5Q8HDdwa
	 sZb9MKDYZ5gQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E048E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360555361.26918.2980213060321203293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b4032d2fee513032742537154b655e76159cf883e0469f8c7ff8c9d34e65ed
Date: Sat, 07 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733605553
