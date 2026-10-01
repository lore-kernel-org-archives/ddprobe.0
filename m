Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3C63B101C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790885434; cv=none; b=o35clA/z5pF1WPqnvJgvKPGmPd2zPn9PIrvU4e6QTb75wk494vHQujHXJUsUV18AT1PEr10aOa0A+FrS0v7xNW1rxEIr2AHRU+IaQYotYV8PtJgJWQwelVHOdqxXiWS4/H5R/o8PfVRf6jsCL8CClOSXz9uNND+X4D3kY5xImFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790885434; c=relaxed/simple;
	bh=D+DZlKVL+iDBNBBY7pCQx5ZABxbwZk5qzuP0OXG5G8Y=;
	h=To:Subject:From:Message-Id:Date; b=jPJ9rLYFPswIh/Zn3baG/U4GiGwCDQBn/skteClXhSpokwrn5CQmXuRDoTbX8b0PdeS8SB3vZBd8ed5jbyQShHhz/r/FwucmW+PsxcKzrVrob8dldIQwaaaddntuccHGn1s9ClxsMAwiFKCB94ufi/DsdjrVyi99n1xASxN32KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVsPOia3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVsPOia3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790885433;
	bh=D+DZlKVL+iDBNBBY7pCQx5ZABxbwZk5qzuP0OXG5G8Y=;
	h=To:Subject:From:Date:From;
	b=VVsPOia349m7Q0FyCZ4p6zcLjrG6jIeqpfg93WTTlSncTQwtlzSER5yb5BCIl1/dv
	 yeVAnfz52kpc2aOFH1OasKPE4vOi/HcwvxNnJJWabwYKnUO1QVD6y6BjuwpQmguKet
	 8Sz/IjbGnSXaWifyE8w6/OfJ+0mgGK5wahS0sH+7JebhdAbueBjZEWPf3QnRVqrLss
	 GDzJrl9KuflW//yTj8BPNpoSR8bvYe+qr6KTQeFrYz/9surTkb+9NViuwdoPgDHHZ5
	 oUYTIxDmk8bAcF0RQ5O4t6QJMK3RqKWjpOHYXe9LdwCETzr0JhdYQ57svRwYzxGF+d
	 s2RsBgkqXR4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B682BCA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088543371.25182.13432859547004110991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3647055065e0ab1a2aba0650fd153fef9abcca409eded5b67b3545b8ab6a0b
Date: Thu, 01 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790885433
