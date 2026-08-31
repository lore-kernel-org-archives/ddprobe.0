Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C6044C51C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788186634; cv=none; b=uKLuxFNuZCwy77e76elIUOFNJVcDGl95p18CYeARQWbi1VZ+XKU5F0YpGEzzM/j6ZhYPSbcvq7Zxq0VJ2qCuD+PSN3l9PFDHWRepZOGh0gxpVuytA55fS03luUyUbNRmcPfRuZLcn8yJwGzC4NHkDKEedt2agWXIwVJBdlM2tss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788186634; c=relaxed/simple;
	bh=eg5R4DcjfQttE6nOWntbdhgWxM6CkpR9V7/L1XtAJJA=;
	h=To:Subject:From:Message-Id:Date; b=If8lU+VcDAz0UCiAzWXSEzRQbIeC1/sMhRmF4PDGrNf6i+yaDiTI0EMFYflyRP175d3IDY4RO8rLUcI0HbMWFJyZcIX3J3rAWyvoT0Xo03Tw3PyCCLqhm1nki6qGgJCroXPvmDw8KcClTYibkRm/HcOACDFGB91dSqookfcpsAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLvWm4oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLvWm4oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6E0C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788186633;
	bh=eg5R4DcjfQttE6nOWntbdhgWxM6CkpR9V7/L1XtAJJA=;
	h=To:Subject:From:Date:From;
	b=SLvWm4oYz4vXS6ESx4qRZnth9R1xxFcFJsEnRln/2ll8iODPh/k7GYHSveCtYaZPF
	 9+aN2nqbuTgAqZ+cQaVVGC7La32aKh5mb9MEorVfRcRi3xien1ObRkZd821aeauUhe
	 dAnwWus4FJrSERlWjPjtiNvfMy/ZEpkTwvQQFmcW9fL04O1ie5mNg3GgPP5oNZYsAl
	 f07QGs9rhouHSWFS01mpJVO8UdxaX1fgjHVEL+Z3opZI/knpDEujG7gb2giehKyI3G
	 8yrnDwm6+mthv259Pfalevao6JCucxhztl4rV+9IMshYQeU3F8nhFFybWZ7PsHtHqe
	 ZEt9Sl7UvNR3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA2C624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818663368.15465.4702729953467165651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdafe269532dbda6b8759e3b38649347145661e7814355a427341c50c0154da
Date: Mon, 31 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788186633
