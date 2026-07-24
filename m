Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B6023EAB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784854834; cv=none; b=P3+5QWK3Jsrt8UO+W0ycUTlO/6Qr9KyDDqDR60aCb2IXMQQCggkBNo7kBzw58vTn1pvuVtZDO1o2GkjTgsHD6dr4A3/tX1dVWluY2BaGsAZXy7QQ+SIDMIN6oAntVXW/M3KweFZ3n0qlU3CK7d1t4FEERhYKiozPUyT9zR7HDW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784854834; c=relaxed/simple;
	bh=IcRQHBl3F5NuYkJtaPpDp3d1FtK9FtJY9hDNy5lRKKI=;
	h=To:Subject:From:Message-Id:Date; b=Wdvx9dCA7AuTgUweQ4uvcc5KcNdupcJbUF+eqpj+a+TWBqB2B2eNGhgiWAfJaFQdKHfXQcqrZeIBWVE7nlfVogmn6BUH+bHP5wQ5ykPpOlHk9nUHNgwIpwS7uOGGfPSgbaQdmLBx+po2EnC6YCimGb+wMtxSykr4GIxzIRLIh9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPy1Bd/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPy1Bd/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784854833;
	bh=IcRQHBl3F5NuYkJtaPpDp3d1FtK9FtJY9hDNy5lRKKI=;
	h=To:Subject:From:Date:From;
	b=sPy1Bd/EKZ83w0R5RJdg1rWiU58hwUnWDUK3F2fDxOs4o+VlkTb1PziYcMdJKxw7j
	 pN6OpZ+yjym2u07y4XAioaMkqgpeHc0YXEYaJyspYAdF6+86awz7t1P35lO765WHVG
	 a3mMkAeE9McvVkU/Isx/9XipRnYMrGcHyGf5PDni35VxsY43Pj3TCdgM+e67o/HWqB
	 CbJ2kEdZVK0ZltS/SNyaW1gthNgVFMyp0ft0tW5TLqplFODkTT1K/0mIKXQNkdu1YF
	 g7dsKJ1hnJtl/oKeBmvabRBtfCUdAwqL2zD9f9kUC+m6c3tbGTkLSm6w31nxQp+zB0
	 T5S5G8v4PQ/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC0FC531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485483369.6394.18295964404456528270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2e5baaead5aaa910087ebc09ebcdceecca5a8aff046779a146baed8063aa8c
Date: Fri, 24 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784854833
