Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F21F12E0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780236274; cv=none; b=QClihKW7fN32FWkQqWMZ5GZXViqnIJR24QkHHzYxdLJKZXtq+22datCuJnUJ17BWzcyc/cQKi53mOwLNZj6NaBy7ckGAvINErSxgPnfnntNDaYI6bxjjZHUE7OZ0bn6K/+mmVymbMJGZdl8YXCy0m97QQYJiO6DPccjjM5FGhQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780236274; c=relaxed/simple;
	bh=GFr9oyy0xqxKGOc1VaxdAKdW3lmxxgGFpq2+o6CWdaQ=;
	h=To:Subject:From:Message-Id:Date; b=B+xZJvCic2COsTijjXD1zYVeySdi/ltUJr6NPZ/zJp6R186CVUvRRZnyGECwtDx6+VgAFmNE6pXhoVFy7pNDslXbdBgpUXnPEPW8GAqn81jnm6HbVhnP98kCdrF0rZAcf36/SGbnmYBSD7T9YZxQmARO0tve9WJF2UcopnBUC1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDf+9hv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDf+9hv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E34C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780236273;
	bh=GFr9oyy0xqxKGOc1VaxdAKdW3lmxxgGFpq2+o6CWdaQ=;
	h=To:Subject:From:Date:From;
	b=LDf+9hv8mal0H4qax9z+CMKIfvHh3IwHA/T5xC9LPxBbv9cVanl3GoA8dSNXVeoW7
	 aM3b0BXXNTRybV7/xPn8Plws/FXIFabOuufDZKilnTr77r1FdprBiX45y0psu5VwTU
	 BaxdklAUUwYFLh56ll15O7l+qyb7gzVku60HrSDTi2mCO7e2mtLHo34N4bnagi1Fdi
	 2vlQIjcKz3izzpHG7XnVTYm7enEunt50EKJI9dftYQymvuYU4By82NO6C7GtJRIRkC
	 UFiR8Qd83WbpSKpUu+fseMNtPAC7XAhtcf9RnHmvur5X0WGBlnf7ayzD7YPPryW6g0
	 pf+ldwu3HMpQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8942CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023627368.11787.13318530299473609826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d1a14b5a952938c8be4f58d20d39884f805f5a3f52ef1fd566adb5e3151fde
Date: Sun, 31 May 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780236273
