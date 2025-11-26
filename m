Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F22FDC56
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764196974; cv=none; b=D7xyBlkLNnm0QYNqidXYn+ulK1jFoH+6d9JyncWER/5EEinPgUXeFl6SgGJ034Dmn7cwfUakTvz0VTwdcNNd1x5vw7QD+UQrl2fDJ0jrq6Ns/MPvh3TXXN5vM2wruWBss30kYOMlB2WF0wFVwH4IP2Yb198Pi+ctkzM2gXtCvD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764196974; c=relaxed/simple;
	bh=FIj8SZv4aQZzWe5f2wQ12kfonoR9XoFyAsiM5JbVd0U=;
	h=To:Subject:From:Message-Id:Date; b=I40OGf3ibYsUZ5HeBB91YLfNFDeIXjr1b1Ddew3u1HABP+gslUWYUggYVe6p7qnAUTF8P3hJN9eojMk8UlRBJzFbo7qT5EISmo6pmcytY4hTDIh9fP3dYuQU9eqzk5lX9aqZZcc7cJ+5CcL/Uj0QAyu8jztGnUeUeA4JJJmq/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA0s7uP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA0s7uP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F3CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764196973;
	bh=FIj8SZv4aQZzWe5f2wQ12kfonoR9XoFyAsiM5JbVd0U=;
	h=To:Subject:From:Date:From;
	b=LA0s7uP5qunGf4NinYwqA98IL9T814rXm0XOxZrHnoXM/gxlm6TRtehZVdgwgHdYU
	 GbZFrTZB6yQ6+JGm5K+Aadt0Xp1dU0SYeAmZlq2S5WUhGKK+OJkxArgeftFPPjh9vc
	 AoaAoVr41JU/XnIBanjyBVSRsjIP+9pEOp31700zHJvqpA7/+iQBbKFU7Ic8DmCArz
	 Wuuuh4zmXON9ipIIbz4Zbr9GgYCmQkxws1A7nJbs9c7bnGYYDgdUJvFhG1Q5MpQ2de
	 Keqbfof+Ze0jThUso33KEEvzZBCLnUrEaIUyL0XCbWqmnojaUkB6hGWtyf4GSr3nPB
	 jcVxLhpFahU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B8CD111B3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419697361.27405.8419049712963464248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fbd3cd29b9f3bd92a8d1749eee060aff12cc04fe4dd3b6dfd617bc4108814f
Date: Wed, 26 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764196973
