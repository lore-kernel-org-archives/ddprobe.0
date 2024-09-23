Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1861F15E86
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727118954; cv=none; b=K1pGL8Rn5Bizj9ZvSQq8ciQ6XyY0bWg+XRkbPkYkRzWP86uoCne6ZLHqLFraYliBXXPS56xWdfWJclEhAJQtKs98dIA0S9oLtf1TaU/Kq+C0LNvFgRrfmcM4JGZLj5teoYGGUEnus/vaOUNm9njIXoa00HON2F7btDzBfnqzIAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727118954; c=relaxed/simple;
	bh=hiMFCrETNBrCZi8YNceSjnAu1vVqP3gQmchaLaHngd8=;
	h=To:Subject:From:Message-Id:Date; b=KrOHvTbcSVpG+C/TbwA7nLoKnrqtEy66GJAtTz04Jr9MTDKG9zso+Bz+W6lfOAE53V4gRcJUCZCgOf2azCZM8hTFWq3lUJ/Y3EcTTctiLeY2kL2EJacxiTQujdFSGHlxMABPta/gwDuMhIv+ZlKM+Lee3HLiBtEBk0S1OrLCY4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/2CYW2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/2CYW2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA771C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727118953;
	bh=hiMFCrETNBrCZi8YNceSjnAu1vVqP3gQmchaLaHngd8=;
	h=To:Subject:From:Date:From;
	b=p/2CYW2RiVQeGGW9eoY5o7bj00LQpQr5737oYHI0DKxOYHvaYhNF7MvUfxGIa83tT
	 y2yDqqb1IflfmlOVEXxMW11T5kdOf7PSsra3Xe9WrDb0RqprARrHtGXrGw1hDh3ywE
	 XVyFOesUiztkaHr1xVQHRn1aGaTrazWV5uo7k5XiPlcd/3uX5Z+z7ECKwiXyOLvIBC
	 WdlZ00NC9z9wTDEw8L/cP+Am7iatRosyn69nZUBxvC9Tm7i4DNJWPUSomnKzg+CJ97
	 zv95GA3pOFiFkfGbtxLnKbA0US02OWFtl6tb3VtBYLSDzumwhmJFC0xFs+imn4d/2U
	 HETfIWyUIBwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E0DCF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711895360.12457.7670400557151174588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9309a2615f30a5deae87edc414a024eca6391e61b753b1bb9c8450feba0729de
Date: Mon, 23 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727118953
