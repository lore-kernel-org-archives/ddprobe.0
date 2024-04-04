Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC7C67752
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712218097; cv=none; b=KFsalnkpGc3wugHTgRlMC7hH9jW9VVAZKzQbrN4BruKjGl+nRIIRwHsDpqEzVTSoWVvBZB1JfTWDmAE0iy6pI5V7IXKeIw5x7Qv0353REtU59mZ8V3o3ogqXa+3Kq7o36CF2Ggc9ckwj8QtcxdAXRQ/EnHSsKoBh6HIth3XGiYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712218097; c=relaxed/simple;
	bh=hyDBA7V9Y0gjyl82naFqETDEmkSoLRXMbsdgzkiYFP8=;
	h=To:Subject:From:Message-Id:Date; b=YJBMCd/W1tOijWI0ibjP+PR/7YrjX5tXgCwTlLFlDwNZUBfC9zKISFEf+/ulhybYepFWRYTinD2G6fnUqJGlCVSqVka18uVABq4E27PZyY0SJlFobJweEkNpizhiIVRk9GuTw5mqraM8W+/bTRPlukzMXOR+6UlvauC4ZCgWeZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLuB0gcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLuB0gcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C6CC43390
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712218096;
	bh=hyDBA7V9Y0gjyl82naFqETDEmkSoLRXMbsdgzkiYFP8=;
	h=To:Subject:From:Date:From;
	b=HLuB0gcc5agHSsVv/d58WrQO9b6C+8zksFReoaZQXeMzdme929LzgutMLs2UJ/E07
	 5K6NJEoPe0KZizVffG25Mr1/gnmGnZ/yDYnOVJFUjGabUz3LlDN+pW/wCa8hEF96KX
	 cMYsgTUEnWNqf+aUiubWmcQ0rTILe2O6fzDvguXpJQtMeuy6LGxl4Is8bQnzXEjolM
	 cDJPoOiIzRttco+Vo6NwBhWwWwJ5ajU09yJdyZ6A0dq2dywt9KBc9tZ2fTAb944AEd
	 OuroqIxAcS2U4yb1WZBF311GXbtSH2tNLz8bBETr5hMRR57nxSDwuVUdXWEvvGGJkz
	 dZ7ry3AlmWJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFE7CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221809637.15780.5998219135769529475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffccf9b09063426828b909385d599fdd034f622dc75fa52df2589f8e2217a4e4
Date: Thu, 04 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712218096
