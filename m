Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1082334C2E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708233; cv=none; b=RHvjJJRlDSHkvwc19ftLIOv7SrqQYB1ym1Ak2lBqONsmWZaoKyez5+CzV+5o1t8UpgIRP/5neTkLKCw6oTfHq8uQUHIkXSjgqv6tcaDycX6fW+A+geLWarjy3eYEKX54pqRTbMJxAMcmDwIg19nfrFeGnZVQUvlaPcUyZU+Hnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708233; c=relaxed/simple;
	bh=O8AU92NNUB9L13zmXMBjaM70R7gGqUxdXFlYZwCpoEQ=;
	h=To:Subject:From:Message-Id:Date; b=t0M69xL2cMkzbGqQ9NPbZdFi5xUbe5j18gscf5HvSNkQ54vK4hrviwpGLS1tVn51yte863IP8c+8DHusiNkxIGPZChBx2TebWmxdv0CsSiEdS2gpKE0ZxI20o4XvIUNXfbNBHMhbmYVWprLIg7TXAiP+c8B2ErPE5o6QRuPCzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9VwWV2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9VwWV2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78AC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708233;
	bh=O8AU92NNUB9L13zmXMBjaM70R7gGqUxdXFlYZwCpoEQ=;
	h=To:Subject:From:Date:From;
	b=O9VwWV2wu7d6W7PYGal9nG4haDlkn/DS/Md4K9ey42qEONWHIDWu0q1zdB6FuvAmj
	 uv/3GdutiHmohQ5pIIiZooVHMYkq0/LZq/rdym5KCihkz03eLF6hysE2ATPnAVWcH1
	 BoxeKDCTgvBlYXRgIe4TM9GyNEZrw3L7W9A6TyiG0ysPqdMrhSPVMTMKbiDSJ+JFvO
	 qqfPLziRMzFZ0ttZP6Zev9jcLI9gMDdqPHXtENgG9SK9++xJ8fQDlHrJWexd3nL+0b
	 YBbLWRf7FZMXdITl+43GKqUrQPwHC1v9uVQWMY8Mk50FIvf4Y5WsJ4P+w9PIlWr+jY
	 nhzV4hOBL9jhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04BCDC19F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770823357.19634.2381012339672149710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c4918b2abcd7b245ebcad5469a339f2ffdf206af3f5a3b97812f47dd006b23
Date: Tue, 06 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767708233
