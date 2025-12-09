Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC817C9E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765249374; cv=none; b=oQzi9ArhjQllHJGQ6Cr0Yk5rCbgBvAKVJ8uhuhgobkhzeDi9OmtZOgHCeWIC9L8X+Epow6zmqgv9U2gpuXz8mQI6DhzNGIgU9a6sWScPongkiBcocYWaLjqbr6WqlCgjwuakpZ/91IEydeQmPW3k7BL19F7hDob53OXBj0spgPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765249374; c=relaxed/simple;
	bh=AT7n4ruq0Y/MfKZKdvoQwI+CNDRK+wth9aOvC308zLs=;
	h=To:Subject:From:Message-Id:Date; b=PTtMzPGwiLoYTzHRJ8t1J5Ys2oST9/u2YjtPYlr7ZvpuE8ebkvnlnHP4L/utsBqC1vCw0mEml3P6XX9/VIhKa8Leb918P9IbO2MlCVbL8+eylYVqm5fpiH+ZQwWnXc5mIqHJ+w9GbOUUEXNNa5r4gdhC1zR+Ofbc0rB8K4yMmhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MllSsfIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MllSsfIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ECBC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765249373;
	bh=AT7n4ruq0Y/MfKZKdvoQwI+CNDRK+wth9aOvC308zLs=;
	h=To:Subject:From:Date:From;
	b=MllSsfIfRthL2QbmJFoIOsH5hdqT8MmNPH7AQpMX8fikP2bmrHrQk3jM7eJWdAmye
	 B4ByBoolfj0KOznzfuEH9LLOeGHBsffFcu24nFQUk1yu7XH37o1HLHuCs1T03BTYpN
	 BUtQ9rfw5iHhNBnTQrrQnSkQzFnoDA7yhK7/PffKCfo8DtzcctUzYOC8SrKsur1ODG
	 PhugMpvobw0w7DXdHEOucRWQQKa6kgrpvMFt0RDAU6q0f6Vhhs5tSYNWcGygrGneGp
	 ZKL9FgwGGqcbmd1UL0TnNzIlaZsB1rWwvQ9hCcojesIuSvAns7kOXjBI8cRQcpNRm8
	 wYn9wEcYC87gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9CD3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524937360.18121.11915606948969837341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79992aa39717deadf150a1c9ff4621799249965df2c708797e43f09c924ae8c9
Date: Tue, 09 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765249373
