Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5233A3EEAF1
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779276034; cv=none; b=ac8aM+h0uGKmm0U8wm2uaMIcQJhmQBDa6CLwXR6wmSIK/GWmMl3uthv4ylGxzn99AdBLKo0oZnqAjp8dBFdeVVBEmgdITwW7OyJU9mMu9ZlgkJNiTaEvP2aCuHzI6fmfRJhz+gEcvW5dByRwSTP5IwEmUw2cI8p61XfGLqFgVx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779276034; c=relaxed/simple;
	bh=twAaHdIU/92TrZfm/cjvucGEZwSUsnHvgw3KvNivSMI=;
	h=To:Subject:From:Message-Id:Date; b=OsW1XmLzjbo0Nfwu0apvyOZGMalJjtMj7bu6domr/hV5l9zDTJhh9l3rKyqJDj5NsbvkBm+hicNsKQwQQw9e4/Eo7GS9tdNva57usam4gJ2z/Lnte1bMhQRsAzptGAYdAZqBVWOrWuPl/QmfgnWb+TKJYMM0qFbBo8sX7UeMGHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itvuitwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itvuitwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE313C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779276033;
	bh=twAaHdIU/92TrZfm/cjvucGEZwSUsnHvgw3KvNivSMI=;
	h=To:Subject:From:Date:From;
	b=itvuitwG2mO5HEzDjfAbxmpAJxsTu7vPoo0MCtGwmSW+9a6i2ZuTnYkOH3K1xJUew
	 OvCUKApIygrq+Pyq40TXenWq/x8T591NSsACisnOyi4dS5cXW5XsVwTbvJyXIF5R9U
	 D/prN+DnSjN+Kb80WOqDcwhX0hGK7meSN8KDrQ283k9F6Kpqa4YuayCifNi/205w6a
	 pvVVWwDU7B6nwRV0N0SMCUqklpiWc7Y7DSispDj4AeXyyBdixAX0iOnILIK5H6OEzn
	 FU+qmikwbu+9EKHLS0SizO1d9oS4UavhnAHdY1m7N2Lc2r3C5YyA6Cq/Iara3Je7uD
	 sCngdC9KrptNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43BACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927603372.10978.9384670226763340111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02ff162ceb991e65b11539bdb6dc05d03e97538dfddcab304940f4d171d0052
Date: Wed, 20 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779276033
