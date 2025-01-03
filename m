Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAAD1BD9EB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735935354; cv=none; b=RpBFoqwgq8/pxOum3cett8LhaIoJIhPC3GVkTZzrLTCRfospcDZAtyGww/TqmZ64f99upimiTG4RPyiehmkGBHP8WCIQLIq0usRSL9X842dwH620OWw9Nj7osj+yl3Q330B63Vs+arYBK/qjZnWy+trduolOTyJF8mNb9z0AN7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735935354; c=relaxed/simple;
	bh=QEJdau3HqSUTwinhj6YX2oe5DzJ4ad9wEtYPfFbUR3A=;
	h=To:Subject:From:Message-Id:Date; b=bhTu+O1Q5l7YsqADcyGqHsX/mqDy0k9olNM5Q9XCY7IYmMT7RpfdYfOZbvVIPBgNR3eGDoK0CGDeXS/TeYmTgVJhCiQe9peO3xbQEA0SSIVuwBrWYmlNQJfQ58OB3blcHb5dYkOR1gsBe/U9iaW5PKrSa7gIt4NmNjxAI7fp3gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGt22BBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGt22BBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FB5C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735935353;
	bh=QEJdau3HqSUTwinhj6YX2oe5DzJ4ad9wEtYPfFbUR3A=;
	h=To:Subject:From:Date:From;
	b=WGt22BBOUPnoanuz2ZnX5GeOtx7tnp5cCbSi0+mG+MclFucN+9PW/ELOQCxAoyJ7k
	 J/6ynzL2jisYaVgPd6HAh+fxRl/6p6tK0ktdnDu33X5kMqAa1zNMfPFhkcmUHRpqBr
	 6lN9Diyz8j0wzM/oFDT9OJiXm6lcBXOiV4qaiHzL2d5ADVWWzXK3rfGdrfEcJ79Esy
	 2iZDkOjZy+GApy8M9D3SI4uTjuG7XYZvL51lzwK1WXu0dRe5IdygC47jVldT6MIaDg
	 4xTBQGBhM+/1W6ggBAkYCsg6aBsPcnJHFgmfEZXPvqML9qDXDcW7Zx8hLgIL3uAShm
	 w9dCemsrosLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9957CE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593535359.4809.1875811538253159875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d7f5337457a3daa8e9d644d6b517bb08c04bc8d6ede9d775d3464bcb975171
Date: Fri, 03 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735935353
