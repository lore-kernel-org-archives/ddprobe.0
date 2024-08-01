Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E23198A03
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722518754; cv=none; b=ocCkqwtOtDzRsLSPV4RTtgvW+wO7sOwwR5Jj/aJ68dm7DGwk9J7GkxA1FE9EK++3L+S6CLyfy8ReTPjQOLH59qn8FEIakTQFB03mnpbhqMgQcvexpOb9ri0YgELuYtODDyfqQ5+hd/ncJ/th1tOA9c/EEAesWsPAt9fWhrhE2Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722518754; c=relaxed/simple;
	bh=f3ohOSydenOnNgLaxaHqbRgHW6IQ6b6bO72p0chGLfU=;
	h=To:Subject:From:Message-Id:Date; b=p8kXmmmHX59OOmf1IikDyzI0wYgRAqGzOrcnZVDnV5wjiQIXmTJtuqCRCnFYsa4772mN+3WS1YmAlSIL4GsY8TnOSizv/w3+IQ6EMuid3cQEqI78MkYZ0lBdzfbVeOcKQ4/RsvT8pdb8URtBJRO3kG/hpbcR7TcqGU9fHw8DTnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHlaNrdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHlaNrdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA39BC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722518753;
	bh=f3ohOSydenOnNgLaxaHqbRgHW6IQ6b6bO72p0chGLfU=;
	h=To:Subject:From:Date:From;
	b=SHlaNrdjCj5OH/7Sqz8vRd/BkYAtQDiKQPgtj7C1HI4uucmShELdLezUOEkgCmh4k
	 VRKG1gow4/1Zl05khPmmQvliMrfvJ+/tN7ecktr5mpudKvlWnLh3Ao6nsV7pPvB5kO
	 GtP9XJJ7DNC3SdrWc8qTgZS6cKhR3uxRNJ70iBnOLC3DVwgWlDav/wZvnyZcBg+yg7
	 X8JySOaaawss5qg8sENMP8e1CljLsRZsoIYr5qVRQVSvsN9+L4sMRoLy9LvAVOqFia
	 B4N9CX52385oisFPanLE73lc6IuqkIZtPbWnfOeu408ZgX1t1B+If+6p0hquV3Ryqq
	 rVi3/ySPZmdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58FC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251875364.16516.1421957187233441071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8067f6f2b7b98639ce6771ade80556b36274fbc25fa7687ccfd05849b5a8d4bb
Date: Thu, 01 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722518753
