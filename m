Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C262DA749
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789833634; cv=none; b=uZtL80AbbN7qTMoAvHl029o//uWL+o4Zuwy6ShDgIu8OS4/wjA0vvOX8DSaxY9WtFVm09/8lcWheQUTS0pZyDDulYeq3ECv27i42tbmRwjpKppQYchOCdp9He6uWiGvEciSVpT2/VYnfBdvAWVUrZgVrqv09vaj+aDti4wwnQTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789833634; c=relaxed/simple;
	bh=CIhjTQ7OChLKmP2PywX7oxyYDsmR8qvZje0M2rv4//c=;
	h=To:Subject:From:Message-Id:Date; b=Z0iG+pZ3hwIswAJjYkcWwoZZK5ESJhX2/PuGrdFFty+ogipVpm5smcRDukBhkBa+vm3kz1ZbFRhb5ScQhwJoFRAHd0oZja8FUiWxV1F2H/oiCrbQsLKSgWr0EV3fyv5+qTPT5ON00cXDC6D9JARL3nAs1/3uxhuqedLz8gWybjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od6+5HV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od6+5HV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB61C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789833633;
	bh=CIhjTQ7OChLKmP2PywX7oxyYDsmR8qvZje0M2rv4//c=;
	h=To:Subject:From:Date:From;
	b=Od6+5HV6FKRI3Z0PxQhOWDZ58c5E6GYLHcE6BAgyK10lJw8kpK/H3R5YmNL5EeOAZ
	 InFGdv0vwpt2/2evO6Z0A+hpBvtnWi5zlSZED1dvFq/z8Ebon0QmN0IreBODOKiPJe
	 3+qvllcaQ8z78zelzRbnm1ro2LTqaVsmwjei4QzPTM2LuF8aHJEl8JRkpBuYDNW6PI
	 6gFHWDQtxLI37sGEa/ku6HBbnXlnTJGv7Tg8SnUYqkPgPuxUm2E4yNLPBop2dOsWHr
	 oB25VJ6OEME3GyNGZb9fqt0NR/GkWgUchl0+y/O8zAvVxqxEZ8cRmFyqVUELG1ZD2h
	 p+grinJSYjkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCBC982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983363368.25000.14715085404987425098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb4ed0d49f1fb1efbb101ab7d07b1f3a8ac43557f3c75bf5bc22fcc45590d86
Date: Sat, 19 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789833633
