Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0550C53B4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706317697; cv=none; b=LlDI5UF1O0X2Wsgdsqkz5SDHsKHTwQDFAxM26QUzyrhT6DgDAW6a7H1c0lHoFKPUxucLP32pFn6YSC1/J85RTGueA30fkd8LriAYLq0YRrx13s2Vv0s3bPGpovu9JQ8fwaTTH4lFaMyg91tMQpfK+5hcE7VM5U1Nyzlh4kC3sUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706317697; c=relaxed/simple;
	bh=2kAbOLKsa73w0IrfycuEWQynR468NcJCuuKBSrOAm/Q=;
	h=To:Subject:From:Message-Id:Date; b=qWbw4Iq5gqNC43S4g+9fXdlYIEE6ozxJRytBQcc/X+1okhyXgrK0oEFJ21XOlNyP9ypx3Zl5I67bKD+0RqYMi/XNhyjI6rc170Alqz1p/OeG5tqjrnxMN7yEQdPdzv8vQ7++JXBkAIgXp/8hTW9tKHCR9Ts0EH7qHIVGBgKly/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhZkFiXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhZkFiXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6FAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706317696;
	bh=2kAbOLKsa73w0IrfycuEWQynR468NcJCuuKBSrOAm/Q=;
	h=To:Subject:From:Date:From;
	b=FhZkFiXHw14Ij7+W4hb85uUiWlS58jM7DTosfhG6xCRpwquomfvUYgi+//mkdlc8G
	 K+scJ3F3ROZXMHX+FhzqlFxexJUcl/kzYx5yQsnNLrBwMLFdH1PZ5gkmBTVyrW1TiS
	 UlUhmCRlVLWnJiYskLi3IhkD103tpHy16664fJLsCVy1v3ao4rgboktmUfpRDLY4+N
	 AW2lpqst5K+tHoVkBoVp1vKcujl5zHsZO4n1A9KvkZqMhek8gwwltErF1wS+IMl9DT
	 KrwXc2Acj7gAW+6U7pg8O+gFB0t+/5rjdpGTLiCKJvNPic0d2LGwZpF+fWUS7yBFu/
	 Y/eoQi8ONv73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64733C47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170631769638.3224.2793409709838114061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49242b89d9f2e7541937dc2dec75dfe9b7d71f64490e0e691191a163196a458b
Date: Sat, 27 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706317696
