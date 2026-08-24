Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6113F12E2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787575834; cv=none; b=htgIviJQM03r4ODiyazB+owzaPk6GQ1cMLRj+u+MfqqN5AbjNT+FLqirr1jaQ0JGSE1uQe4Eehi0xSoLhdLjI4MPUpPVtAKzI0BVqH0c8Y4fAvjY8dslntIx4plRldtKXseqpYYS4jM9qWdiQtC+G5KyXA03cRFJ6SAyVfoGCY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787575834; c=relaxed/simple;
	bh=FQgO+5aYekJW0kYB5U/GIet9gzg0SPY5EoCnDV+xzB8=;
	h=To:Subject:From:Message-Id:Date; b=qM+F/uliCveJzIFHnV7H2sYKGFidofsnsTJFGIrriTtl0yL8CG1O+qw6EFvyWMQGAwoMzEdD2a+jIrzLPQmqclhcZP6ml97qrPzLmubnPN0zjm0l9OPUm5JkS2XlgnjCzpl0HpQLEHTh1cgw4wdCFKlBwdO3mXr5q+rE81dH2cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMF8eqIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMF8eqIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB6C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787575833;
	bh=FQgO+5aYekJW0kYB5U/GIet9gzg0SPY5EoCnDV+xzB8=;
	h=To:Subject:From:Date:From;
	b=VMF8eqIZoKkDcax1gmhSVEt6lqtk6qjrF8XWH39pAbEhfuDD5U6L03nTjomy/pLgx
	 ihsyQ+HD3ILTX8bEqC6OcOHpeMOxiB5Cek1Di+8RlntOapq2UVFxs4tBHOTsQYGq8a
	 Yi237bjCqDPSWAs94SxBK8QA2ge8wL0Rvc/lbBP1/tPnuWfJ8cPwjDfVFhpKHzS9/x
	 gctTIvy55e9h/riN9MU0DcvOBdjNmceb3m7EeeEQPWJVDs/+PAkeo9W3xc7xVjaVjJ
	 IDUHKwRNgXSO2JfB4D1wtwn5TTXTbNOrtDK+lipJwvzpy8ikPwb8rjxX7y0D5K+ciU
	 GrjmnCvasBtqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE18FC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757583370.27878.1537535787010827795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8319e6d6a669d9f3347ad97eca248193c8d28339f70882cc0f5d167c2ad85ce3
Date: Mon, 24 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787575833
