Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BB518EB8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716026543; cv=none; b=lTToTajANnHKpDtMEnfEIOPksDtoSj297lQfShqLG/jtX1d4rjUaYy9AYJGxiyqxJ5Ws7SkypvHjzjv2D42ZMWSDbgTHY0zGyQczJ69YRcnYwJ5Wh8lIV8FqPg9omP5IpmLFACIWMdv5Z2FxLMmpy1paUsfT6qHTpU1YdhDqVQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716026543; c=relaxed/simple;
	bh=ASrRO8LkV0IYdDCf/2unMadQGLSJFVB8GKAPCte87+U=;
	h=To:Subject:From:Message-Id:Date; b=IbpavI3AjUG8HnV+D8mZgwQlpis8uw2m/m6RiDHdpdlKDBeA/hEaHKHs/x7w4hiNciz24q5IhV0ct5zYne97Bb7kr1qynIgr6YEWhNafsaZyq4ohjrW+OZ42KVBUsuHFFjKvFO5rI9tFQrejeu9UjuyjGeha3mzO1DuYB1Nnpx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osM3JSJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osM3JSJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D955EC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716026542;
	bh=ASrRO8LkV0IYdDCf/2unMadQGLSJFVB8GKAPCte87+U=;
	h=To:Subject:From:Date:From;
	b=osM3JSJgXD0BlprvGsl7v09WD/osSiAhxwpUhFyl9FhnlifLRstafRlny4AePKzUw
	 mlUNhZ6U7p3glDJx3Kw0AzOlYiVdH/anKc+P9Ncm5KC7YNHlHFC6xMaXEcgeuJ476o
	 +I/ryX71dLcU4uBzO2qg1IievsULlPGts6N79fp+dRYpnN8gHdjV5xLaA/VCQtxGlL
	 cnTDwV8mjfBrRu3xssAbjP9QWmLKQZq9WpTy++3/pyWq94IVacVBrRFERkF+fWdfSr
	 E1lz8R4L6ay8qQKH6+DfI5qyZr4OlQ83rk6KfABLFxlxFWlDT9J0uruQ/ydp39jL/P
	 NPlicr9r7bVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F8EC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602654277.26693.9419754223712791381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296bfa202c40e1cec31cbdfe799da74649f5a7acceccaaee69004faeab0ac25d
Date: Sat, 18 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716026542
