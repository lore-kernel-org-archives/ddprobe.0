Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926D3112AD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770185034; cv=none; b=E28YuX9ItE1H5U4vMnNsFsQ8EDYfaHvXHunYn0/xE5Njg3v37o5B87H9FeXmEn8/7btal4FboJ/L+k/CoGaW+xVdmDqN7NR+YsnsE0QdXP0QHcaojHQJQ/UviPbo9KxcrUq3j+st8hG5mI+g63HL66CqzCjL0n0vCAkMMsgJNYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770185034; c=relaxed/simple;
	bh=0AsUZbzKCPZigeuADjKDsEkhOFa0KKVZGahzepJZi48=;
	h=To:Subject:From:Message-Id:Date; b=j66xM9rGq8AztE08jlgzxN8hmFsfJqS1UL1uAjdssSCVZV28VmYP7F1wEAx1YlOXDfUWg51DCWExLdLR+0iJSoN1SlONy9ted3WDbHtMEKIAAXUxgJoEe8m1n+9I9pDtJ1fO8K8nkvBXpsdNSSjAFNhj6edqzD8D9ID9pFWU8/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRLc2KzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRLc2KzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD90DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770185033;
	bh=0AsUZbzKCPZigeuADjKDsEkhOFa0KKVZGahzepJZi48=;
	h=To:Subject:From:Date:From;
	b=RRLc2KzGv+pX5Rc9wWuAPStlNthEnSmwK/MvH5dZ3DPCyAwvlc2x9Jgm9HM/969dx
	 K5LmGGN/TytjmjnYqNcJbbUTBmFeFGhrhlGujzWAfylC5lSWMjTuywb7BgWVvsIuiO
	 TGUApakLDJbCZj1wWQH1NrolUU+hSZKNX3KRCxpaUgMcnquIVWPuZ+5cYta6xICQyf
	 6QbOVZEXZzBgrY64o1EW+0bAi8vZyUUJZF8rsEh/R+NyK1oibXzESxQHZdNO7DB0QS
	 YMSZWgeemahZqo5vMI8niP8eirRU6ru1Hslhw0aU9nMa2iec+cbhb366+yDFceCuZy
	 fqx/Cc3nAUT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB6EE6E815
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018503363.28394.10122579464675802423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b791bb0843b5f4dd4f348fc5606627cfdf7a4e6d2ad80576f79b45dfeb72373
Date: Wed, 04 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770185033
