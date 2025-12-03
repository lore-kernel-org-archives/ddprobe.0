Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F082AE99
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764732774; cv=none; b=GYXtKAWAqorwPqcGGrV1tea5h8RBURMEwCi/wb/KfoKv9zpr+vOjaXqQJOk6ureLz6hABnl05auLrIJWwGTcgaCWnuLDyU3sWnzLRqurxVd5WK24vW9BrxYeVegaKAEXoZZ8RmAwFA3sCs3CUxgOpEhy2i8bfxZWS/SZ5wmG3jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764732774; c=relaxed/simple;
	bh=1KMgJ6s8S3fBiIWYVaztpjkbDdFvfkE41PRvu/FvdTQ=;
	h=To:Subject:From:Message-Id:Date; b=mGTQBh0JSCVomlPAj/IjMRo500HDTnjRmfqkkHYiI7kPyvZckxEUXF2jd3ZpcfK3FMaz3RAm+TjS/860ZWqMTL/LwxUUUQG4oMNsMjOdCp0zzZ7I2BXBYIx2Egy1dU1FNJvaY2ShDYt6hWJlWSgkm5+hrfkazWVBlGoeE7Fex9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG05C82y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG05C82y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5728C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764732773;
	bh=1KMgJ6s8S3fBiIWYVaztpjkbDdFvfkE41PRvu/FvdTQ=;
	h=To:Subject:From:Date:From;
	b=PG05C82yrD70V/yoSzzBO15REQJ9E0/xYHd3ZClHDhhA1XmuqH3WKGuu1ax8PPiSE
	 0KOUkMkIGt/biHN5m4PGtfvI6CC5thlDxvqeKBq/7ZhWblcDaSQWLvTuzAWIuFiBEx
	 R1FwzrbDjOmmralDrlRWta30LeMdA9Af2efGALwT2asNhsHd7cR1FYrkG/tGElaEjg
	 Vjag5/uh3v6lmc2HJ86L2A7/3WqriBvReZTdciSb/h23CG60+c9LSoBHBlr7vw0nIS
	 xIkOx0gdGaFsZwb0lM87rNCqb9CIGG6c5VH9aM20wVaiBbfiThd2EzHk51CI90bXOx
	 jQyvc3ebLwhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D8BD116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473277364.32352.8927523296064382119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3630d8089d2bf8667e866d6d74a58254f7402a72278c41394bebee131de5a79f
Date: Wed, 03 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764732773
