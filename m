Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256617F7
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746240594; cv=none; b=iCUPOUh8cAv+U+ceJQwUIzJf0GealrGuJQggpAMjSpoT7/FQFyQek7u3El4xt0NDAK0xa1n3xnRiWTZX/bL/Ggm3NUTiKySUgMdA8BbwOOSoHNPLHuwI8uHfBKa1ve3EnJYZCuAYS84N98C52RiM2Upiyo0ZWi7ObR41/tx4i0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746240594; c=relaxed/simple;
	bh=O/GbNYZrMYzCohDXoKD4L7Mfsbo+C4GWJRm/qtqn6+s=;
	h=To:Subject:From:Message-Id:Date; b=qti6XYi31UfJ95L1rodjaUCJ/34AESiTp2KZGEpKQ5NQpfMxMh4awBLZXJg9r7MjZls+ejuvBtOUzvQ3kJRtzg29d9YZ+2aCrMVwIizIxG4DGKdyTVR8OyBdWGWc8NdUl2Ifjr5Gv1sv8SFAqAf29b0vKmsKbM2tuTriHg9vgqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt0Ljx0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt0Ljx0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746240593;
	bh=O/GbNYZrMYzCohDXoKD4L7Mfsbo+C4GWJRm/qtqn6+s=;
	h=To:Subject:From:Date:From;
	b=jt0Ljx0R1CcbzdXtxaiDq3EOKQ1oUDtk4j2uPgOkqtSxOqWmWanlDgA6h7JmYMk6G
	 AhAEQsiCagXyozrOsDrzE+ps3Zyli5h2xAdqU1vfXOlBHHnCBpk89oEUtHVYcfj8Nu
	 96jnQO7fUqvODXMjfG25ghzNr7SOAnHm1NCSb7NG4v8dSBxccqw27lI2aa8Pv2hEqV
	 VcZenq+bSI+BvWe8Qomi1wugUUnH36UP0zKrTeVhCYl4yg2EEHoTfFwO5qQGIZKfX3
	 04uYUP/k85gpgImoVtwGzfsPjeAAuzUSs6lhryBg1SUKromFBG9m3GD1OQX4KIs/rK
	 ov66L77gP/DvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91547C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624059357.12808.1340289760942113428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d28a9d2dda3a04b55d7712ffc850f51299d602038f4b1a9754e18b106be1a50
Date: Sat, 03 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746240593
