Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B07A23EA97
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780211074; cv=none; b=JaB8q1ZLNHmaFYwlw1y0MvX7XijNYMFyg+WLDFNzdOnr+dVSX4xyIcKOgaNR9ayS9MmII9/L4l0ZrHznIKi3GKExAtxsTs282Y48UkszguZShzUIdsZ/LBDtc6pUWIcuD+r+VdOditUbk8fD8lG1+z2DlFUELxIxoCAI1VjHE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780211074; c=relaxed/simple;
	bh=wWGFf7rd/SvRJGdE7x1uQbP2nfWVVl/jiCgfWLgI9aI=;
	h=To:Subject:From:Message-Id:Date; b=KY5qczPGR13MdzCQvUGKw+ZnBUqu5wdgP4FtqqpcxgdVqmqBlvJmh3qCdz3s+LVk4Ufr/0jyIagsfoT2/HxjYiETDluXs25ACzkH09FxoDE2TcJQdWdh4cAzu/sURMScCPZG24CV/ewA9IBqTTLjAfKybLHQ43OghtdEF010N3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA7PDs19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA7PDs19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BCEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780211073;
	bh=wWGFf7rd/SvRJGdE7x1uQbP2nfWVVl/jiCgfWLgI9aI=;
	h=To:Subject:From:Date:From;
	b=aA7PDs19XqX0tI4BUJv/pbkAw8IB6+GItgpJWhsOp9t0tyBRuOQ0aMMyndyJ3pYfl
	 Sch3F3A71PmzbxhNHoI6vazUkiMLEGusNjWw9Y7zyfKbEAhK7zXtM5kNSprWu7AZZF
	 5N472+hkVj4AqiK64aTRyupGabRlvlJRyqgTcv9wjN9SBE7z72QfqJKaiaCEjA0v6c
	 jDhIeQxFm5ngdZQgbgfGjVrlrdTkLqJzcdjn4xerlIqLQLQn0RWRdYdp2SsZeqofrx
	 ATP+9Uxg/8uytJPEt7QDtchrQ9uURUKAZpXnMd8smOW8jtSh4eQoAwNlroCGl1vWhr
	 xvbbRJajpYRQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF76CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021107369.24538.15984919511274392026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfb82c355fba1e82a9f1f90efd86c789f121fd5d18f5676b2283c1d29e9c18e
Date: Sun, 31 May 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780211073
