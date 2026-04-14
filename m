Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380FB38F62A
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776161854; cv=none; b=lsZH7bgrNv3h7KxS84vhOQLBgD3hRYl3ktZ4PaZ/WRmR7asyAyW2AuQIoAG7f/PwbSFYx9C+VeJP0eZe52niU+TvMpqyq3O4bhWar/gpj8oWu5G2UpP3B90KLrnsrOztPVPdU8X7Hh6Of7dOaZOvrblNu3ckyM2kkLrQGGcnLQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776161854; c=relaxed/simple;
	bh=uCsobyJapK02ltycZXl84F5d8CgkZnyhfgTK4m4k8Lc=;
	h=To:Subject:From:Message-Id:Date; b=dVEupTnysqPnoq+g6UkbidS7oSqT0yNqVXrhQcnSFia3DEZUW/oILX0YeYd3/3JqLQ48ZZ/toc0GhZkudrDnvcwpOqnI0k6xMQ3IO797K/uNqwCVSH7PEMc93iYGrj60QR6brLVZpz5zL07DCWeU3v3/QMkykAiSw7AYgIKxAZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFziU0jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFziU0jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE49C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776161853;
	bh=uCsobyJapK02ltycZXl84F5d8CgkZnyhfgTK4m4k8Lc=;
	h=To:Subject:From:Date:From;
	b=GFziU0jEVmu1eo7ZpYvrNGGtWY8qp73VucVpX9kCZuEX+rvuVQ7iN0VZWXXsDF/ba
	 Q/+qsZxm6r3cSd+H9Wel6+5WQo1NijtYrrFCYCK4Lx4zkYKc2YZCmFS235N468g5dE
	 jv9TUDxmgOb0a7vUm3t02sEymjaTcdgrKgW4p0vPu823evpq9Cu10C1pTP8DPmTHcK
	 oumza2ewyqVtdnfhVW9ESFlDqL7j8kxCjSgseQhgpS1dT4yPKb5u5D8QwDTg3oUHno
	 bwe5TNZHqOpGy+vJ9MaV0JBwWHyvkyWf/ghgonrmqmyY04LYmIXvgfs+mgp9xEvuH4
	 KsLMr0EheCLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD741ED7B96
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616185370.29224.9111327989206078769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c38c9617797de71fe9a619894c6951ac08ebd771feabc9a1579c0760800bad
Date: Tue, 14 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776161853
