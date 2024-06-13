Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654D113E036
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718272703; cv=none; b=oy8DHRvQqYivzn4QdIlV09GIUvlne3LmgJlIn6zpw1WSEh4s6QMutL9wy7w8s5sND86c130Gn+KVbqMlb6C8SCzFnc8s1lCJsj3yfP5HLJ2Qi/K6pL/fVXvIgmgzRVjAQWpRx7CTD8ZrHgnHFG6NRXytiWYpxLEJa6wLrFIfw+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718272703; c=relaxed/simple;
	bh=i2B9Z0LOeWqsorjed9HCXTzJOWUIcjPX1ZxomNJgxsc=;
	h=To:Subject:From:Message-Id:Date; b=u7IcRMotNmsJaal3yTP0sRc/5ObJqE68qLoesjKfJ78Usv8X81uNYNvXVbp778VYjTVZXa1bx0nkSxykz70scVRIoevCpwhoLOfGiUO6xSZMT9OguQmrlkuo9v2OwM1BYUSHp9exIenzjCI5b/wHJ8UGLomWjFST1ZxWqF8/SGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvQuoVYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvQuoVYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CCCC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718272702;
	bh=i2B9Z0LOeWqsorjed9HCXTzJOWUIcjPX1ZxomNJgxsc=;
	h=To:Subject:From:Date:From;
	b=qvQuoVYnDsSn/eVNffj9VaAFDqAQicPGg3Qx2UErR3TvivaBjCIVWCek1lh0eIfdn
	 +Q05kp/bFmKvOUUcRMhZ6XI6EhM4uQ7HHNUVPj3Pus9p3aiNAwK6+qWQ+AypWPiLGz
	 f1KWrxJTxzNJ/B2lVgdnYTtklefOIEHYXJd4KEeSLK15QCUJMG/H+5wf6z5WkNze6q
	 H0j1J9KPcYN3CFgRPIK+maov4mRS5wmvKnp3s54sxsQbkDKo5ZNq96K2z2iD2/ZWH3
	 9GtLDGPQTbVle+bzzcdS0emVIzfhAeyyNlV/+alUHDo9utZ3qpuZZIDUZi9XTfCfhR
	 EIjyzGbz0K4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C207CC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827270278.27299.15192631468070544929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b528ea25711630976437dc05fac10061785aa0d1a2a8c72e5a8641fe48e95c2
Date: Thu, 13 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718272702
