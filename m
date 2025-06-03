Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F33C1482F2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748915394; cv=none; b=fu4HQmIQbpYrDF92STP20y6aYzqsusJ4DkGE7FqCDYkPKqIU0jVo8o7QuvaaNpslSWp/1A+8bRqs6m4A+a9EQXYLdY62OfTYhmOtTcahDd2Xs3fEDZlIQRUpofbXeOapQrahabYTHWU/4RutMZ11mdzW0cP7cEU1XL+EEaAxWxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748915394; c=relaxed/simple;
	bh=WV1CTi8WntmXkoYH3vQ10aFfJlKG4Oynof3P1tTLlPo=;
	h=To:Subject:From:Message-Id:Date; b=LMoUZen4+FtsSfVdUPXjgCkZVGHGK6o7Dx1eYfaO/E++OINd034c5ku8UEPJj890uIl9LCkXQk07ooOCtBeMvmiZyKapK63F2PLhBXcwvKNeZvQFlbY9/m+hyNtxfEX6w73x+d7ePdfoiwsQqe6AbWJQjAJLsmhPUWXPnlF92wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+s5tO+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+s5tO+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6DFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748915393;
	bh=WV1CTi8WntmXkoYH3vQ10aFfJlKG4Oynof3P1tTLlPo=;
	h=To:Subject:From:Date:From;
	b=X+s5tO+1pQM5eH/0Yw6AUUER7rsW+LDHfqdBpVrd47GLM+Q9M8/ZhIFjphd2Lw8M/
	 xzQaRilrkkPnCgYPrfPmM6c+H8zkEQzRPg8wz3GO5nhq5oOsL/PG6U9VLc7QJRZGbj
	 pr8FfxDm1VyO8twmpSBu6YlLXi89uInuO90m9GD4P5tQFm9Cw+EU+JdqoclWBX0CJ6
	 dwiX9QTMqJC4nb/oXCpkaG1i7ilu4Q2wMyexiHwZlC20iV2AUGbRgSni4s65k9ajAS
	 8SBtXedL6GlJhtHrGGqmlu8KV2S1jYbspQTzsS7AY6KucI7T9luDMbLPZeI292lzux
	 M4Zku1lXyIaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97696C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891539361.3642.10882394737914152914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff598c1fb350adb6835b6f52f461017ede46d1bd33ba083ef6ba5aa5b30d8ef
Date: Tue, 03 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748915393
