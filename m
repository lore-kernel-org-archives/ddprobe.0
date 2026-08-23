Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8DF380FD1
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787499634; cv=none; b=t9WC1nSi2M84Q31H5qTDakI0MVOeb9W9joFnVQE4gRlUiq42q3O11xcb8g/9gJo8DCiIWxsjPiHODuNGI1holggUzYgd9/XC5iI/TYeICK/a0Xs0FnSh0XYN1BUN+AVwBwII3UfPxWVFULAIIj50GWzl7uWEo8VQJXNVmG3GGLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787499634; c=relaxed/simple;
	bh=9oexzfEBjnzUDe3vdEdRasE8TE9pbS2W+zRiiFC5ZrU=;
	h=To:Subject:From:Message-Id:Date; b=Y/53JkwmBSoXTvMUl7m0JOG9aYWDBudWuFy3ukXrP3I2vnIyYjYWjACNC0GViEMD36zM+IjohunEj+0AeeosYHfd/0Prs8xZANGMz33D4DeID1uUTb8titnxwcWDPkeeB7DtFSKKAc6wq4pQD8/QtrnWpE1Dj9qBY6PjnL367Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIygvatq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIygvatq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787499633;
	bh=9oexzfEBjnzUDe3vdEdRasE8TE9pbS2W+zRiiFC5ZrU=;
	h=To:Subject:From:Date:From;
	b=iIygvatqxbtBVFmAQT4nB4yfuJrTSo5fF4I6kqyY2wPMNymUobeDoqFzyvMn1CXgS
	 nWNU7LuyIYCnN1vDlLGjnwggMbX8LsDRwTvUe/lCZpeJ9HHxBiilWZ0dsDXUhyzfsd
	 +mCgp9m6eHoJvXxLj+YYfGvuYadqhv9SvuF3edhn6aaRxqhjs/A+VKVzMk2eUoXHq2
	 8zRfZez/rSXPppl8HoevFm3N4xAQYWLPJkZo2EUJ+EpiZxc6Sl3cXhHf4PPreaiJSd
	 i/mgVzVA0TAtMcxQG3IQPGWH6yx1jtmjuGgtspkrcYVPftDv2BWqEHhhOh2LgC+Q6m
	 BUTVg9dBuCPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F76C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749963368.31589.2129878768254970040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9a51927a45c426f263370630008c784acb8b7834cf1ccbfcb269f5f46bbaf6
Date: Sun, 23 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787499633
