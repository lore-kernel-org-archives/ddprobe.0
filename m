Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66262324B31
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779110434; cv=none; b=gLOTjhCaWBcpWUvufqUNQJghaj4fovhWZ5Q8CopeIZryDDrYBnqmvXLxFxpt3cpjz/45uc60FOH5Uel3QwM8zRjjpd1dD8TE8O8lOE0e1D6q/o81VBMoJDmSJiNY5xWsNJybFGN0uPx5+1TSJpRD98RSENrenWcbl52OVce3U+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779110434; c=relaxed/simple;
	bh=G94hi2DgTGAT3M8aowDSmZWyQ8wktS5kKBPDo6S0sSE=;
	h=To:Subject:From:Message-Id:Date; b=qKt7lvY1BGyhp50luW2jw9uXquk4HlQN7Ox7k6dy52i2lYQ/sSRo556KHRse/C0SyrRVTvQ785F9PULMn+cYXPHW8f3cdHyQJsKd9O7QI1K+qNgMMEerSSP/td1hqpiQ0t6zhxteYP1KFd27ecKf5L/zo9CWbaMEamJwQzAkcBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmew/S2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmew/S2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55CBC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779110433;
	bh=G94hi2DgTGAT3M8aowDSmZWyQ8wktS5kKBPDo6S0sSE=;
	h=To:Subject:From:Date:From;
	b=rmew/S2v1Q336W19Acw+Da9T05p7KX2LZg4/G3iXDZxbp5f1e5djY8p4fVK5mkNc/
	 MbnJoDQqEJ08Q0O4TIorLHjw3VmsySHQO+S9I5zoDaINhiLWA0V1O8dzyA7bGKlbwt
	 1hYLWkDASjIQ419lkPgBGJ+Dex6PAC5mG9YgM7fyIjiehA/LvaxGM0HhVbwg3rakoq
	 +CPrm88JP8+N4nEZSz9RhUCp9xrVF4GhNVoNCCUdG0wipZWivPiGacfAQojkwrAPD4
	 Kte/mrAcBGXLNMFW4VaF9gOvbwvzmnz6Yhq1C2bEO+/ZHpkYBnRkOzlwl57lCpoZlq
	 3hEvxF4PgtSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA79BCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911043374.25133.8657421570075245455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6b7004e3ca74300a696a4e1c95ea7a528b070cbde1e078e59200e0bd29ddab
Date: Mon, 18 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779110433
