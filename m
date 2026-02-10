Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF321946BC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770762234; cv=none; b=ifFdrwBxDq3W+lJVf1UywxyJ+K5GEshzdfVAAqoc5r3l1rgoLZJekbxnFwvVZ1j2L7FJpVHt9qZo75woNOKZJMq7lA9F2bPX9TGwvUFW3gD+O81Mn28l/soaGlRjLZzskCqX2fhVQND4p2C8Ml+I7bPRxQ7dLxPYLJ+xVpdxsC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770762234; c=relaxed/simple;
	bh=9ZPvjt7S28GKrL5CfoCL5ArxZ9VNeBHCr07YhsvN2xM=;
	h=To:Subject:From:Message-Id:Date; b=KVEALLq9LyGOX6MAiftigZfGn/b+GrKctODhBztTfcTXwI0Ua2JqTceCGWeFR2rMYa3EjL6iUZiOCkNgPxThanzhCHpHDawFXqmBtHKrR3hG7y++JCxUTqPL1UJFb0/l8tLX857Q5cJEwHyfZMZ3kfuKEnOYn5d1fa1aRKGaVlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlZdYB2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlZdYB2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DECC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770762233;
	bh=9ZPvjt7S28GKrL5CfoCL5ArxZ9VNeBHCr07YhsvN2xM=;
	h=To:Subject:From:Date:From;
	b=mlZdYB2X5JjiKgP+RFinm0aCqTANBcu+NE00O2KCRPHMOK1U9v1FXGGHK4q3KB4dl
	 kmnhBb6+2bHaVWXuF+pc2piWDa6c8dIlxY6DVnSixdH3yBb4KUhYIZsR7myrzef0cY
	 GY/rfYWw2ZfEKFm84pYwUR4EybX1hUSSx4cS+mFnmngl4f8nqccdl3ImW6uY/cEBJQ
	 2XPXsMf5LmUbN9sm/GK28M0dtpy7fzijI4H84FGalTC9SsNaOaWl26bwsR+3Hi33gP
	 OpjWjlYaMWgMKU5v0NdNC9iIsqq7E85ZQL3Kt8gxO2xYJrxfFxsckKh2/4yqH3C54e
	 oUgSyULN8x6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F29EA3F18
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076223363.4441.11835838736269659834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d0a13f5be00877acc620234954b7258f23d74b94fab1b87fd30932020757ab
Date: Tue, 10 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770762233
