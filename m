Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0D21401C
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749505796; cv=none; b=HgPst1fa/KpsB2DEepMyxx8RFSPZBNhTyC42C1fY4dCzSRMcgkuooYOrDOD+6xjWH5xK33yZ2k59kb73U9PHIHmLnFi1j4ziX/B+m/n2YEvO9a5nwcm2FVxLp7gLl6E7cNryikHRjBp2dVdteepz+ZVBRSBsp48mzKZ/TTrGbKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749505796; c=relaxed/simple;
	bh=pesF5mIhXhTkXxu3BSWYpFZw+TQ1oGbS9+4mRfljNxs=;
	h=To:Subject:From:Message-Id:Date; b=QnbkGr9GUXK5xy72lu4hlhOuxmXr5FSoLs0n3tylvng9oRTS6neBTJHJVvaM3LFvnmy5NXL58Ggoa4AL97EfE0BSwcW8yEnFr0yhKlr0DQvKBuBGsrq06QYW8QPre9dU70TIsZOSAsly3ipDmurTMG13fBniaZVOn6JEvzHkoZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYYdvKCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYYdvKCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1705C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749505793;
	bh=pesF5mIhXhTkXxu3BSWYpFZw+TQ1oGbS9+4mRfljNxs=;
	h=To:Subject:From:Date:From;
	b=cYYdvKCzwkkYuvYw+BibhPG9AgneQAmekt8lXqUzpzsQLglaZqLfQihMo2U9Ed+QR
	 PJ+Rt2Hu5yM/fRjRoLbh6ZoQhEhbokOzODysMfS5XWhVG2vIAsryO0NZEWkEp6FRkX
	 JCKq0cK0Ca/Q4cC7gx2mzD3wmV+VEyRI3PU7SfUW8Gw5jnl4XVjqdTpaChXZqCUUwB
	 aGlXZZf7enSa6yIHMSBx4I/IGAEY2853YvIv8+MEUXxVfgzA8JQ5Yu09GzJLjAdOPW
	 sbIZ2mPQ65PZB3GV9MBDuoHNxu9dAE+TRqzqumkkqS08LgtaodXN7JVSg9KuMxQdj0
	 LrMIoI2c01YYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7EC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950579357.335.12934244166090478252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74231c8f5966999ae4f13a85ff88339ebeb4f52b6adc09d21bd51888a97aa126
Date: Mon, 09 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749505793
