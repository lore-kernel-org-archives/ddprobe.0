Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFA443CE73
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791791434; cv=none; b=kVHzt0xLhMTss+UHPHxr2Msan+HIUuhYeXG2lyHrZkmZd4Z+AFQPsUXiL10yChaQ7LqIOi2s0l0ea73hwZQk+wG11bhxbj8uuphLiCpZtKmuajf3y+nBfnxCA8BQlK/KGxnL5KfbQxcaQAkW3w8+5IwXXlymJtclvtHZi7rGA3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791791434; c=relaxed/simple;
	bh=QgmJIqmqs6QYnXNsRfChUSkJecgl9+A+xLIOyyW3crQ=;
	h=To:Subject:From:Message-Id:Date; b=e6L2m+O+bF0rD0iO/JAGbA83ceKby18jGFBdqvYqj81eWJcJTcDK20Qp5VWYLXlpyf0UjBBL/dxLgDmJ013Byz3FhFI4v9s2zYMtfVZfBgMbv5TR7+6Uzzkg7Ds9Fu604u8YeMjrHVubb2xD4/XzzZbKNTJZzYFz7EoWqMynRNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDxVj1rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDxVj1rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64E2C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791791433;
	bh=QgmJIqmqs6QYnXNsRfChUSkJecgl9+A+xLIOyyW3crQ=;
	h=To:Subject:From:Date:From;
	b=RDxVj1rzhhJeu4R9I9UXotLqwnphGOthU+sy+qzY7ziYMaEpFrTq52NkV840MFfdR
	 eUbjY9yZ8Dfj1hkRYwNv2Kk8w+MJl3I2Bm5d9PeVN9b/00zc/wjN0q1g6iU1ObhvjD
	 nscrTnpqpVZvu/P2BB5fKrxZl5huwaFhT03kdjMbxQAZjHlYTxjGtZ6q/cTWG3foJg
	 mdoxleB1KJdheR0s/WwY8k5l1A6h1kUMO/najm9oYNpemXsBOCQkGWRXZJWdXlYy+M
	 xvQvGVx33KFo23Vw1NI44kcBIudQxjZVlnT0efgcoXKX+XI9r71irjx0Pp772XpBXN
	 ecq8DJJ6O8A2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E25CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179143371.11730.10640803303836500221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5a62ffcee369832adb6abd7ee27754245054010663c90933f14f6ada2c4f16
Date: Mon, 12 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791791433
