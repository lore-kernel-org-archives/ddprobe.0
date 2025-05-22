Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52820290F
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747882194; cv=none; b=VairOR03Ax/27M28MnwnGfaAoJJqnWG+JHiYH1BYFa94TxiDuvWFvzZgjQuIUntqZ/haf8b55KByqNCmLAKzyeo5d5ZQxdj35HWZ16fdNatJA1zNYOkM7bGRo2jziLhDrns9HaJRD30okBEhaHlObr/tOovdDpJAhKpCBSgogx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747882194; c=relaxed/simple;
	bh=ethGsFReWjtBa7+T8Ftk51Ad6zdSAxLnkkS6fhJqTzo=;
	h=To:Subject:From:Message-Id:Date; b=tQGY5jWjqdiAlrAWYKPvP1R7sfCndjFsrQPmGJGrhYBVQiFSKgZukn0986YQgVzTLnWsZnAS/r9/lCpWqkUkVy3Uvzwc3Ix68k67ODNcoLkrMVnB5UXKFX1uXhUGp++Og9LjBHLHiXDAjvEljdamqrWZFP5DQO6BWeNqbHtQIo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLyykWwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLyykWwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27A2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747882193;
	bh=ethGsFReWjtBa7+T8Ftk51Ad6zdSAxLnkkS6fhJqTzo=;
	h=To:Subject:From:Date:From;
	b=jLyykWweVZdtDZwX5va6DAmKxuIMyiETcTIp0bjwXGa2sDzYUyHUiR6Rk4boypRaf
	 FpLf3p5RIxBheyP3JK8oqiVeP4gFELU2XMbwOL1PGAjDR7jQrGm9m4FJQvRTpJ9xc0
	 y4TyXXCfJhheeyLi9db3Rn7aED6CDW7y+7JAmZ5ULvQ6v6NphoKdOfP+JXl5aItOQw
	 tHPybLqxDWY890yzqKGxE4/yeL21j74Bb7EFBDl1J/yWRd+Z8kkqkuWLX8e3A3z06W
	 +AKghL2HOlHOVq964vGDeGwZe3VDQabiKKbi/d0HStyk64yULpc58EcyhONwseP5HJ
	 4nzgGSqArF6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C62AC54E71
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788219357.4826.11661178437602434424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c76205995e9b0f1773cce8f04a81721e4809804dd1c49d033c2753bf456d36
Date: Thu, 22 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747882193
