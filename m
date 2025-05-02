Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF33259CA7
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746200394; cv=none; b=Qc0uwxYhORj+ptKeMWyBEuchhvTApPeWmFdqQjG6md8zmINicmIgTVFtX/27R79xBC55FldM1GI+wfcjMZTJElCDQwYGw6SDX8F1Nua/8W/8ZaSZ7fltJbwx4dWR/JOlfhXcDejW77Ts5zoftPwKQ84pt4qqfcZD2863m3Mybw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746200394; c=relaxed/simple;
	bh=AC4G2y82kSCjHPR6Sa48NBOzPvXao24at+r7x+iQPQY=;
	h=To:Subject:From:Message-Id:Date; b=KwU4SypmFEgO7YF/9HunmYKk4+0+AMNJiGyqHSSi2vMKKbDDoqfraf1rnTrTF6BEmrk32oXM5fvYgaGOvfpM6jOMbcEww0Zzol8i9eDXXtCm5R7Rkervp6lfZEsrQqIdrzKlqFKe7lq5o/XcVsSPHveQIMad7UQeqPmJFNaPsc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaiadIcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaiadIcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D693C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746200393;
	bh=AC4G2y82kSCjHPR6Sa48NBOzPvXao24at+r7x+iQPQY=;
	h=To:Subject:From:Date:From;
	b=DaiadIcquQukzpPP6eZMb367U1zcy861yY6g5x6Le/Z5NNpKoyFZbkaSMmfEPu3FR
	 gbv1TYXfLAGEqNECf8kJfx6R8idrJj+eKeW6Or7TMPColGKjH/p7e5RzV1euhvazHr
	 rJU2Hk5H/+FAdWTPWcmKWZgqjGsgBaA9/Zac4MMT+KId0LjT/BQY+LEUBdPYg72E1J
	 gv7/l5XvEiXo4MrWCmZ7zG1QgKb7Bg9P6zrlolUB/o0ZaWKydcnVZo/T8j8VxFyznx
	 7jV8/QAMvqfPDo0dIrdKT8ZcLDMXZRDSrsAbwwh347T1dGmH5csCGBS+fKH1CO+dck
	 eaDHb/Jt5sV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA93C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620039357.5769.11455420917524111215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005dd3935990765432074120ca94c4186ba7d42804654faa43e6e53e14ba1fa5
Date: Fri, 02 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746200393
