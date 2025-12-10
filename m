Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2755E2E92B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765358574; cv=none; b=DTpPSPGEkXu8HXii4uFpGflRQxSqLzet4XpdaFgyQFOsqOfAeCOZeT80rQJxb8A/sHo2cDW5IwGskUX4dJlSEvFlWYMwnLNTyTZFHlyo+l5Wv+qkbHD/gprQw5MZkh+UlyHRQqd3mJ8oyCSPbgj4i3CowWIHf47X6u4Tq71nZdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765358574; c=relaxed/simple;
	bh=L0xFvGauAbWzJ1PecG6lfsbABlDY2a00BrMcNoL288k=;
	h=To:Subject:From:Message-Id:Date; b=SAeSPbqF1lm3aKl1mBXg3ZpT28M6htIpjAQ58lGL2Y0uik9aw6XrdGMjPd8NWQzeQJ1EcTgZwAxS9LHjS3lJwsu0UoXI5/jdA6MYWtrXmispMgHxFFa8K7wO42mKxR5AsTfLtEnotqGCpSidSjFc3jcy4fYygXZ/cjfC8yV5yy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJsnDkbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJsnDkbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765358573;
	bh=L0xFvGauAbWzJ1PecG6lfsbABlDY2a00BrMcNoL288k=;
	h=To:Subject:From:Date:From;
	b=dJsnDkbkQGLkmpCJp0CQtRETwhljYUDYuEkQmLkXC5v+qvzDJPnpQWTbv2kCy5eot
	 gkkmSmjGyddH1/bk8J5j8FW13eaBzas1UPNq3t+CL3a+UwE2HVkf8v9E6f+pyxDXgl
	 mpB9CU/5HLWKu4UHBDGRaQJxcAvOR0Pg7H4nJLNshyrBvSoJzjcOOe66d6gX6o9Eku
	 buZE30PFJg0AudrHabQNgRzpGSFEXWCW+oGMRgqAdKeJ9BYJPPXZtGk7D+stEUtnLS
	 O5xdx3BBbc79J6SawCOX1EZj7uX6mt8y7jVw4JmzlXlmGKPUVQ6cVf0d9oirhW49sb
	 MgpXsOdx6SU6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92613D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535857358.26708.3350662565480859864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a7ba5b393f24cbe5a462c79dfcd85357511c1acf044a60d4deb99c5d9d7f76
Date: Wed, 10 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765358573
