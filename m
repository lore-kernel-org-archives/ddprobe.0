Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EE3D515
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768707234; cv=none; b=to7qeAOh700QKuw1RqPmtudXqlBtXQBtVYCbqbcSER0ZMIRrNNWO9eP2CgGcmAKFTHlk1kSTpwAG8NiXRdY6henBHmAkeZsU7jvw5IoplV3Trt7EtsoVEIknJKrDJFyK5v/O/rHkOSgc1M9SPOmAdOf0cLAfW8TAaxyoFElINSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768707234; c=relaxed/simple;
	bh=k/wEfNsEFO6yzbC2LLxwsNhspGZB84fkcP8GQRKHb9A=;
	h=To:Subject:From:Message-Id:Date; b=Z8SPuJ71gXANH3/ntIdzsMw8naAZYePkkiVKmOKP0YvRumrKraL7nGUHyZ1A3Xhr0rqdtIC/enwEAkgqLy9fMno3/GvLkWKCS7d27f0pEaSOBwsfg/hFNyc/Om91nfEaWRk/E14X5yLccN6qhzbxpnYcd8rZo+3b4uuOLa6ef1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHoG8NX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHoG8NX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768707233;
	bh=k/wEfNsEFO6yzbC2LLxwsNhspGZB84fkcP8GQRKHb9A=;
	h=To:Subject:From:Date:From;
	b=vHoG8NX1omVlmiIO2fjQYWFiLFy4CfJOW3fmGDN6Cyd42lVEi+RX2CcKsSIaj++08
	 VqOuv8ZUBireqMHda7X2g1J7dERhvwzhQd/QTB2O7g9KUAmdvzsMAGVZQFRCXKYMLZ
	 cDWEnQp+Wu4krm0pr70D1q5/yF4emt+ThEbf/2kz8G/IaUdvS31Tf7RPghi6RdXnv/
	 c2w+z3KvUwMgoT8xWYohgbNj3i+rsjnNp83CAosroDKis4y0+Zo4/HU9lFQIirprjq
	 7W59tXfCDBgLj7U1xXpNwzKzai9Djg5d5Ng43I+yzJ5aeDNwEzjq8hoNczLqvJEnVr
	 GND3lIohV9RKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A41C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870723358.31798.14778806953356493577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a999d9b8244a405eb1b69a9109bfd23c017ca198e6f83e5957a938ec2bd834
Date: Sun, 18 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768707233
