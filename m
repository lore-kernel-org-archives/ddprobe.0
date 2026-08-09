Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE383A168B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786276234; cv=none; b=LHW0EFPywbrrzQ0cRQxjPQ2VCQgZima1pln6kt5XG5+oQGi04GbtSHwrBQO7bpuO2gZnBNEMb1uU4omwvdZ4CrIqn/BLeKp+0GFBw+cUt7chMfYwZ63/1pmQF/XpfpYThZ5lavPQUfl5WvWeSn9K51WmsB9RPWss8q/wUrYWIaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786276234; c=relaxed/simple;
	bh=s3zZ6+25Zpwx4FiSVY1yfxr3nlGrVfetCWk9CLstp8Q=;
	h=To:Subject:From:Message-Id:Date; b=Ss0HR+DbfVOj1E8vMT1UUU6I8Uqf75HOt7De4tXi69tJEuCSr/yYEfOFLAXf9BVUxsrw7+WcZU8WtvtccvansLb6HbrRUWQGGJgpxuOnLyXjHEUVcAhHZikldkbnYmHTDw0Fwro3fUOaA5G7Py9nzGDUYRmzjNpw64lrnLJRXv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMEplhOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMEplhOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1355C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786276233;
	bh=s3zZ6+25Zpwx4FiSVY1yfxr3nlGrVfetCWk9CLstp8Q=;
	h=To:Subject:From:Date:From;
	b=YMEplhOqBodqSzzXMQCp158ngpCTgSMZr1NRwpeACUfy7aDTG5lU+fztrqcKKLD5K
	 6ZobDA88M0D8FWGReZtgs1BAancnJl0XCrnYv41xGHSq15tYfpZatfxxyznHUrlzKE
	 a7e49KCnywbE3B9pXQgXGgIAnCoUeK688wYWpUPYAgr1tgeizKA0Jx+aysGYKAfVHO
	 UdHqDFJRdN85tv6RKY//pW0a2/jk5/dnnqQIUFYDYhWphsUNXAWwsacTQGJ595d6Pb
	 9acv89NngkVVJtt7STr+FMsUKG6N4jkohCAF8gNLWKMUsq4HVmlDTTksKj+nPRTvjo
	 igGG7kP3DVMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF958C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627623370.28157.3618594615407628721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5c2ada21945cee4fe54c0a76300c688fe151c586736c2ada0cdc8fee436171
Date: Sun, 09 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786276233
