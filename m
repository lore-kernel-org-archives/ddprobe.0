Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633634405
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720331183; cv=none; b=g1zVuBoleso/zLYwDTT8B64o1q7K0n3jelKWACChEgKVndyBHk9kpC9a2iPXQ9/GG6KtVF5OhlbhgTdaODACrfxhQibF71EtUr7UHVyN6ElxMZ6YHjwy6aD5TkesIy0HstXguyGm5YQYzRxQx/M/5c6fKXLaSbb2er1dLQ7K6c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720331183; c=relaxed/simple;
	bh=pakkFTc4Gzjb+yzQaOvGJOPn7anRGdbWKxuy/vXu7dU=;
	h=To:Subject:From:Message-Id:Date; b=tLIkeuc7R5uoYahBlYksdQAAc6d0qjV6VT0k7NLNnDixY8L4M5mpB/o1+fBTWpB1y5lOD9qV7b6vGf1BuusU8ge8yoR4CanCvOM1RCIxUbmAZ6o88ahvLben51D0z0YiEgHWjcEYWCFdJQMeHfCUSkI9ZeF3PkDeACzf0QM5WPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXPbBCd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXPbBCd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAD3C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720331182;
	bh=pakkFTc4Gzjb+yzQaOvGJOPn7anRGdbWKxuy/vXu7dU=;
	h=To:Subject:From:Date:From;
	b=HXPbBCd9m8aBu2wX2bkro4BfsBDWQcoOnDR6Zz/3X9xweQi8Lne5JFFiqG9dGpKBJ
	 IolDGAGygAW6gMsUWqwJb7c6p7tkdI9UYcJh/ooVkV5oxCT54T7VlEixNB/bL0Bpl4
	 H2/3wcVepHWjbZ5Zdg6hn6AnGoNd8nED6E65cjC3x/BYNoAnrkNMghgD8qhLCHQBES
	 /FxE76Bd0Asx+G8lYnLP8mQxFuasZBOwB8jJTjiIPluZQprSoAYr/qT/u+pi65RCDw
	 r2ZbNNVn5OOeewOaWrOjsTKjCzcMyFG7LPSrc5he9AFtmfH2ugwWLebhNn7Aj8TJa3
	 AN5ziyVtGldzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC646C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033118279.12571.4912210764822974800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbebc548e140f07e84e7216b5dca979be26fb3522d7bfb343e203d27640e4dfd
Date: Sun, 07 Jul 2024 05:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720331182
