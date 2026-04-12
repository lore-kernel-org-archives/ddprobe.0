Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214EA1A681D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776033454; cv=none; b=jJ5PhQMDsGCpoyPjEA4E9bsdqdcQFhlscJ/O3iLAHR4jqwp5gtvTxu+7mw0AaEzFrmQPAPHpQiS13o+acHRzPBRtwa614POQwC7La3AytPipUS8u62WIaTL+pjENt2qadKqpVdVrg1WvAiQycnpOXys+Nw6LNI1Q6+/ft+nocNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776033454; c=relaxed/simple;
	bh=QDSH6EP+ZeNbJWv2+u9lrA7eVcr3bYq1YLDcbv0N/ko=;
	h=To:Subject:From:Message-Id:Date; b=qKysvvIkXL17aDGYLIBtWgFWXYn2b8A0Yjk8SG2K4tPOAT6NSf6jU+4+w5bBv8zHbQ5qOoY0VOiPzQ5glxMQ3U/tz9DJY7xBoPSEfFUOhDsO4DAjkZbaJZJmGkBMHOqS2xGjYI0FccR76J5/HTIR4Kb5f9t+QT4+XKkOEucPfsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsJRrV4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsJRrV4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15FDC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776033453;
	bh=QDSH6EP+ZeNbJWv2+u9lrA7eVcr3bYq1YLDcbv0N/ko=;
	h=To:Subject:From:Date:From;
	b=LsJRrV4dV1/1U0ioEvSmqT2/8TA1w1MqVAkjRyGeGs76aeMcj/ssNjOf5vVW58Qph
	 jPC5qQphulfFJ3OeCI9B2uEFYT1wFa/7KyNUY81x0LNkHy3Yceg8gluhRA2qMvUAms
	 FANcJfQD9DMk5qGq0JBqFpEWrXZFIZP+fvaMIB9PRoHpQKUH/Tc8bJ7koMqD5GK/Xw
	 vdJaupuJP5qz2AUVsrTYVQq7d5kuGCWpA8k5BvJhomVkLiIqzOiEsooHZ3iYBR/yto
	 guEP2OZkg7Bzz3uku5bhHZQzuRsqXoarYedPUmhAqqiyO8/JjnNQ+g1YHtB0lbvi0h
	 amVBT7tYfgmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC693E93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603345368.29231.13353873437944585533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36b358eaa33ad26928847f4f6f76c6f2b717abae2595f3ff641a48b6465e6a7
Date: Sun, 12 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776033453
