Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596103C1090
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790548834; cv=none; b=OVvwuwZvCuWX6dWiY2q5lH6u9BTMPXMHTRIOXjanhAAKfb4EUxBkeTzEUeZI+egTum/e/IOy9Z6SyRMDJq2AkUjxO8EAWYtEQ7aXTHgmC4wAYUQSfFuB7kLaz3SblwKJHr3VlSSD8Aym69uRvRQj5+EsMXyRVVPMosUnSGievjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790548834; c=relaxed/simple;
	bh=7FlN+heqR+DkLkITqJsscdAWW/GV//fJQRZhBAMVBHs=;
	h=To:Subject:From:Message-Id:Date; b=VhUG6xlvoDrtrAWcpn6zhw0zSs90DhVUlPPEEJ8P/GhLKItokRk+LYIgNpbR8fYcX2y+RqJEsjMgH0zUMuTfmJLK/I217GuXevg1tLBFkbiTcAU9IdBg9mOY8viewLF3dAsy7aIWXscI+3cqlPv0SqSGTblbqFaYMZjA32snvKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLpZt8P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLpZt8P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA108C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790548833;
	bh=7FlN+heqR+DkLkITqJsscdAWW/GV//fJQRZhBAMVBHs=;
	h=To:Subject:From:Date:From;
	b=DLpZt8P5S1D3IG/2qDVerUQZlqGqwPxGrwnFEwiZv7taelI/6WG0Rr3veXjTT09nc
	 rvRulqwOVYefr9G2N4e0qCcSn+gczzym3XZ/n4E0KkMwpNOZr8mz9J79cDzru6iZHq
	 LNW3s8Ru6o8/invVrelcKDroY5rk+VhojdmgGBO75av3NwDeryGwDW7ULkopw6Ofi5
	 FKkE9jCi1TC5njS4ngOQS9Cei0Fe6n25eBEauysQLAc3fu7SCo+KyaUhuEND57vNh2
	 VCPW7WKPXfa151vUMS3ve9Uj+yccyu/n3EbtVrUxG7ZqjuR8VPsJK9gf1oGjMMwA4M
	 Yf+6tmeZ9INmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BB2C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054883371.11589.12723116666353926925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757132a75372c01b479d4e8d1b11e775bd41ff8d473fbd7616afb06d9e57ce30
Date: Sun, 27 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790548833
