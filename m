Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451751EF39F
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745273994; cv=none; b=Da3pgbGp/eg94bSCOCiKE198lJCuwTtGBpVZ+ePx9t6QzpZmu4xZaZVHwoqiJ+767UptzMtUsxaBfngFhtTGNoqkiTUOarbv8juFRaTYowY45F+djF5aF5EZElA9TKbMqd4wK+mGrNqcNGWLQzE2dpoB69rCaW82Uab6Z7BOUuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745273994; c=relaxed/simple;
	bh=kYBjkQ8xG/VS9NVQMxXHgH9tiW1Nxm/C6hLIB04qMdY=;
	h=To:Subject:From:Message-Id:Date; b=oRD5R5+R3vrnQnNQgIA62tOouA8cx2D2iMpq1J5E9UtL2hwMi5RJNfiiBkpuaKcC10qJ/kugUrSRhXfmOEgAm6xNysKO8BKZT+kOxBA/UMT1jk0ysvoIhpi1Q2lHkr3pNN0hG88znXZEKEgMUvR98bx2y+EjT2w3FMOe/C/G93c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc49O8IS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc49O8IS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC159C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745273993;
	bh=kYBjkQ8xG/VS9NVQMxXHgH9tiW1Nxm/C6hLIB04qMdY=;
	h=To:Subject:From:Date:From;
	b=Gc49O8IS5G+iBZTNti92SP77EukVkTyWzPxTckqNG6g8RJUybALCPqTu8w3NZWl2o
	 kIY8hnktiauhUcYtqdfca3S3dhbU2ODeAvnzgpi1MeRcVbZj08rrx6pEOmTG34dAVw
	 xEirqlfFap+nHI8S3p1ZURAtO3t3P/ihVJTQIdWeJtZOkip4kq9PB2Yv1ggDw0k3PC
	 PfEzymGNuFyqrwbPgsIwn5YzU6MCqbPG0elWDWQbP6CDtyJcvDv6zx3dLEM0016BVL
	 hc3GzsGf2guK4lWWRaBKBg8hAJrZY4kOZ0/Inuz+ASHEITnrNihv6/AXN5c9FhcYOJ
	 9HzEChAkB7ryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB5C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527399359.16387.11337831250005024010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb859f293b1b8585b085b6922d581c160b5bec5ec6aea16538dd54375d6310d
Date: Mon, 21 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745273993
