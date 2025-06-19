Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5A28DB58
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750360794; cv=none; b=AsJNayoCp4R5j9X++wNN1nKvslWBYeHZLjhYJXrpa2WRbcdDhHQ0h7ZYnppQ0ijToOOJI6QKlZbMVnuOyzL8WnN/9jmbnnbdsuCxuRjkXuNjNy6O8vsZY2sPkzDwyyJWaDN6iThqgWL4EuSUhq5tisFcVdZRxndSu77RMxZfcdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750360794; c=relaxed/simple;
	bh=es/m9Xb/U0BviKvdzxWekjXsHKPuIu8Ceb7C/9TuTKs=;
	h=To:Subject:From:Message-Id:Date; b=Jxt8KtbQP5lxbyjJ8C2WNUAaENVRohHc1+MvFvxGJGLanye0ji2Ln77E+ROtso85WXrdSxxrGB9fIeztpBXV4Igq7kjITV7I6PdtMq6B/wgbLXNA3hsPdKtFp9d6ofUNUqt9hZpEnxxxKiRkmi0KWfnS6+yPLt7KRj8gQdNPZ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T68sjXvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T68sjXvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F188C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750360793;
	bh=es/m9Xb/U0BviKvdzxWekjXsHKPuIu8Ceb7C/9TuTKs=;
	h=To:Subject:From:Date:From;
	b=T68sjXvYYYqTsN9jX8676Hufc1wBaEWEdePUdJvoNp0LIiGxUuTaa68P7LxHq96SZ
	 ZVur9KGtuejKcRvPsmjXxifAXjNPdegH4sFXhj+5FiOmGtDbEFujFis+OQJJfUUDMR
	 rH4CXetZJVPbXffpcnoxPOxvPov3JkGPdkQ43td7Lsgfdb0VBsP8oHRg5EOgmbka6r
	 Exvwx+tACbUDWp2w9OJ97FItiYVuQlWvVEK52M4Q2HxA4Fz4K4BskiYKLzKCNwHxnb
	 bwu37vpGitbezZgu0kDKxNYnZ5P/BX49wwkMUQS9Ngb1iVqga+BaEiql7l+VAXHIvF
	 RF+ledyvtv0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F312C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036079357.19611.13142144860322758277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6a138e6e96632b12b7ca778e39d3655a5f867940c2e34e625920a2ae2ef833
Date: Thu, 19 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750360793
