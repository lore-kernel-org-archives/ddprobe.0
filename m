Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A047F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728210954; cv=none; b=DP2AAa0lGffj3I1xIOj7fYlseQlGiah/LXhstlTzY2q8+dkrDh1BDgklR5Jo9XaNzzy2bsZDS9dRSC/CRBWrankySyTYzgLy3r9BM5AQbQa9/JyggAMHiljJEU79EhlASwBId8ft4rX7sABfaT9SlJC8tgwqT9GDQt4AsiY34mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728210954; c=relaxed/simple;
	bh=SUKwRAQMs7SPD57FnnowiDVOK1sTN9bn86PiqLnfAHg=;
	h=To:Subject:From:Message-Id:Date; b=gyni6YylJoK1gzyF2z5jHWTMFX32oOM93dOshl/P5tKFLxsmbWB0rfm6YTZCxs1KzQdH6RIdSyLQcGZ6N5oMfzTd+BqAHxBESs1jeVxwxfKgNY2Wl2SdrvybJaFKdI6pClC+MVu2qlxDGsnuAQy+TpgXbknF7PA1dMxFGUrv7wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG6OmeKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG6OmeKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C93C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728210953;
	bh=SUKwRAQMs7SPD57FnnowiDVOK1sTN9bn86PiqLnfAHg=;
	h=To:Subject:From:Date:From;
	b=tG6OmeKBp2yyTEly6e1XZrj6qJbipbC3A9vganPEDHR4pVpBv5qx/oZT+Rp9XgGFv
	 3Flz/6cHwVzdbtKt/Kyw8Gb8jI5AAFTARh0SQXthbXALF5Up955t0QyHx9MZXOtIrM
	 ZdutRVM6A6IBhfr6ymMG3/52PpzkauXxlJ61oEwpLGUc+m4GCykWVztbnPSVR65OQp
	 DIOTk++1Cx654uZTOT9S9lFH3h/kde/wD1ymPMf8Dj8p82Vbqhhd1wUyl3rzj5HPO9
	 VO4n58MpV+NLvcfiYckscwf0rJw+8zGnjqlWB6eVJz+QEAzR8jEeP+NN5+ugTV5HDG
	 82lvtbzBwhFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEFFCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821095359.847.6566494251151031694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359c1d6abe294fe265890276556c8ae997ba2850cfd98eb965e9c74f64643aa2
Date: Sun, 06 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728210953
