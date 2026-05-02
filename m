Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1035F22A7F0
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777729054; cv=none; b=X513tzgBDxqtzbZINvTQWRhB2CeX+FtL1/7rqg8WJ2ohSjkYqsKIfTo4ehNqXmKR/VemHQ12a0NQkthfTY/nmhskTkYQrWFhiFAWV7NIzFgHw2afDb5c76GCAfN5w6JuUG2pq++SElwhATxCBkLLBuHCPuvITkidciuOwb8p+vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777729054; c=relaxed/simple;
	bh=2inXZXpaf8TV76IePYIk10jw6FBwmk70Z6qItbhebr8=;
	h=To:Subject:From:Message-Id:Date; b=cCZzgAI8p9d1NGoE4AdvL44ItVLmBqE9DptGqTtipMIVFseqntWEXPjSF2QADk/ojiXQiZYDhVLx7V8tUXYXDIs1ikXvkVZtDoulULgzsCRrq7EyTlV7H7mmhAWtoG9ViUySaYrmMLt1da/lNL9SImn3FzhWXtrXeK0ZWHj1QxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekpWteul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekpWteul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCC7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777729053;
	bh=2inXZXpaf8TV76IePYIk10jw6FBwmk70Z6qItbhebr8=;
	h=To:Subject:From:Date:From;
	b=ekpWteulSkIkNPdiL5IhgT6MVenUAaRUEUM3byjOer5OvoJcuyDX2yL6x/p09ujzQ
	 B3IXPicnrFKjgpKaluHBdqAJV4kqSsUF+4p0HA4XqAPF7v0GyuR09M7IGBTDfzfxnt
	 SVJQwgpfqP2EkAsE1fCsiLF1562czmLYojBWkjHyDalacGARN05cqHH48mSMguIvqq
	 YLun/QrhyrNZTCYPyOPuigHBMCxna61HoR+wCWoR5oJT0hclItmX5p7iXqOVdIv3ec
	 HMqsFh8JeEti6RQhWlmr7oxHtU28UYjzfeFYfWoIoyLoU3KgOmBBd87bPLrEUg1XXU
	 YDQ5kf6Vqqs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC08DCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772905368.28786.8700917420025024307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d9cb1c03a3e9d8b3f40f8633ab4f738970b6f7fd1875f7b71d9360d80ac040
Date: Sat, 02 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777729053
