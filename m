Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B7257827
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774157694; cv=none; b=eYoxFJB+2RZhviKkJ8m6gT276jEXebWjWAWaEQ3i3mFJ558TM1x0X407VkPy+DRQ1Jf42mPzYuuF0Cov/jtxxPqyhk/J3gwC2HBa3Z3/yn/QKHiPiRgBbHg5cW15y+DMHn4Tmbh0XRS+I/sId+AUGaSwBR8+Ym0CF5pbMmpc4yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774157694; c=relaxed/simple;
	bh=cdL6NYF+ktDJG3n64CORC08HTsNCM1rN6zGvgqYw4LY=;
	h=To:Subject:From:Message-Id:Date; b=GlaQPXc9JmC+4RHfuJdVv0TRue36eNAYhUfW3VddcbXHYUS+fvz3rWMNNspoZKt94Rjrtu1PIqPcGNVC20GpCDSRxM43hs+HwopUyCnL8atSCgIQzEJoAbzLq9apodVYh3hTQwVzCWI2epQlQphKa9h1qs1D9NSQsSHiY3XQOVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcNkZk+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcNkZk+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5496C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774157693;
	bh=cdL6NYF+ktDJG3n64CORC08HTsNCM1rN6zGvgqYw4LY=;
	h=To:Subject:From:Date:From;
	b=JcNkZk+ygZ9cJOPZ38RA28sduc93zmgmayWsmBjWGWd0jkmA+tCLWql/CDEqRhAg0
	 enm+ublxGjoMQE7goWz/5S/kW8DjX9hh+YfYDThNgYt5PThl/8kyndI/7myY1Cn3/3
	 xppFHP7oByXBVM8SUxFc5Qm9cUUGCVHXeXTZ7o/bD4bl1QQliUyXy3ilTzDPly8vU5
	 SGc3pzfjq5L68RUlNx6DXjBW5/HguPze9+U2w5hTOOAmS5hLbG2Jq5GPLUcAhp155y
	 0EgxmdLtAWIeo+xm3MuLNXrbiSDcWTQjvGWT9oBKWcVPHH+RiSZ+x71HA0FlhINLi8
	 zrZ97hrHr8yfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D45FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415769357.16059.3180712281603741251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4276948b249740e2ba79efa6da255055816dd21abd339c99df45a952bfafb41d
Date: Sun, 22 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774157693
