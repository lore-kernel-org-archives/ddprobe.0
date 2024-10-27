Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D176748A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729997754; cv=none; b=hd8xpBrwNGmaOoigADfZflsoiJMXweNJgWoR+g7m/sKqshdPirhBcz3r36pHzFFaddZCRFZHDgRp+y3mm885EGT6I1hlJPslb2bW+cWX7lIfW5V6jlQFMqhiQ7BpgqY4Bh7Qj1AbNMlXfkT9X3yxAtmXYpTznphHiaCxM35Bdo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729997754; c=relaxed/simple;
	bh=sfztbdp0ITl8Bt8hdvCp8jx/6QNDXcgqCKFlrcIxDmY=;
	h=To:Subject:From:Message-Id:Date; b=HrAxbhNHbfHXNAjMHMQwOXjKRRki1P/6tAjzg6mlcEAeXEo8BBJn4aDquww3WWWDmGtcAadSBaSAlxpvHhz1/Z2D02qjZSPiwaYPCMGoiGMTDC5MZeB0BU5Vqj0cAFjERQ3sDpzuidP7zcbAYN3L4rOUS30thCt0iq0pQfYVlug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1E9H6Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1E9H6Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A4CC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729997753;
	bh=sfztbdp0ITl8Bt8hdvCp8jx/6QNDXcgqCKFlrcIxDmY=;
	h=To:Subject:From:Date:From;
	b=P1E9H6Ov7im7hB+NtkoMf0rF07eeKByNw7SULAhui8TrhI29n2Y+N0qcFt/ZF5FON
	 TRpz6EUv8Jn2FOtr0aN/biOU0Bg7k5ysnvsffniTUymDG5lIGEnbbex0o8xR3x7e89
	 2D1uqPGoeBQUQyyWUS0rzilnz25jLd3iXhd0sv4Y1F0+io7DeJxgaOkw/efpdAgtrW
	 nE14ICQgfTuLpu/z+PvIihb0aEQMsPQOGGjpjxUJJrug0T+t29oj0k58PvAhMciyEJ
	 hlcyI/ekjrz8qMR+CCMciC8dUyuHcWtH3PoQqYdi+FBy9+830a8gGAOv83O1I0KVS2
	 Ug3Bd/AdGmGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BDD0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999775361.16694.4020792709028914141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fcda275e62803d047d329551686ca05de92df954539414205aec98fb5908af7
Date: Sun, 27 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729997753
