Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D64C15F330
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744127394; cv=none; b=P4v32TtBd+JQ0RxXitInYpk/udKBADmy11wHqipMKh2P9C4abgOQqnUyBZ5mDJi4xBYsHBVuybsAObylg9jTYWSeTlAhnn/R4l7n95bODcwlSyTvJaP6topxwxtnom5rOsvdNs+roX8y/8YiEo0tgzQwwbqpmTws1+grw2OcFCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744127394; c=relaxed/simple;
	bh=3K1PiFzvfHmLO2if07V/vy9LTLMGdynuhrxnDm4ntAU=;
	h=To:Subject:From:Message-Id:Date; b=Z76yA5NBAntNxaaPYjTZbpoHlX4a6MKyCs8OkrcDnU0lk1At7oMWIKF+/pk/uYrYR6sepZIdnXVi+Eh3s0xVDD0VtyJ7nMaI0qaBXJz2pbgKEjuyR7Rx2Df85Ca+/j1Gn2k3zC57jiBa+h0i0vv/2kLMtAhmfZFGGdCwcYN9kf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJeSjFeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJeSjFeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744127393;
	bh=3K1PiFzvfHmLO2if07V/vy9LTLMGdynuhrxnDm4ntAU=;
	h=To:Subject:From:Date:From;
	b=CJeSjFeU3xlDldlVbDedfvSCJTrX/1RK7avSuKRnWES1o6HYfDgFKkInEmahygVfM
	 0nsweZrA5o0VVDmrojyQ3P8OxBSYa+Cn1FzDN1V0yF9fQK7Pb6jG+6wj70TMsw6bDA
	 pBhFQFkxLFGsnohHM+bs0U0pyvSXvnyUh0WM/IHCWMErtTtTs06b9vmJ9wFtNFm/7z
	 VQJcYPuTXTODPzOj28woea2KNru9t8DzQIA+ODrftcm1gZyCygOc+M/hVX+imPWkjz
	 2RpghyuD98wUf+pzituIzZHZLHmhfzZfy09KFrX1NQZ0vRnibQi9GXfF2aQAwK9ces
	 0OtaqW6LU6qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65DC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412739357.29581.11714373313681400735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2e5ada6a768fa0384d1fce83c14f89c335213c7d92ef77ff328f3d4a914d2d
Date: Tue, 08 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744127393
