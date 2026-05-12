Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CF383304
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778553034; cv=none; b=hy8dlc/lJBxkuvxYWd/CYtNsjDNPxWHPgKGoHu4XKkSAcWXEr7EPeyW4cwL1uCPLlsRVG8e9daeHM95+ZU1hQQ1pldsFKsQj7gtOA5v5/HcHqAhnnKS/BuJhoF+otSU5P6vt9Q1oDfJcAJPR34IkG60DwxRmEgE5rmkpBKitVUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778553034; c=relaxed/simple;
	bh=AOGfWZSJnGMvBWWXCAzLhNHzBLeqnQLuaOnMNsDpEe0=;
	h=To:Subject:From:Message-Id:Date; b=TgpafHVhmHKgOqh0uRJnEKPpdUTaU7uEf/Pe90PpLCkX6I2M87+eg0PByJXdVOzPPL/UpvyFvCqQaLt/370qTuB2/VyGMXhhGYrPOhHPxxIlGTgg8hHCNDFRpOPqnYbZ1MC1DDEpdjxnK/MOVmaiquDMD86WD29Rh5HKQT55qZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFUesbnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFUesbnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B944DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778553033;
	bh=AOGfWZSJnGMvBWWXCAzLhNHzBLeqnQLuaOnMNsDpEe0=;
	h=To:Subject:From:Date:From;
	b=cFUesbncGb9ovjUWNVGFPrnZJ8xtLHkVpLgZKW/v/n6UZ6ZOq3NtWNgh9J67L05vA
	 eN4R0AvTIu9xRDjygiei6rJBFyrPkPEmdixzqbhsufHz16wCsI6BgZHZGw3Rz8b3pH
	 OYHeNvZgGh5Uf8inK/h1txtROVzcf3tIfuQbkeCuVPid4feMOu/qgdjC1rc03I/jXQ
	 rzoXGi270ok9P9EllvaJV6QgNWShK+UArot2zVxL/rHO/kWeTymBtNyIaKxpLKVT/g
	 5I3z4sBPql3qnpsFoV0Pa/BN6gmqwOsf7kpaULGICje8C7NizUZC6glG6+C8qrL6Qd
	 vsSXu5zknKDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA444CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855303368.1995.17710834738658515547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973e2bd040561f2f3e9054b6dc1da795718d790f613c0fdc35beb2f2153b0729
Date: Tue, 12 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778553033
