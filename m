Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E754150994
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734468954; cv=none; b=GAqB5oBwRhRY6lmZU5FeqPmMbGlKwwNXs8qAp+iYPFYunE+ukps2lgHlsNyxE44vAecQqVEqQq2/aNGWcNQjCJ/36Ik+ISdIwV5I3hRqjP7tgMNoRUW9/J7ca2YReShqfwBykeh1dpsT5kcKsDKKcMzTspMywcd7Nr9hImjqtwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734468954; c=relaxed/simple;
	bh=fB5BD4TxcRTlLUSw1Y+4gapbPoca/04nM9PeJ+PAqVM=;
	h=To:Subject:From:Message-Id:Date; b=mpz+quDGjjcunaE1PAeb5hsYsijLS/VHjpUY0kS74Q7R43dsy2rFttQ/WKfadXefy7TBq8rMrmBI0X0979CjTDbJ4BFkKMxX8Vbo3h/Cl/i3vEwXgXYnSErkDZiE/+2URSROT6apjVaeZPZ20D9CUYKyhxvqf2gldaIZYfNLguk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX7Zvk0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX7Zvk0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6463C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734468953;
	bh=fB5BD4TxcRTlLUSw1Y+4gapbPoca/04nM9PeJ+PAqVM=;
	h=To:Subject:From:Date:From;
	b=gX7Zvk0d9Y4xXalayh5IMSsWkGDENt3kemf5+gkdZ3YdFngsvR4GE6sJbp0WxD8E0
	 dre5s6tJbHm6PlBmBfwOYV223+DJlk6fjteXIF8y7u7XeF35oSm3bjdRcNJ32aSL8L
	 y005Lrz9DIMQBRO7GfVjn5an+fZfK5bycxSmCx/ZmxqmLaz9Pe97T1W6gJrVXVQtlY
	 NsYz5TcfmnMavOnmZx39GhobLdkHXecGedKbX2H7hwT8YqPOgG8rHyEEbhIIP3WPJo
	 wLgi+y4TgvByccMeqEJuitPvpU6xvaiXSz9IsQ0oyR6/QRGBV+/+Xalx0qNL2gpQFP
	 JAAGx0j1xV7zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ACFE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446895361.10027.7596944886584602313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42013144f99bb35d733b48502ad461d599d9a90544d6093ab17e90ca7d3123c0
Date: Tue, 17 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734468953
