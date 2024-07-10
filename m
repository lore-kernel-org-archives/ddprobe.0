Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B16E4C6B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720574783; cv=none; b=BBtHp4q7jmWU9Otxm4HacvfaXUqF6CQPViMqK4v6OnVr/1IODMIToHULZ83N9BZiKRWw6oYqWRFjHGMdJu2YYxt+xv0WHjDDEuQrkRYwgFvG8BpYgqde7iReO6fgwp2SEN+jpamgkWuc9m5yurmg7xvl15AKZTc0FGadcZdzryE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720574783; c=relaxed/simple;
	bh=n+y+T/9PF+D3VjcA/mjmoSs/CkrKBL5fcjIjCHKSC7g=;
	h=To:Subject:From:Message-Id:Date; b=Aba9Wydh6kE7tq9+tQ+QEK7YRDpn1Jqm4OCFeZXP+BWCOdO5Vw9yzqtgJcyBG3uYhzUWAahXJ+2qYtrR7jbtZs1ohiQ6zfYVIjBgCmqGw/PgP95uqJpJxuyY/9Xr1AquBjsLV4KDXL1IYHcJwv3VozRh/OR6okDlXXikX/QWQk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/JjW3ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/JjW3ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9C9C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720574782;
	bh=n+y+T/9PF+D3VjcA/mjmoSs/CkrKBL5fcjIjCHKSC7g=;
	h=To:Subject:From:Date:From;
	b=r/JjW3ewqN8MiBpH52mkGmIZ6JPy2a1fJYjMf7Oul0Q/h6oxh0w/ukE2jEs9Dqb4O
	 X+vm45fFr/6/hl6+HLDQuL+l/XBbrL+S0OQeRS2LZSdpuQU4R5HevgIVyG9BSjZCCp
	 vj8idrw62flzAZhU4V4DcFpYdZ2jNgPNtYK3kE3S+5dQ6MP0fvEz9/fIacJqySuzu/
	 JSOfI6gPEbDyO7q6hwLdkyyydr6wdw6UdB1rML2N096nh1mSYLDEZFlUhIJGuLQoVC
	 pq/xlOjt8pnjf75E8ItpW7ztEU8rQeXSYMz1EulpmWg2NMDS7OXKhExWJ5mrQfH4fG
	 cc7KtubyrPmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BB0C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057478280.25366.7967271639621023466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29dc7a2fdf8d0f2a053e2e1d8aac2048f1bc07567cad17075514884a25c1e2e6
Date: Wed, 10 Jul 2024 01:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720574782
