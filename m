Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291931DFE09
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745997594; cv=none; b=lFNvOVyOD9HZ67CndDMGaPLXcAjQjqb0YAoLyhMb1kUBHjVdHUkRZ4rzZCi6A/bAmle1JzYuZQR1WQAK8QteKkAsjqCp27yg6gt5lBzlbKZr7zAUZk+eUj3DTroXOtYskDkomp+jrQFmMIYRgEeMhlqh93fFQM7S7nd2dN2jDRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745997594; c=relaxed/simple;
	bh=ZVfzcnqKlaA17iuK4eXoghmVNHY9+rmDfao92w7B8uk=;
	h=To:Subject:From:Message-Id:Date; b=MtVDfmMqrdGZmGLgaBQHDGDQB/XKpagkTBsLl5b0jFDTEWKBy6io9FJ3aSp65qgOaT1kEt7gbJNdhqdNeYu15NgrkDORVF69oMtZmYCnhyGiw0oZlB3An20bFSxWg3o8ueAjtTurSz8gBCgg4mJMt0qVVHTG1kCRrsFeE/7Gcsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3Cu+0uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3Cu+0uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6295C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745997593;
	bh=ZVfzcnqKlaA17iuK4eXoghmVNHY9+rmDfao92w7B8uk=;
	h=To:Subject:From:Date:From;
	b=o3Cu+0uAxOa8oAZuxOGM6W3ZeKtDxhDg0bqzSoFslz+BWBwYPHLLhRrvyT0u6OzOH
	 jWiZOJ5cMyRB0zicUepkzQgw5eUIRVaZAyCWgXD1vV5D4gwu+4Nqo1wTzVHlB/ASYj
	 MpPyAFrY93k1vcBNnZi7OetZTSdE/vD93M0690Lbc1xuLNszGSD/jOSnnoYEm/Q+QS
	 IMiVQn130KIuP1opRgVC+I/qnoo5OYlngobieGDZYqMugW3WNvdWXJ21bVggTiA0Li
	 Zt+emzveeDl0MMp6g86DcXfJvkFcYsCz4+uUBdCoF4tKDmqYZTCqLeYBE5m0tXgRRY
	 BAsnchxK5QtYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599759360.17366.1880078489247929694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b33c63686de055a53e855222943c2984967ed76ecafd96ba37e3d0b6606744d
Date: Wed, 30 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745997593
