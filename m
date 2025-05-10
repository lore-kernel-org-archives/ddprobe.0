Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE7714901B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746902994; cv=none; b=lGOJ0CLCVPDaPCaWlP37wbb6NwuVeXVJur5zb5QWKeIlk9XuK2guohUq5tymHPmlZBrzOop5ENOhdYDLKhhYjwAm2p1EP+szMa5FcJWgOeQwS/s3JpbYzXadt67pwNtUOryiKl4v4GBTnwsbcbF2N8/qFyzUviArRLjxD73pUYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746902994; c=relaxed/simple;
	bh=FDuIXH7C7i4ETzI8za8RZF85PpE4LJPVxG1wrS33UBU=;
	h=To:Subject:From:Message-Id:Date; b=CHdCmUFYNndL82iVRqbQBFf6ZiRAwtDA+5e27hiYxzj4G7r5xxnRvqj+m279zWLe0TYCsmt5R/K2rgFyaqUgSJGEV/wEb6GUeJXi9iZNwjFjr0zbAyAzH3FfoWW4zHjnRVzClkWEVaKKlnTyRUGiMaAnRcP71Mxd1C9xVSldN9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5bjChe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5bjChe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC2DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746902993;
	bh=FDuIXH7C7i4ETzI8za8RZF85PpE4LJPVxG1wrS33UBU=;
	h=To:Subject:From:Date:From;
	b=V5bjChe+4C3ue3tcfkVG1uP7uWG0e7UGCCYMAHR6wAWQ9OWAFrFpDz11N5bDnhveG
	 YSv6CA8252A1iCCGFc5ApU/UWlsxy2dCySJs+EfX/BqT17XhGKzJ0CQKkr4a5nkSHA
	 E98i7586jT1YCfAW9kPrL9v2GOoDEUMONHWavr5TmR5JhTzuri1KjT1969Rp0Y/tIl
	 W3q4bZTfxkuy0jwGHv9fuYAU8dfLYsqye1roGHrjgqMvpJxqY1fcZUVUDa8LfyHMCa
	 uV5VdTLu/MKN8itJJuuRY7Xp/BY1sX3d4aSfehV6dOI3sW0VCzSgNJXGkHGHXhUzaj
	 UITum3kz5P0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D6C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690299359.401.1345144227506555555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512222d413324d540f9f3e4530574734b70572cdd8a04f719edb831cf2669933
Date: Sat, 10 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746902993
