Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028CD2F692F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763977914; cv=none; b=fJPhNJ6k54lRsf0WXoVq6QdYcW2n0oFE8MJslQwFoZl9/MgOC2holx+ViuQDkVSvgldl7q3vkcxXnf87IcGU8mrp/8ybzXoUDJxehOdR1amX2dPqjtOD+US9qYYuieziC+2XZAMfkzEBnRBQOnrx2WDpnr0FwXVKtWUgHvNzD80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763977914; c=relaxed/simple;
	bh=DufhbP2ZJ8SM/JHBnEIyqsBXmctDlpu6QtC7ae97l5k=;
	h=To:Subject:From:Message-Id:Date; b=KA1xUgSqcKTp6h2ocRzlNhPqnM+xoHAydxw+Q5JlIbx+gwIwfPXr3b/5Qd1tADv2Bywqz9OANLN4aTGYz2T8/t5tw7BtjiP+1RNy6AquBk4fr3Q3Bz951ouuf3uj5yzW5T1Vu91llSzthhsakg0CAjjyqXBLjrr5MYZHEeTv94I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLSi9pDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLSi9pDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763977913;
	bh=DufhbP2ZJ8SM/JHBnEIyqsBXmctDlpu6QtC7ae97l5k=;
	h=To:Subject:From:Date:From;
	b=rLSi9pDCnlkCpEp7/Wk5YGkDo53noOSuWCW/2pnPupROPFl5yu3r90UroBRyYvj4p
	 XhvdZUdnksjgKTLD5f+a5wDkrLceDckb0zVBwvVGqZLEWrgGKD5x167DMnQgK6p9bk
	 0meeYrojwE9oerlqDd/QJoXyezLKqqc/PLbEu1+X04auhEO23Zgwq/DK+EnVvIyCHq
	 dHH8dQzxoVcze5G4pg6irZlBh+Ip3wg433gkaSf5hVMm4nCTd36VCgtphQEYhfPd2o
	 BRgdk8sK3hetiuGLqxkCuOz0oElsvGApxbx1WULUYQAzV/CPumyGrrkRF63kZI3f/6
	 UzzTBplXdubAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F34CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397791358.30977.995974899374734849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4436f8469506e0765a212c68ec4344f2c94cb4ed2a90fe443ebee76abb9a05
Date: Mon, 24 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763977913
