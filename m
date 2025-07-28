Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FBF6FB9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753723194; cv=none; b=s+J+m/0Q2DG8QXbYu5pnhLx0ik9k4iGwM5FcMMt0M/irHMGtxmu1HjBR8A4h9qlmHwTGMRGnzcTye9afyeETcMjnuiVtHInSjy5KvNEMXzNDfEB2AAxdXZDwcIb2wAhFnvDSYixg8AKqAgRPZF23BwiYh02bCpKyK8pi1yMEji8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753723194; c=relaxed/simple;
	bh=FXW80iiyvQIHuzloLox9R2WzVtCQBHR4sueGGqoBgYk=;
	h=To:Subject:From:Message-Id:Date; b=LDGSwyF1Q+5PRfC7wGSe/VbpQak/kGpwIHZ+2IMR8pYsedrZscX3mS+VU9bwwlhtd11x1bViZgsKquknlkBHDkKOxs1AMW248o/gmsfubJuWD0W3z7lN3e0Kd8zMIEEJC2XsriYen0xMCXVy8HB/w3x7NpXH0ffF7+Y2d5jZOdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmJ6wjji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmJ6wjji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99747C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753723193;
	bh=FXW80iiyvQIHuzloLox9R2WzVtCQBHR4sueGGqoBgYk=;
	h=To:Subject:From:Date:From;
	b=GmJ6wjjihYNAYAG61uapglI/rYzee0BDYOhTPFdZkD+6oec5w4UiqM6DOaXXc7jty
	 Gwya9INMF3iz4OMytIcC1zLYTvo88EPMISmli/iX5/nmDVzomw+eGSeN021+uPBvOP
	 pPOoP0ixsRkOVbcx59id76ToUZu2w4cMBt37JVzjduEQGUWEINv2yrloUWnM+S01dl
	 vz3uqmV5b2wR2molcW6dvcop5jMUhze6RNANp2TMTt4URXckU/Y51jEN3uEj8YN51z
	 NKzGOX4/uaThuUU//i7zoW7eKdUypgOaX3Zk6nIcuPgTZtLlprovg1508idBrZzBML
	 0h/4PS66LKPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4DC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372319358.8502.8658592837017621618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff69a7aafa0fef13caae2e47ec0fc8423cc45b2ed1afe364e85dfcd468825bd5
Date: Mon, 28 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753723193
