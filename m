Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2971323506D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747821594; cv=none; b=B+mhMYx1KvUnNwbxV/goXgEXrHatywpjojWfzfxzxsgckjq2QD7pTKP5K0mXtUzOC+EsE9Fw+w/0IhHiz6DBmkxM9P3hyuFWnpvLd1CoRudPfzv1qBYop5fh8ws9iCtBv/YHKLBgG1ojoHCtbNOWi9ZwGFYG9WnTg2/VBcWN7S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747821594; c=relaxed/simple;
	bh=7QOhgVjuYGG3e7/uMqJub8U9SVZoclRoHS2eR6pqGCI=;
	h=To:Subject:From:Message-Id:Date; b=sML47S1K5v84b0qkAiKfCvW/owHJ7FUf3DSDBKYuBkOuZJ7j6bIXyy/ahH8v2BJ+cZp00NUL+HK9CRO1vecuspgXUOfAk//37nmfU7LvCHrWPy5pDfWpAlXNZBY2EWql06eOBCTdQEbWPRVKUp8clz+bwTqClVOyNWOrF/+jlQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZQByBbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZQByBbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3340C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747821593;
	bh=7QOhgVjuYGG3e7/uMqJub8U9SVZoclRoHS2eR6pqGCI=;
	h=To:Subject:From:Date:From;
	b=hZQByBbAuR+ntwVdPEs3THbh8iYKo/if826Lnn7JRhLiV3qLJrpFmhhLyxlzk/z/9
	 ofuu9RZT40Bafte8Qs7WygqaYsqXrPnIPOanjh/p2/ZX3si/JoArN5bEuDAEuaYmx6
	 5m+tfyFi98s55/PAjrx6FUEbGZiBzoKnf1GBIXAqWAAagyHkl6VImTxAswvyW8dafI
	 WJYIsQ5rFFttlzVG28GIrFBFZc9kJeRS8I+4UuFo29B/lVl57Sv6MOswESJpLnIRbq
	 Dc7OTz26xOU58Qyu2geuPfyeXtlTtxB0mBFort0jaeGW6+SFIWA+BtQpXTiKgKdU75
	 N0bLZI02DM76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314BC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782159358.26475.10280122608850318657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2136861a7c1f7a1d950ce3e5d3e6fb2cba68c61d9a7a01005665a44d4b7934
Date: Wed, 21 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747821593
