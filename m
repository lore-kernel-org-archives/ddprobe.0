Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364E1547CC
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752157194; cv=none; b=ZBpApsnKulVTztUVu593SXgIFrYkprmNWrWO0JHqyirGg20dS60sHMq1bcOXnzMhxHGOE/IUvrnKOxpvZU/AthZJ83CfXZnHt0pPDGNMu7pcJPk13Vzp3LyDSZ6nBWNloEQbWqkDGdBQDwfbkKhjrBOd1utZpnWiIJU4mQBUbIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752157194; c=relaxed/simple;
	bh=Wq5fZZgE/mYhuuhG2qIl2qY+Vx1G6fbdVCYIsVl70rs=;
	h=To:Subject:From:Message-Id:Date; b=UvfnJCVZUobZ+ftT4CDAOQBTVimx8ZUhmqhWM9jdZETyGQg6Uc7P3ZOV9iyb6TIu8lQvCtdaEGwrecLGSc2++0P6Em6YK5EOP14a88eXA5aLgDqog8Yjwz8C9Pn7t1bKINNIV3VX62/sbGun+p6squoxpem+dZDj9COhck1RO7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rF8bD8tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rF8bD8tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E747C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752157193;
	bh=Wq5fZZgE/mYhuuhG2qIl2qY+Vx1G6fbdVCYIsVl70rs=;
	h=To:Subject:From:Date:From;
	b=rF8bD8tn+Nlpmp7hsoiy/6ofiMXeRGb0v+NwQk0hLXFwHJJq0yIyxRnnkdQgwkjMr
	 atQogWWCNxlgD4bugznqaVuHeEM/E4MAyPuJmyoa66fFEWkfbovVElGDY3YcVQUvw/
	 Tq0NwMALxoNvHtBMeH1fUK6YvHsgjiippjHzUyqcmtqzxSoPkJ5U7pR45g/jF+/oa+
	 2mhXpRN1jWUVgK82WSlIcIpE+UxQApSJqt5HHZK/8EK2mf3qwQDr2QWS01OX533COL
	 +EjTsuEifKrnfFmlOBt0Atn6ysqrA7SM77CiI8DGm1dZll+7gU2mrRKjhya18zE96M
	 UWH8QNCe2GIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4EC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215719357.23136.16508370729835185405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7efaf9a67dc36af0d26ab76b1df682cbb7172d0735f6e670f0be930a84ff4b
Date: Thu, 10 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752157193
