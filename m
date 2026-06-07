Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB1028686
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780800874; cv=none; b=VnqT2v0FXDITNoG6dKfLPfY6kOxl9qGZoWSP5lAmGjzpLABiN2e4y0Oy910EGByOtc7Vk32p+xzmVmeULWpW+QzvaEMu6AVzJeqgrmLOHC5bJQIKeOXILrA6ZqYU/G+sdujYMyQt65yy+4DrUkUfDVm+Hj97LXAmOaRdGGRb7xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780800874; c=relaxed/simple;
	bh=LMUPPJYbGes39m1qGrzWIeMTFLrCNo4CIMjGbD4lT90=;
	h=To:Subject:From:Message-Id:Date; b=jxVjOwPwzNglUDavxDszHSsx6/xhnsox56MkjpftmjVfJTae6/blv8yhrLRcYO1sOkEJNTI0Kvr3mCp63qcURQsjaHTxldTurXLbcw/CSe5O67OgIIL9RKMU2nm2GxpobrUYQepxNVS1KQgrG7UjP+VmYFsooiE4+bKR65zTO0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZPn+PJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZPn+PJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82A9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780800873;
	bh=LMUPPJYbGes39m1qGrzWIeMTFLrCNo4CIMjGbD4lT90=;
	h=To:Subject:From:Date:From;
	b=QZPn+PJJA0p68/vfvE4amEYjEMc9/pG3STJAe7jb6fp08b+UkDPkoVHcWj4IGKyLg
	 rwCx1wxT31ogWsEQRE2bespa9+mYlqOdSrDcQh0rEMqInixJr98XdoFNHXyR1kKPRn
	 RTysKjNQOG4ujkGVv0xJoeFQD+p2T0GFKs5LHV88pNMLDyIZ9CXyO4DigRE2vJDdDt
	 s4zCnzyT8v8YuQidvi7IAysnsyiN7Aoc/UIy4rJlRW+DTWaOdn/6SbPUZGomMNDd3q
	 Ipd+X5Gh6+NHP1y7CgxPSrYIy2/RbeujXAlSQjwhNFAfOVoZHci8KyVPrmWHdGsJF0
	 D8Xb5jnnrb0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF908CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080087368.32029.9607835063872485113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b006be86f6cc846ce5e9e33f88375dfc5b36578c9984f76fab2154329eb6c09b
Date: Sun, 07 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780800873
