Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D373612F3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775258134; cv=none; b=UIy+YVzy1f7w+/KTUI956Bv/qw/mU0Bo5ZXbQQNfQXqulF3Eqs59SWqvTP1mroJYqz/we0SJCBrfFa3avN6jQ3/Y4qxm9x8ajZTQFBtBPk+ebEKgyzEZl7l9/NPzXGYBi9UWNmWiCfYBFhnsua2QHIy7wXCyfukwH/NbKPKC1Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775258134; c=relaxed/simple;
	bh=z1yfB/M5UKjTAJxJNbqdQBGhGVz2k5LfDnN+IUYHWDI=;
	h=To:Subject:From:Message-Id:Date; b=BQ6LrlEv+1mPtHlCGXmKYOHTrSagqbQDMlJk0emhmd6EuquVm/1DX8JfxliKKMgeNr9PwxoX+EDqS9WBq31W2gKBpi9QE52k4G92SjqoYpC1qmYxcJkGFWGykAq4H7TFoPhhrkC0IQdqRd3mFWSU0EXFuqurfoqOzQfqENt8m8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUr9D81w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUr9D81w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C123DC19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775258133;
	bh=z1yfB/M5UKjTAJxJNbqdQBGhGVz2k5LfDnN+IUYHWDI=;
	h=To:Subject:From:Date:From;
	b=tUr9D81w1I7bEaaGMCE95hiarQNtKv70RsfLC6xfExldsUOqmGcnlEu0SUbjK2xJX
	 fqklpm9F26UwgiUEjStHQ1f2YmwLyIPrJgatG7l4nPLj66QquxMzAmYKxnhugvl5V/
	 lpwbYqbvirXAeDG8dqI+FvWpez9/QKzMOI1wY1ErDJt/uAWopCuSWywL9LGv8Dsgm/
	 XmkTX2/F/xBzSMIL5R3pf4maJm7ipdD3JBxY7mosyZVFHrHuG8p5CTZBPq1Axf4AVJ
	 Cffvhi021t9kxsQIhQOaujGErxBsepVp1mXihoFG8zOJsUSTldB9lWuCcDQ4Ho/s2s
	 akrp8eXOdfoMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB4E88D72
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525813368.32299.8964831505696112132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c15c93a070f2acadb99dbb87ce86bd1e68ea68ba7c02dd4ae7153038d8fc30f
Date: Fri, 03 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775258133
