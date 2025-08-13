Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253B8301490
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755127194; cv=none; b=Ml+KCbkuniOLV1xoFL7oAGa5eebJ/lIU6XqxbMrztiB+aA6CRrJoc/zq1t0Dj00r2nN4uEQUSYXGI4aH22dG5/tSs9VQVkc8h6FJxpvUsRyT6fc7bAOMLO3lpylV4TjGAL39VAxApn7BEavnTJGDoy9Qnl26W6ZHWpRww3uJSwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755127194; c=relaxed/simple;
	bh=PyoiGQOhAH+QWcWM8QyKFaKzxtyZAijLX4eb/MCh3xU=;
	h=To:Subject:From:Message-Id:Date; b=TtZTm6QXvksSXyYIHZDmpZqTARQxYS44pZcheguwO7qf0lgu7e3LJ1Y1u1uwQqQPM+/2o7YCcqu3CklD2mNUJHkT6oBk9c3bkCyfMj+nMlpNcxgW1bnC32P8TmBEm7D3b+6ObvYWpfGzuIa2urCJqQxf8I2CEW8Xr7dCSPTsyiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfZxx0L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfZxx0L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F596C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755127193;
	bh=PyoiGQOhAH+QWcWM8QyKFaKzxtyZAijLX4eb/MCh3xU=;
	h=To:Subject:From:Date:From;
	b=nfZxx0L9PvMxhm9MdmKY+D2bDKQOKpmiL7JuAe0GyE0mQ2HkaOWNAkyoOUPwjkz0B
	 pgSh9h0Pnrg+nDTZUFmFYl7S0DiZrnQvAIARWs3GBjQGH5x+Ukpg1+Hoc2Hs4f6vhx
	 wIVluJCLoYWXJAeJujJpOBMOVi4GVdorXOqCVAmImPO5Y5Np4TKpyKCzvPEVq93R/x
	 9OIaKfODWulrhOqL2wnjQUKgr72ysTU/mgcGWPlfr5eCh7c/vQXhoG9NpekHLFyese
	 1XwtRfXaAEk1BsptbBZZL+a0WV+Ci1pvVUKbOvK9Yeky9orA1/huH95ix4bEGKe1Dx
	 N+jc58Iyc541g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90394C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512719358.29685.464197065317566743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1de3be7a6df05568ea16e704d0363d3cad7238da82e343ca1b393d29042fa0
Date: Wed, 13 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755127193
