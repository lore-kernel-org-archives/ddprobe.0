Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214461A285
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766441034; cv=none; b=PxtVFiykxP6uxRWc+8BFWUaQqd6njmN0KTJRZBmTB/sGc3dGg7bjsVX9D5bK36zg8BcIrI9FNx0rcr6sKjEN1WeWYecvDJkEYKTd6uxWUnpUGn6+Wf/gKKbEsNht0VR0Z6tvNlFvjzz9kcKZk+/Hxd5Wt07h/2gBaIRHyd1m01o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766441034; c=relaxed/simple;
	bh=HwhAbu5wjr2wd+18+dZYHdONYu7lJUv0uQMLoPDmwo8=;
	h=To:Subject:From:Message-Id:Date; b=Vq+KF87HE3OM/+juXN3OIX38onnwVYMVsYc/wCi4kqu2D0O1KlacezBfc0t/bG9x/zVVf6OWAbMdqBfqhyH7nSsJHgFvyT6QjsvFVUhbyVXs8GWuiPZ6fYgrVWuz5AxTbdoTmibDUqGnaPkvl2KWoMwC4YFH00Yh756ZNoMZ0Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYSfQha1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYSfQha1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6207C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766441033;
	bh=HwhAbu5wjr2wd+18+dZYHdONYu7lJUv0uQMLoPDmwo8=;
	h=To:Subject:From:Date:From;
	b=GYSfQha1un3ng3oZx2ttfDuGYNtZnrAMPRYt/fGAG1qT1/soBUSx2SMsL5QeHtB1E
	 yHKdos5u7dsY9jldZfhIUfYDjYZHFw3WXTzp6EKTL9nJPo8vQZYyZftrXEmyv3jvrY
	 4zQ2iA6ndiG8AgHPb6SYszx2u+Gi9iGjWEXnVRRIqd6q0PmJzj7LO4Z9syS828YlZ5
	 SNRwx9daRKC0aCgKbD1907VB56tCnVfHE9gvl2+G9WiH1wsCRQ/vEwRNnIFhT00AQn
	 uO6jhaF+VDiVyA6ojm3AbFChMCJ5q8Ih3GuwcJKa/9A0MjF62aoFKXb5uGnJDw9VmM
	 Oy4bbW9kki9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB4E6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644103358.14094.2508782311881377141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d2b9fd0ac1d3ff162602a20da80957d6d783ce3b4a919c4d16d8c14ac3102c
Date: Mon, 22 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766441033
