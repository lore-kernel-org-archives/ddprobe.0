Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4554B3C47B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748147994; cv=none; b=gS5gpthgabE+xPbQCbhsfMUsYA6AOaS5TvJyF2DOejX/LQ4HL9zQky/fudzYLrGIAOfzgyu4hDAarzEgWKaNv8DdESSdVbAVl+rgBC1755IxHH/iymYY2eBbonzpYp2DxLZCZURCotJUCMdRZXcVM27QapsrILKOUFjjfDyf+fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748147994; c=relaxed/simple;
	bh=2mGwhSR3x+0UG/J8ltXdIpCr2QmGA0AJIcnmHxZMvHs=;
	h=To:Subject:From:Message-Id:Date; b=cEl0vYqpnA57uplivmg6j4jrV9gg1+1KquC5qWlgyJhsTzlMH9M1ZK95mREfvgfyUWf65vfIp7PxuOABuUWayymZ6CfcqljseAxvgpOUT1RJ2s81tG8hI2SrWhi0BVLoYzuL8FhwdCaFPWrYdB0fWV4gNyADyG24PpNQBVVOXiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBOlieOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBOlieOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9DCC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748147993;
	bh=2mGwhSR3x+0UG/J8ltXdIpCr2QmGA0AJIcnmHxZMvHs=;
	h=To:Subject:From:Date:From;
	b=CBOlieOO8dG1aJxkcv90L/sBwOdxP6pqq/3EjyC5DutV3p2XvlS4G7OFQ3bNLdl7E
	 9EFgdNl1v5kqtRu6X+aloonn8PUVC8uuxTSgK/81b7ZYuCiBu0wcI1bs8zWri0Nx36
	 lAWyxRjVXpcedwFGxle81F+8G0kHWAwqwfUPMKltn7T2aBwZqFIM1tRcBpVYan+Uh2
	 1gt8TZjliqT5h2EhQteUXjMKUl0qJyJ8DWYCGERjsIGJWfi4A8TtR8M5zaf0iGQCre
	 +nQINRN2lLbrk3Rxzjx3lMWiwMaWiHcbqJQIV3l1KjHgpfmzCbtTB/6Ujft2JsYruc
	 0cZEgb3+Nwe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F58C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814799358.27617.2013263885367996345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab079084b13d8815623d2afebe83d467a4e64050db65c6f7a6295c81355d63bd
Date: Sun, 25 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748147993
