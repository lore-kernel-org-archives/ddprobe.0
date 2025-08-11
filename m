Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C55158DAC
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754955595; cv=none; b=mFdrK5x4SMgQZ9U9nqdztl4lQHtcRadXj9TAuuY+YK/QxFf7qEhoLVznM5dDCXtp23mhWgk3eS1QdZdfSm/a9sdwuNvhmMIqAinAbboNi6yaZ0pq5i0Ze2ACOCwlHJhLEkK6/b0Bq1kRdMGIRNysf6mPpXIlIIViPOv/oKJHAAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754955595; c=relaxed/simple;
	bh=e6u5vV7vZddqhFGeplYvVJlfq0dDozFN9zCx1h59GHk=;
	h=To:Subject:From:Message-Id:Date; b=P0e66qku7lx6fIrIqF3ZDrOo/lOSoETq+/nlpWgDywpvck5vxApFTri8ypGupAj1zJhinmSjMjBHORl5wp9bI9LhdfaKR5mKDta28q2eHc4MibGgbXFOCDSEYAq/ix6+Pu7pa+uPUAeX56STp55S31GP6iXAA0kZ0kt0bIrZyvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEvscaO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEvscaO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754955593;
	bh=e6u5vV7vZddqhFGeplYvVJlfq0dDozFN9zCx1h59GHk=;
	h=To:Subject:From:Date:From;
	b=iEvscaO5pYDpbSPrifYwnZ4QXpUkNDcA/j5hP45t3yYUQh7ZcxmKRiJ1eTRgVsZV6
	 dMhhL/5JJgV4l57qlguQjdbnDUBrGgzfY5gvRoIquqRnif7WX+XKHA/IeQjdBjw4EW
	 d5U6AZtNTiBB423iSy5mvm16EfBuUOkvmDUYUOs1Io4CBix6JlIoLH/J+u6a3KVnin
	 pnz5/wFAqtZ3x7vlMYb1ZnFvAYj21NMya80ip/qRysIsRgVhjBXVL6U9dS2MDvDL/O
	 KAZz3I/O+6Y+fXOfbc8Owv5G5jRPyZWY6tICDaoCUzqDCfpo+TkojsW6gJO4lHxjwV
	 Oxqt7hIYkmN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A1CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495559359.9868.15879994960831811710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77ea2d3d533cdf1211bfa43f3a685de8ea816477d21d58dd7c75b71c31c4581
Date: Mon, 11 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754955593
