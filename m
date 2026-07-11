Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D4221254B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783808314; cv=none; b=qkOLS4+LzeaZ6TkPTgQKs9/yq3wstQ0m96y1oqMV8JuMrimaouyUn7Yg4RlsOk7mFW+8lRiQHsbxU4x6Yn3iey7DL+5Z3HiaCn8HluzORYTvIk38jiOJlBYxO01XJ4kYhIaI0cVtv6CxXoOGlKVKvukSqRV4MFnJNXokQWaRgTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783808314; c=relaxed/simple;
	bh=IHqFBdynXnw8phgBvJlJcbJsLi+nQ/V8dYx9eV9MmSA=;
	h=To:Subject:From:Message-Id:Date; b=GjpL12TZUZUrTL/cO9Hfs014rexUgM4AIabzp3yuiffafHPtPdpXAy6DzZEcVxUnnL8cr5nUFy/O47cPvAC4NvL3cJcN7SsX+NKubxbgDO/HxO7TXna58ZBSiQLy6mzCxP/pHgj/b8KKDbtCOJD/AlSt9IihHB3mfIGgwiWLyU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMCHbMJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMCHbMJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC648C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783808313;
	bh=IHqFBdynXnw8phgBvJlJcbJsLi+nQ/V8dYx9eV9MmSA=;
	h=To:Subject:From:Date:From;
	b=IMCHbMJI6eXZJ1jAmX0Yk14fhCGWjXYu1V57L276DcoKM9JlF+iu3c3ILPMaklf3b
	 2LGe31H4jIhHfCiRBsvyRaJ83iAZSwkQ6UelHVbmFqX+JHxmHOwn+tm60ZsQU1jp6u
	 x8tSwJCwC98YyFt6wtdWA6+0v9h/E+cUqdrGPTzkaeNEj85z2Y8YU3IZmlc9ZPbSYK
	 MLIVubZaia4Pk51Zv/xScAShEfrYTE5npvEidBwHNnm547jp6ch8kGjSUNMVMcYRYV
	 2vTZKo4coCzZY20a1OC6hWhffdBDbbQoSVLNefeqJtsHzI0aTN6RvII1i/Y7YDj7iK
	 DwotuYZr07ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB4C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380831368.15546.12746298218428229845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab12920189d282bcb83932d70ec176b9f6ff9b3188adf302fa1d7548315400c8
Date: Sat, 11 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783808313
