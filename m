Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2CD4C97
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790304034; cv=none; b=sNDZVOkMo1LMt0a6oDEZLydAyFk/Y/EYatWhBGyH9lBMRSFbQYNGn5zY2Wmq9VD6wmXbOT7rJTDQBIBSymwO6zKd+Mqfdpo3h70b31FvlNJgvjSSP6cyUDaazmnmJxbESO1Gh1khPMxRzlWPRW0RKn4RytQadht8MoMOK3swWDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790304034; c=relaxed/simple;
	bh=K0V/Mh239atKL/r53250GCt7Krb7Ijypcp4YFpKqEXI=;
	h=To:Subject:From:Message-Id:Date; b=F4b1RQy6ksu915rARrEIFOrFftA1WJqpaQxzRqF1BmcnChBC2Z66k3IPw/bZRUj4L95xydUY56vXnRrBs2SUHU5BehPa2sL2V27HwNQKhnVFc5KKEL4oUV2/hcB4mJYy0AvgHVS54kBPXHqyeAc8tGwePZ+JV137Cs0mVaxZsR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnLetTd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnLetTd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53D4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790304033;
	bh=K0V/Mh239atKL/r53250GCt7Krb7Ijypcp4YFpKqEXI=;
	h=To:Subject:From:Date:From;
	b=CnLetTd3zu9mog/pbeAlrW/+3gj741AltFNnmreVPQTr6Zqahl0cDsI7wRKN6XIpt
	 8b0d8vzVd8ImsjtrAeFvUMYz+MfzYoWQx5qkB5M9eR3spRIZt/SjJEyj9ivDbLhp8g
	 RuC4mkAahAbyDC5ABNC6ikCQqE8XRQpGHCemwuiRWTyJa3LzLRs2JFINn3XqQyTey5
	 OYbJ8lBBsY09WBGWHuPJ4YyBE3Ee5dX7KStD2FRqfn3bF0RDrWGLuflBDIkaMOueuY
	 /IHxtcaWb/FMq/EHPaF6lp7aTFIdjYFil6ADSJb5IaYtRg1vDAd0KrqF1UPbYTol4i
	 aMQmS+oTSRvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA313C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030403373.8964.9304800179125797787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e82f6f69cbe4649f69e7a6e63a9ca827e94e2992d2da9dc8a1fc548dd775dc8
Date: Fri, 25 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790304033
