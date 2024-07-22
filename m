Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBC61849
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721685354; cv=none; b=PnTQdiGlRBzJtI9HGPi9xGvRRcMWTFnhugxUJHst5hqoOFrhDkV4JSTPEtC8Vbtvx2sfJ4pDCSlsarul3xFTtGUA2A5gn4R0czJ1LbxiwLO+MLIqo7N+3AEM/s2BJiYRpZoU2fMJiBQhRbbpM+aOGcGTGqLgFyJL0JOiilTQX7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721685354; c=relaxed/simple;
	bh=Rd0j5ItrtaMMD8FK2LfDnKqsnAfTk3s3czoDsMRYxN0=;
	h=To:Subject:From:Message-Id:Date; b=eJW93vQ39vdVZBjN8tK6lroBfwaSgi0sZUozqRdHM1C4gU5IrVUXkptl3c45mjUuRvnoPrgrzTWxY1PN6lVVCrS5GmtjqnZyMUZKrTv9DcEa+LvQR2+wY51d6sCsl69/I3YunYQkMiMjUNoon+4eSoBTeQjV2PVcF41qMKK4XBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7e3q5Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7e3q5Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E4DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721685353;
	bh=Rd0j5ItrtaMMD8FK2LfDnKqsnAfTk3s3czoDsMRYxN0=;
	h=To:Subject:From:Date:From;
	b=Y7e3q5Nx9CbuYYi3IOkOX9wzJDn77xvF8DbtavRaSLTk9Z6kpKiEPTUGuNR3pjujn
	 nd1V3/f4HEmNQ/Rw1o/7VEpxvp4cDrsUNqt3wox0IDLZ+/MhgadS+oYwkIurbxTu7o
	 zzHGP0Asm9Rncnl7mvQhOjF8J0BVAzjqpAqY8ukFP2mOdDQk9Cw3MhYpJ9qySB1UPd
	 84RpiwoKkiTPtQRyq1E0z28cLEmcRvbUa0HHiDzHP7e4ppPaTxsEY823Z0xMxVl0Hi
	 H6dAzI1G1tm97C3ysQBDpZIZOc1bF/XTbTD9rJM7ykZet06P1hscwKBD8qvbySkEPa
	 uHOD084JPyxrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90732C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168535358.3141.11824632249441916838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c02d45836843a1165b1a87359cbb8a0f6083334f0a8fda46b4f4fdf317c7ca2
Date: Mon, 22 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721685353
