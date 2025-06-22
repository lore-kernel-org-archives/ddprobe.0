Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A232BAF4
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750621194; cv=none; b=co31dt7zNCS5jR8cUyy0FbVt9VExAeV2Nu7LRwKvif2XpDXqlAVTw4WEYSdgr//QAsZLu58ELIqkz6sokc8JOzO7iL2kyyK6KQRb2Nhm+v+tMF5rlNbNvzYbD3AbR+tkL5ZxviYFYeAGQtCstLk6IHYkBjmIAwdUkE4tI8otiaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750621194; c=relaxed/simple;
	bh=OLIJPdolhNdqrkvIQsxGCvs94yfdBQ/ptvcYHJROxvk=;
	h=To:Subject:From:Message-Id:Date; b=cnQJh2vTvvG0wn/Id6yinhvpsJKzcvo0+b+QKnUFkI2oVfafyXpiVVKx5jpO+nUE0q4X1UTthpSSmLNq65HCC6m8qB6GwEp+2iByXc9q6FzsJGW2+C+zFTh+ANAWyQ1FKsz6F5SWj4/uIw7bthYrDX5CO0orZPCmcjeOkYX5IoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBjUC9Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBjUC9Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750621193;
	bh=OLIJPdolhNdqrkvIQsxGCvs94yfdBQ/ptvcYHJROxvk=;
	h=To:Subject:From:Date:From;
	b=bBjUC9DtZASNdtlGFTj7UG1KylYtcWIyLGIpVrI9tLb3H/NeUX+LAL8mOh3E/QR/0
	 BxtpMVIlAQifb54vZ5sYcGqzAFDhAeznNk8F7gRqg2op9BCilXWvgZTguyFmklLXg5
	 8xrhU3Ya+KzBW7BWZ9VbsB5NSFxfwMkixLrHieWZTjTMVOVIczY2xH5meA1xCfWozc
	 dMKfUSkGjwe+bX7ydMcNczjF6hpeNNBdLeRc4uZYRvroJwkn6kI+ED+Gg6gL+8cMv1
	 4TPjPKPc27RUpBKJSYvCEXhaCPAUXLd/dP8aiVdgyI0/Y7JuzvyevMA933GFsYZX9W
	 Ia0Z0i3N3/2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA43C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062119358.11215.8147407883925746480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc2ec4ae324ecf97da6b294e136f6b2a06b448e1cc6f4389e1a1f9e051ffa37
Date: Sun, 22 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750621193
