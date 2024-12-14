Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757E64A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134754; cv=none; b=i+OVkGQrr/Opp9GUXFja9F0IguklozBJYh6HEHv2H5FPGC5XJgd6jjr27HYQMbE7fGccFvndT9zuvwXXNvosnuokdj0zfjPhz02Di+GxwQtJz1wJv/vja5kqwJU9se+s+Fzuv70YfSGCb2sBOT3MzzgGGf3nM21KiE5EDwKAIjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134754; c=relaxed/simple;
	bh=IhTt1NdyH0Sp1odwLhhGKnnvD/h//XPGPLwT/u4vXx8=;
	h=To:Subject:From:Message-Id:Date; b=aoZsW/Jzo2no4CpsfhLfVy4mFdKGq7v49wpWQmwJXsZSQgwa1X2AIEHTkH63ONF5J/quiWrUxppjsfPZo7Ra5qxLF8mvIY7CSckEHUqpR9F9pEY6fEEl/z4z4utBh0XnwcVC6+PAxbRpGoORhrX6okM4NZAOWQGL1sDaZueiCpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAiGCdG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAiGCdG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF314C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734134753;
	bh=IhTt1NdyH0Sp1odwLhhGKnnvD/h//XPGPLwT/u4vXx8=;
	h=To:Subject:From:Date:From;
	b=QAiGCdG8QzTUJJfdpIwQWc/8oBJxlyhhOBQtEte8xQo3QHjS6wNxzbvWjqFMXsa0w
	 UVQAgizpLW3w6EmIQwC3EoulU6+GNB+QC+vffEPkLHsh/52PTbsmWjA4cNLnuAsULc
	 vzWmGcrgos3mYr/6M9z3Pvre41+kxxd+bueNpMQgKw7Pu+WF5YwD9hoPx9Tg2nNJD3
	 O7pfVvMJ31u5ayOxZDrQXnC5YCEBBarpJEvgqpMrleskOyz0MDK14svH2Xzamso4Se
	 YdBw4bgFreJuTzYAYA3kp74Q//XtZgFPW74enkjkMQhkCVoMuPoufhoGvgiA1Gk/cy
	 U3f5DSNx16IGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC6E7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413475365.30592.3341813527679897385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324d06c37ef7b06a66f2571647fb923bcafe4561ae35162ef5670b44411fe708
Date: Sat, 14 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734134753
