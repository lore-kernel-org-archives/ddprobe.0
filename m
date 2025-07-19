Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA93FE4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752943194; cv=none; b=LBozU6clHFKCrPnRJAuJSVd9/sFuAREuJjCeR1Pbn3Q+yzofarN8fCBtWWZ9K3wDKlRsQEpTZXXgu66M3UDSdCKnVOqMUp9m7gkZ0hkPiPCW6GNOqmwz8EZWfYfGXJwbNwE41I8H+65q1XznpBy9Y9MSHSn7NWdWmKKlXmD89IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752943194; c=relaxed/simple;
	bh=yqkIs3TbLoIbjfWBoaoyuzGxQYjiHbkE0pt19HxpvJU=;
	h=To:Subject:From:Message-Id:Date; b=CoXzCN4sHkuAV75qVchAMvOaXUb/+DZU3P5J31MCOW+YRl2XTYhSBpGyUOY6vDe129epdCt3t27nEAujefLKnZBfCVYmAzKZSud+VYiPutwuWUjxcb1WC9p9Q4VBmbL0LDgF5amicQA32vQQtulgN0z4jbN/+8kaGrDC7ovnea8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/4nYkJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/4nYkJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8894C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752943193;
	bh=yqkIs3TbLoIbjfWBoaoyuzGxQYjiHbkE0pt19HxpvJU=;
	h=To:Subject:From:Date:From;
	b=i/4nYkJG25gARH2VMTq/aHBc5yVIz8ZJ20WOjGQ/YNCg6BKGHDGNo1BdDp5eYo31X
	 T/k3A9KLogESQ0uMQGRy4FdfNA9qAThZ88d8CkadhvEIUt07cvU6BFxPXHw4/51NIw
	 gjHPfGn/7AtAiRYh8lPMBvLzJJFFJ+zKoVgygR1NjU6xgUb8huh5Pf2aGqikJ4Wh7X
	 F/5AAiy3KDH4Cp+1zXrMt8mGRvxeivsoHiDvSGcWsg2uEZTr/lbU1t7Rbv2dQi5Y1/
	 xDcn60K0Lo0Xo5B44w+veIr7BzUY0Y+Fsa3C79cGxNDD2pZiDQQW96IZQDZ/MAcFpD
	 cQVcia8kNpRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9687CC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294319358.14247.1226247342915887293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e42948d1dc254bcf81918e92725834b6ce512448f7f0bc489176f51f85b2a0
Date: Sat, 19 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752943193
