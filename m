Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13086800
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783382914; cv=none; b=oGXZH4Al01ECbWfh2C625d1gJppBn8ZOZ77hDkadJDD2YWJS6FP+NRdXDRTsnFsGUMe8dnyYF5Sxp6q7E5QTHKO6ELzLx5WzrZTYt5QkW21tu5kWW9USdgkIbKqIgsErD0N6Ve2Y5ErFJg80/Ch9BSuNZl8PI5aJLfcE4Zn7/t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783382914; c=relaxed/simple;
	bh=pjtMz+p0RqpPLaZNoY53OOAzbjiTQszSOyrc69UATcQ=;
	h=To:Subject:From:Message-Id:Date; b=RO1vn4RlClUlKmsbWR7PWNhWKWqdCPdBzzXkLpkQvAxxS80Y9VoPRqehaJkISAxA83XAtfoUHXc7GY+ktmWNu9JgK6L4bUZsMnwA0Hcf+zalhXzcLZLHBEjUZUDqPlzyg77NbGB2IW4dRvn+mWqFwcL9PyxYDphxkIK0NWZYXhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxxZEGzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxxZEGzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE893C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783382913;
	bh=pjtMz+p0RqpPLaZNoY53OOAzbjiTQszSOyrc69UATcQ=;
	h=To:Subject:From:Date:From;
	b=MxxZEGzumrZXSX2ib7rxNlP1+VvY1aZZsCj2yAj14a8cOYv7NAtd3CaejeFm5Y/P+
	 KU+HC4rH+47Vj/QSYBwnATuBJbXiiY7Bv2uJOO8gCe6xiGfBnaR7DWuIlxghMRb0T9
	 Iy55JcwAC8eyapS9jp+0kI4uSURS2mHxqpb//N12OjhzMFdp2A4PPB5xc9X0ky/5BB
	 CQU+gtlZt08CxO2W3PdJF7N/ftSIjRqRIEw1NXrILtRDRT/W/Wm315ZCAJBfXjeoKn
	 zSm67Ek4UmtlF+v49cAbvEdkYd3RgsKKIF2lemztAhcgK7tOeQmMSoJvruFEf/VMza
	 fdyp7dZ3t3jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB80C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338291368.10990.6168125211767254520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d0c1c784c6bdbbf32c5a155b84403a3c672f1a519193eb23bdb259148df63f
Date: Tue, 07 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783382913
