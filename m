Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446917BA6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782770914; cv=none; b=SxHTpI6Cu53ULMMbMmrJIRxmMcGmSDrzCbQOF9ukont9ZcMJX+DGxZQbOQQOI7U4JVSGJTxXzWPKv1IpgUv0OtEFtt+LXozhAEVtdsldMyOJzJqj9HYqtsepzGtdd/rU7rZtuwte/FSE4dUsnZqxYd7z9O+RJ5lrhR2s666MbaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782770914; c=relaxed/simple;
	bh=1nay1dsqBwIrldjxnLktUgJocxx3mDieupzaUkbosPU=;
	h=To:Subject:From:Message-Id:Date; b=N1o1XzH19pjO5VWlzP5sW4EV1u+5Dtj5dj5jmV4TUWQZ/YEZDoOGWbmaD4iAoGpL5diSPwtT+9+Min3s7sxwxmsYvqnkaYHr367XQGvnYxrSWRRqpzRBDQQW4KRtRlfd59WuqzFU+vZKTIqYWmdnIWPX1pL0DqMqAuMbS6ya96Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNEMflNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNEMflNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDE2C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782770913;
	bh=1nay1dsqBwIrldjxnLktUgJocxx3mDieupzaUkbosPU=;
	h=To:Subject:From:Date:From;
	b=BNEMflNswJgHsuDWNeJ3hCClm5/MyqLzKmBMDmZamL+w/GYKiGm1zmSxs8Zni0bYu
	 QtkumPB6GlV0p37wVihCnvc7vcvszdqpt9KzrPmGFAxV1Vn4XIskB2zULZCbQYS+V9
	 tkSV+MzmaixNYxgOPNfB9Ocj8UVvcVbG99RkyrwmIRjpJlf2WIWr6QUBGX9faa4Z9q
	 h+tjFPrk2VC9FUpranAvnQs6kRJwMK1nOx5yDWVNmSsAXh03j9sn8Z3hoMN4o5s4b6
	 7CLGAVbmF1pYQz2Tm8pN3Wezdq7bxx/a55QQpHWj9AASbeSZ9eB5zPZA92epp2KWOH
	 ealJtXcdMpRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0521C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277091368.20796.12235919848276225283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8180c9519fd452b288a29346db85828750318db79c90657b70202b2de69cc9e4
Date: Mon, 29 Jun 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782770913
