Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326E221C18C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744754394; cv=none; b=rdzCTAxk4ItT7srdF0lNZ08iq+jGD2DdBXsmutzSoy5M96HXACA87DhhNloW23pLEJgwTV3Bbuqy4p3F4mAV2ZkcWkyenqcwRMTGTBZJbUf6x2Kh9TKkDtD+ZuJQQyGJIsIQha4QG6iHQz7SBNwLhN4c7yvMwSoUrTnze7uWLl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744754394; c=relaxed/simple;
	bh=3cHXcnuAxUt0yo3wqH/fPOTrF8fsC1yGLUTbWammWxs=;
	h=To:Subject:From:Message-Id:Date; b=s0b+3ci89bNu9qECdjQWqrhiL0Pi9Jdu6RRz7PE2gPKe/cnaH2C4Dm0SqDjRoLtiTEoZClcSrSe+jEUylu9R/8wjwUrMjRXmkibwkZkNIVhsBUR3yLgVwEpdLJZXm8lsFl2k2ZexYDSJxuS4hUK089se/SC/kDx6vPB5Fm1TO8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvH5oJrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvH5oJrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F6FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744754393;
	bh=3cHXcnuAxUt0yo3wqH/fPOTrF8fsC1yGLUTbWammWxs=;
	h=To:Subject:From:Date:From;
	b=VvH5oJrZZhtyjNfJ0+tEzvNGtBr9dZNSfdwnKCgWuqju8FDtoYtjiFl3NtXd92Lo6
	 f4zRkayc0ZarSLvqfhvxacMR8K8s4Q5xlPS7j7khiVwQs9Y1rDRxUrcYl9hVn8t/o4
	 SGUPTjRFy+jyTuicY8bNJSxCdRPaMkOWtV+VVrvRg9S13YDoqUKd9RxttmUSSIYxP9
	 PUVlMj9P2qH1FDh8L3EJrwecgS5dG64/5sen8NEZU34FCNfNTjaL9zbK/HZHxocrkm
	 ny6dNQNhHhjVgac+nCzKnd+NT51ht9RL/QEjOXzV9s/9N90oN/FHBHwjg0FYHR9zDh
	 J5A4pYVE7mZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475439358.21218.10934575850323347628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d9fd894401e43c1a1fbe20bf61e2aa5b98c683e52f61b4df3a04f609ba52d4
Date: Tue, 15 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744754393
