Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431D1AC44D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765399974; cv=none; b=pra90qR5FMjK3muEOi5JXWw8NKhcA/MpRFzN1ML6L7Xp0e0NaT7hSjgjkhx6s/OXg2eq090TMqrgM9ZtFpv7auRe8l+gZaoemsBMT3P9u9zvU1xeQGNmYSrvX2K3cjQTxvOmJdGW9Hf3m8SHLwAhtUUGV961BnbU6z+Latq5HA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765399974; c=relaxed/simple;
	bh=RPPG1FRFW5BokK0lfakWQ43CDSHJujCj7yWtruONmmo=;
	h=To:Subject:From:Message-Id:Date; b=XFAzclc4PHFlISwkHyfinxVy6SYbTKTjkrkN/rJgms9kAzips4ElSV6qvOfK8QjE034UTqn2UnaT2HvDjBI1kfCl6uSqS0Gr9D0WCgrUR1V/kjz0OZ2hS2J5OGcj9vCs+iRTpOs7Ynj6sjHBVgwLwnRGViygwnIo4Z1O3wkGJ50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izjvpN6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izjvpN6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765399973;
	bh=RPPG1FRFW5BokK0lfakWQ43CDSHJujCj7yWtruONmmo=;
	h=To:Subject:From:Date:From;
	b=izjvpN6OHNWokbD6S8JLVMQGfGKxzRPBadBi3233rCUmN8xSjgvnGWuxirCZIj9mx
	 LiywRpdJAfBr94tsDQGjRsruCCO6MQtLJDB+/7BMU8uypDYWuQ9Dk3wj9T6Ok8W2Dw
	 JZG/ETmoPnBiU3LuCcbpTA/p60AWnmMbXwVLJ2DH8462eBggmf2W/owO0qOvV2EPog
	 ZsXO+e4liffIqBUW6hlsZtqxKy5ptd0X2qzSjbKeFlfD3r0OhIIQkx2uF1W4hcj1hE
	 OQr3QixUcNr/eq2mVic1b6Ik65aN87Z8cDHY3QyErIAFVGv8l0ih1vMTZpForZ7Tzw
	 yV70lYSq+tEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96545D3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539997358.20311.5739003317833072262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a203a46501a63249ec7f3cadf126ae5e50c95926881789fcf1cbdbc9fe866384
Date: Wed, 10 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765399973
