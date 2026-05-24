Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256C163B9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779608554; cv=none; b=Y/CAERdzANCNYotWvx0lGCrpRRJ6Ln2ephAFmoiGsJiw2UbDvx2n7Wbl36+reuZBXeVOyG0LDk7C6YQ3e3Ee2q49XwsnBHWKUyycc6cZ6rctOfjxyXPuBRMBqLtd+F45NvUb12+LgD2eY9ReoSVAc8R8qZmaJoWGp6KwvYwDLc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779608554; c=relaxed/simple;
	bh=rZISvSbuWKc8YPTtRHcwq1jjOlR7T4IWn6p5bWkhjWA=;
	h=To:Subject:From:Message-Id:Date; b=PvPAPpsJOh/y/JPIJV+jKdfHMWu+W5eWdviPq6mlYDKJA7Q663KdNXrmMAfu4svE8z3FCQnQkX7v8e2fL/fnCRbMzThGiQgbTr4ZRKf057y8mZshZhxxZZPnXf+7mUeo1eE7nvT15tY5pcx283B/wqhy6dttlNCm2GmvtYQxi5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKVZXC2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKVZXC2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04D6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779608553;
	bh=rZISvSbuWKc8YPTtRHcwq1jjOlR7T4IWn6p5bWkhjWA=;
	h=To:Subject:From:Date:From;
	b=YKVZXC2jCbsW4M3EhUPUx2fwM9hlg+4JDe1lx9vWaLGQwCuL7WTpt27RhV3u9/9c0
	 vW6YUgEv/K1KJF9yvt9y95W0BsJo19dlIk1uUHGCNInkoU7MNoGfmgINYE19PfimPp
	 BpRllUbyfnMrXz77zp+vXdd3o4dHzlYa1N9VexCr8uV5WQtBYT9fcIxRDa3hr2J2Tn
	 X48tMa6Bt8zBcqhExSO8gK2Ua20h63OwZMeV5pFkbH9zwrd9Cx3pwhFnH4Nude0FDK
	 DLHJkdLrLh4eUX4tWtQU+Qb+WBd1xjUT/ycuK4IvTwnvtMtrtbOM4K1Ip/yac7dIWk
	 xsNnARN1heDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E7ACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960855368.22138.5317583999106594935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c57e656ffc5acec75c88e887d4160b90ab3a79a5bfbc3e41a6f85a6d2c43a0d
Date: Sun, 24 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779608553
