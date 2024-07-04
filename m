Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1171AE87F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720108523; cv=none; b=NQoHVjph5rZsd/wVXULaeq2KtmIxQz4GaxAM7jPBDFuiCByXiUa9e4vX1/VEW/JJLsFnMrV1oesR+2X41vZ5FsGh2jd3hh/uNiMV6kQHPLBCzGp6JV6tt57DZ8iAXxAv4rThvmmSfldBoiIvxpNBMh7witUX3ec3SamD0ncEiAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720108523; c=relaxed/simple;
	bh=UiOivjKCO7ujotrWdUDU+hYhkTsDG66srzFNPNn5poc=;
	h=To:Subject:From:Message-Id:Date; b=sPI1+foFnbpwvfNEMUS27KA/RiPjGy9UTZ9ZTCx8FIDu+3L/y+OGejU1xGnPA2Hc4bHzbV9ZBFkzU8Cz+TN9IMNFcCgRYpQfnA/KBjGEGGy/7OeZyV6GCkRycBUVgMHqN6XP1EB6XJOwKTSU5ZzkHbfIFJxV5aDTT0JHjbyr8Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al87RH4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al87RH4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB104C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720108522;
	bh=UiOivjKCO7ujotrWdUDU+hYhkTsDG66srzFNPNn5poc=;
	h=To:Subject:From:Date:From;
	b=al87RH4SVjttogZzXM8ODl1+r8doAY5A5YXqEpSR7C2HnE2P4wLs0dnupnfLQuDCe
	 EZwgHfm6Wk630vYYUl8ZkqUF18PS39ocYfREjngWBQCQTbtvTGBLzdO95hkKb58StI
	 ol9O6HvHq5kCYPmF1sZIQ5eAtg9LHIOwlbTUThp1ondNKiK1ANICvTyGKHME9uElWb
	 blRhTl8RcqJhkLKlBoTBzXnLXRVO8Pzly/O0QdU2mi8T2lXgoqSS0rsBCZtJiSr+OS
	 YIFu9ZGOoygNFC/+aUDaOtssHVXrP4ZbrYshHuiOOMIk/HSPMbCr8IwD1kowmjVxKD
	 uYeNH8CqME50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD2CC41513
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010852276.439.10529024792343733068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc30eec3b37ade29d65c1ff4b2a68a83da650db30c483f3b72836273bd32f85a
Date: Thu, 04 Jul 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720108522
