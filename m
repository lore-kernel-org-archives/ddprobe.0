Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE493BB5A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760650194; cv=none; b=rcVJ0mCmxdFrx4kbDf+nnsgcD84rzZkJ9L5L9+Ulz6Qn//qKSLPvozQCG84OWSuCEjn2gySV3ngg7hynZ7yich4HFFIv41r8AibW9Tg6drJ8TPZkEjMKktX85ZdD9FEg7tasQwOq5YPHScS9ugVZtmkaXEu/BiIbGrnghJrH8ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760650194; c=relaxed/simple;
	bh=G7Kc4CuhJ3aElu5W5drCqkpWPeOnyEbX9GZ3a6BYW0k=;
	h=To:Subject:From:Message-Id:Date; b=H/mz3pyGKrjDUeKaks6l+WCI2LsZfCr84uXhlSFRM+XWXGwPd91i+bXCVyhY3fO7rOlHyyIO2kfiI1vAnU2GQ/btUOuNIMb5oiD4UIjtjlMM44vjytDX9E6RALruKZyJ069kx7gqpHiYNh2FIr4O5wvyFg0bqVbAof/RjXBvZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh+o4nz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh+o4nz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C67C113D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760650193;
	bh=G7Kc4CuhJ3aElu5W5drCqkpWPeOnyEbX9GZ3a6BYW0k=;
	h=To:Subject:From:Date:From;
	b=jh+o4nz866lcUIrGqDd+O+bPqxsFA9xr+H+OXTDhA7TD4WECV34bojRA/W24RylAL
	 5xEfydkhz2toAbTMvICeEKX+L7Fw2BuyX5ldBRDCY9NxZOkC5rwZQChsYgweLKUitM
	 QqtNEmpDuaNblbmrngdNaEsQ2LPevklLWoxzVd7eGCz8yaNSkJkFdeCMD7zpeNlRws
	 nW4kzLbFT4AI3ibziCfoUxcbKpUA5Ruy18Pmq1aGk4lq4zbSckdLX+vM3HceebpRny
	 zJzu1q4YgEWyaL7Ovr3bPaK1fdqw9la8J75W3DzrEPhbdg1A7rKvoyJaVRFanCq43E
	 UhGZBUIU3GBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8ECCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065019358.26123.11288215476312346880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d3d8427a8eb3b1b560aeb429c5e50df14a39dcb63b9190f4e25cb91e111081
Date: Thu, 16 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760650193
