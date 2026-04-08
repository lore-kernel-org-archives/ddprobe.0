Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2542D3750
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775681733; cv=none; b=CAm9zjS5FAMIIPiFlkCh35pWqdIMJ5WGt7+i3EojVrtlk1AUy2gw0AmZQ7X2obv1iDe2FISx1z1AYCJkF+cUwjqkg2+04GseYz+JfZ+KC3nXpQmqsjR3CG/L0kCTc48gpk7uPS3tHO2udM2ztxV1B27O+zgA/Jnxd2YIMmmkfrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775681733; c=relaxed/simple;
	bh=0NdreuGID1ew3ZNqY/nixliFMZPmNShnnWq8T7nEM3I=;
	h=To:Subject:From:Message-Id:Date; b=Kzx1kMoYH9ibrxn3NpHeto7dYW69NJ1/SICzJZldVycBImnGmZvGSz5pHBerc9bpKfw3qHOLKfCO8Od4Qztd9YoCgNHCZgSb9uChu1Y7nRfhnHibYfc7sCmKXUpWbMgpueumwI373e1AkZzDGhRDGh5OZ1oEN6Qsxkvjz4/ZXgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik7o1KzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik7o1KzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF868C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775681733;
	bh=0NdreuGID1ew3ZNqY/nixliFMZPmNShnnWq8T7nEM3I=;
	h=To:Subject:From:Date:From;
	b=Ik7o1KzSlPT97HDLnXMZOLbgtrMmSz83dloq8N7iI61OMfFpcC9PzteLNohx11Mt0
	 E8rXD8KW/uJn+BeU1+4/s7pUgbgzTYLXFYRVZMtIPsO5vMe7k1VZHpTcHuvjlh2v7j
	 IGWmoTLII3IjQOy4lUJ/iXhxD2570WYpH5nea0zFpsyfhFmfB9ZcnkO09TzfVoARgg
	 dnjSI30ceC+vAwg0lT8r8EuvzXDW/gfAqBgllnGRwyFIczFxbJUxu2BqCOTYKsN9G1
	 yJ2jEtwnycUrWjQXNWZMAk79U/UI7Bh+OhwaJXkmxFo3512yDgN/L9KPvLFdEFUHEk
	 JfAZVoZHHVxww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B810FC441
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568173369.6964.14654267155591731222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cdba737cc6ae6a815c49c64665e32a11ba27fe08142e8937fae9d8a81f235d
Date: Wed, 08 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775681733
