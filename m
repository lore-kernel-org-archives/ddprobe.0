Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D1A37703B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783391914; cv=none; b=XgyyXKPcsQ3Malxp+YIffDPSGhNDlb2QcP8thB2lN9sA8Km7APPa1aPEANDu3xQrSZVnLSDOzxl9cja2Phcfh4iMvs4lC++TB5xmNzHV5vlCp8YPp6BUWOy4xY7I1S2KFTsddXLoXUgfh3oCCrbPmyMmjXKnx5CgZ+2cvZYboWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783391914; c=relaxed/simple;
	bh=KjUPG4IZzLIFFH44a6qwK3U6bPoGqtVPF9utXjUAFMs=;
	h=To:Subject:From:Message-Id:Date; b=OXHpvIgIaWeL+bTt+jXARl2TSC9bLivEWRxpPab+XYvxh1Lx2xfbOUnZHbYPOiL8byzQjcgN42FHg9FywrDu/lw+KNrygHTbUKCvNZ8BGx0QMErLk1LQU7J0/Zz+7V8XZx3oZI1ecS5hMAdPve2yOYElnkPjrwrNZUuZgkLjZIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdcSh11F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdcSh11F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB89CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783391913;
	bh=KjUPG4IZzLIFFH44a6qwK3U6bPoGqtVPF9utXjUAFMs=;
	h=To:Subject:From:Date:From;
	b=EdcSh11FHEgB3C3H8bUy/G/RMrfHsYh6xE4o7+QYZBZaHmiap5VEOQakzccRmw8ob
	 nrCwAWKapuYy94L1vK/YgOLlHeviTKx9bPhMjwGX2oi9kkvvc/VT+rSZH0wg+UjhDf
	 AyCftXp1lsKfy/8OlYyQVFUy3imnfx4sqDR965eQYn0rqKWieYAvEqMQV4jW6PKrza
	 VSe0nvlKc6SXmF7fpzdE0+JWVLFVU6aiml8Zr52ZDkbjo+6zbFmck+zKX8enPA1EiC
	 tsxriUZuH/s4T01IMleY6mpSMbc6n5iQosUFLbgfWcGvS+BhRInql0t7Ezy6G8sRt1
	 kse3CoSBnsuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E8AC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339191370.21369.17923764615556280159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0eea56dfc25063a5e1122f27b2601ac5945491ef35c4178ad71b3206b909f3
Date: Tue, 07 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783391913
