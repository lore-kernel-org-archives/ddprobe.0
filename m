Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B36190462
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786779634; cv=none; b=AQvn8OZZE7BgvsEDw6wicN4nE5dENpvXSd0inpk/5dQXMyR5iPhtul9mFsWSPWrs/4a+EK21kN9B3OyNvsfKtJN0iAvVz0QHcpMJ2f4vrGbkTMixVVtmMEZNjqUZsDu+nELigOt39mwcQZRVsX/7D8N5Z6IvenJDTMzNeQp7bjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786779634; c=relaxed/simple;
	bh=uVQOHcROcFqlQTMzp4+s+BtxzNi9FwUw71u4wRkxm0Y=;
	h=To:Subject:From:Message-Id:Date; b=jAdyAZzAxS+qqPbM+xDMvyNt8THG5zCxjQTsqcIjyDeUN0upQ+9ews5KE7wlVMulXG8mmH1rgYrDoCUacTs1YCbi0MaETEipyU8l24p1JeZSEI1e/BtLmWIHYkEiNb645CNNNlVBJoY/g3W2iqE0YdzmCXcG5efoYyu7b0Mv818=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/M03aJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/M03aJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0322C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786779633;
	bh=uVQOHcROcFqlQTMzp4+s+BtxzNi9FwUw71u4wRkxm0Y=;
	h=To:Subject:From:Date:From;
	b=i/M03aJ6GGon4ViPncqSGXq+n82CB04wZGbZzkSm4LlyUtkHLx0MKQ8fD9ZqWaXNq
	 VFSJMQXGM7V/AUR5FdKjRcoVlzuKgyfI5fZDvRfVm284inU0PWhXy2GkGWwUzIGWSI
	 naC+mgXu3RkNElPzF4KG/U74ccVHEK+9JZ6gt8zxsAEpPoPhGJG9X7Es5FmK3NElNF
	 HpjHT9eSbiBTQH0GivfR7OLgQ6YeKGY4kMtTjrZfPi361hoxKEYPP2fiUlCrQwP87r
	 jWMuoRI/XuYAo4SN6jJWhAYkDWJCmp7nlOB+2ykV8OGWfWxIOYYhmnXVAeKPSQXd7U
	 xitcO1yOL5XcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB73BC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677963369.27598.4978359098401026847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be723af8af84b242a057ec7702d65f2b5d37a8e1e4d15b3c6d23267bf3fbf1a
Date: Sat, 15 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786779633
