Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4F3194A66
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736304954; cv=none; b=i9B8ZcNAW0cVCfXDSjhGj70JeA7X7xWtsTKMTzNNWkvWxKKURIfufyy7sfOWOw78ESwQHQ0NYrDP0cpG/CNK4pmOncKbxRs6MmvhV1xL/Us4hu9hORWB/4lGNmLsvn+2s87KsnzyxiFySdwMTsHfHRaNql/WOHfGupoSIE4IvGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736304954; c=relaxed/simple;
	bh=+1ka3JIjMmNHzi701TLndxRwLqnIJH9K/BHpRA0WrRU=;
	h=To:Subject:From:Message-Id:Date; b=HFr2yXy+vVBdtl1ndHJICOPguN5gZRSCLC7NA0hVrsrJQhnQK3lscgwxPofIv77hJM8vCraXV2L50asQhgFYzzmMNoqkfKFrmUvEyw2RyjpWAsc9Ekev0rzzsJKVYwHVANvnygNOZ/kyzxW8xUV+lPs8NXXqFw4hQvrFTgmWTuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea9UwKoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea9UwKoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A3C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736304953;
	bh=+1ka3JIjMmNHzi701TLndxRwLqnIJH9K/BHpRA0WrRU=;
	h=To:Subject:From:Date:From;
	b=Ea9UwKoYVf+Dq/V0rk6pWoCODToowVRDwMMz85DMB9ZA0y13yKGdZCfBKwf5c4+yi
	 MFuWYiSl5f+1Gc+w5pv/etPSoV8Ck0seYZ1f0gRhRzKsMjK6AUMZDIYpfWRdOhNp6f
	 rVmTQ+QfwhZnbgzDSQ8dY+vfYVre/7kFTikaijhsNtCBdcFDlx7BGt8VcbYLJ3uBzH
	 I7w4U8dxM43C7qIXTbDh36iqjibbv4BVj86AuZmvL0EhDIiHyJpM7LxNX3AdR3B/s3
	 fePtd3zksmYIXQzk+YJk1rvVB9M4OBgk0DmUQZRd+ZvsU5SIlwAnBjsQzaQlllRONF
	 GoQ3WSFP1z2Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF91E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630495360.8115.4817807406679737310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b8361ba70f61a86cbe4d442ebbb6b56d5b50a54c0145d204a857446dbfcd40
Date: Wed, 08 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736304953
