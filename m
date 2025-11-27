Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BAD201113
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764214374; cv=none; b=vGQSqcHSl9Hw0zAvhZ17Q2q5YrtLp67Tw73DyunBLNZ+Iyg60JkPH55r8vF/AUkoKoYybxHfnxGxxUlldZ5cFpPN/Rvuyxs0Y+pXAfG2kAq3N3mrkgMzehONhBXl18T0N3UKwBkHskKjMRmkb4J4y/darD4hK6UEZ7b4ges+S+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764214374; c=relaxed/simple;
	bh=rv5C3BpC01atGoEserbhtSEWMxH0gTdCkmPyS/ZYvMU=;
	h=To:Subject:From:Message-Id:Date; b=JkwiwmvhW4CS1TCDRIZcT8ZUJT04xeky1pYZEguN6XcOqG6AxPAAtsPzhGVue088oolt6vZsEiNkUh2CM4zUSCKKCtKt0OiRQGESRnu1bsroezTOVVOUeCyBVd8pWZvNM/pM5VJ6+8wvm5m2CckzKdvWcuJYFGELVDkwQeMuiMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMHm0fg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMHm0fg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1159C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764214373;
	bh=rv5C3BpC01atGoEserbhtSEWMxH0gTdCkmPyS/ZYvMU=;
	h=To:Subject:From:Date:From;
	b=rMHm0fg+pWCwlIzymJ8wKqpLIJMobXJl26p7Ib90duQh87KHL13+yFNw4nuy2dyau
	 BOlatmFB05nzjj0x1DFiZSbgWDSrQDzeBfx6slnaMe0oGJiADWr7AOXRfy60C3/xZ8
	 +Q0Ewd0uBtO9QI4Qss123HaBS+lJWBgc1YlRolOaM8gnEukqmP5W36tD6AqY69RzEq
	 Acxve0TU8ke0HwRDrc5X/z1IENyL3ZBeFmLn+8IVxyKGQNRzWmMTAwW60f3cgxMtP4
	 oNRmyS0prCArpRC8yuNuJMH0LIiw0N9QRV4MnyQnka9O+2oKQkgSrXamXF/DXQVa7V
	 yNrR0BRkO0yPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2E2D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421437360.9859.13497818828033566251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9f991ca8dabcbfd28108c354753bd7ba079f44a8374fa6348cc41fd56ca415
Date: Thu, 27 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764214373
