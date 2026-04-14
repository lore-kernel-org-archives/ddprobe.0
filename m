Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129CE391E6D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776188254; cv=none; b=o+c+miq6HxGpfwhutWRP1MKCgtZOKkwgOpEpGRku4LGV52/XKwboJEKWE4ylj004xBhAeWa0VeCBeJsrloCJvhbPJNxhAdiqdpM3S6ae7ogftBpwAt/c4Y7jJE6d7uvVXZOG1vTquWy55fKKB5RGNpQKRs3vdpjEkp6JGr8oFyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776188254; c=relaxed/simple;
	bh=y/WFVyFdtSh4WdkLtIhZtAic1XY5P5xNyYVARuim/Zc=;
	h=To:Subject:From:Message-Id:Date; b=SS/M5HHWNOX59QuY8QGoUa9MkG2BSKF9KLR4BaRN9Axv0XCx9yomj8aBAtuX0NAa9nr8W0AFnw3UlMj6fci0z03npiubuwf82rQWPM+9dvkX3w7YCf8kwhi6wy+mM632QAWmUGB0SWVQJewyJgXqvcuJeFOD7UY5wJUCPuhKmUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk3vzkU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk3vzkU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0EBC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776188253;
	bh=y/WFVyFdtSh4WdkLtIhZtAic1XY5P5xNyYVARuim/Zc=;
	h=To:Subject:From:Date:From;
	b=Lk3vzkU0392rlJIuTt2VaUyqXM5CshpOtbmKYE8oTU+4+W//PF9sNcDGkTq8eKJWJ
	 aTRkwWSArOuKWabi1pM0b2qXewK1j3Ymd07tuIp6uODf7lthwun95va7YFtMHTDx53
	 1ESwR+ccZbQi3+cF14Jhbw+GzGjdGveGIfhwSEDw0eh+DLPfoKFEe7xiASXNliNprv
	 3vsS8UxXbR3xbETbeg47nG6gEyUQJzBnQ9jzfH08nOTDl4C1g1P6Io5TFa3evtHk0W
	 6RYT7yxr5IIrUyjMiuqXinUn60k4QcvN5Qv/LjnfaeDdLkvCPEnS/LrUT835G6gXlu
	 mNRU/egYQC+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9AF9D0DA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618825368.27515.3368660342860398983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af0c1fb34dd7558bd4899196eac951de4a97d1102719e7798f95a3eb3bbf5e8
Date: Tue, 14 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776188253
