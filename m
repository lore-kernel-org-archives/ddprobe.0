Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A606846C
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743304794; cv=none; b=FkbKssL1vd+lrrCwY9ClGUQ/gAcIsAuzwOh80+iRiqsC1HwJ8rwI7qDuevy+M5v6UORfSxHurY1PsG9WsdoBkuJ8fQNP04w2YYpe+GZoC1yBdb030aMl3Aq8NNZ7A6QLDvIkMSSovWkniG21QToHH0g4Qw86YWkXLnmTT8d6CrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743304794; c=relaxed/simple;
	bh=+6SLH2pleCqGUdwwXBlkrmjdN95u3Q0JTMBkdOobsV8=;
	h=To:Subject:From:Message-Id:Date; b=pZK3ddq4OlsivOh6OnayLMsxxNUJvaE23tZY8J9qO/BElEOGwNyozby44pYL6HJqt1bKQAazJIwZ/l8/7ED6MFliKY1sxqx5Ud7AABliP1MK5T5rAu/CJxloSXEurBHQvh8htL2t1+23zHh2eyaWPIGyboA7Dh5HZPBgpmddUMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFmDVR+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFmDVR+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963EC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743304793;
	bh=+6SLH2pleCqGUdwwXBlkrmjdN95u3Q0JTMBkdOobsV8=;
	h=To:Subject:From:Date:From;
	b=eFmDVR+zQFbirWWgxhmX4suA6M7aGT+2Y9e2w8Up8LA+brQvOo7CfNlVQExSOYvEi
	 bduPgQoHKpDxTVs5rfVmZnvPhb5P2KpdMdFZ5PSM8jrfahd4FZmT+MIKIGcjpnVevT
	 0JLya0+f/mbGGfmzqKa/ZQzq6Cm5Rb4NEPwDCBpF3eGp8RUt4A0riWt0icr04yI0OX
	 tmrPxrstxpPMnlCuAZjRflQn9D+/rZFfF0KHqGVFtD/dOdR+yln6clYfGhFDIVNj0E
	 FqqIogkyXzeuDerdMIJQ1hWbFez05ixzDm+PGGxkNBcC467V3MennRfGWwtBH1Mo/5
	 /Tn4j6RcUULEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95242C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330479358.12351.17304758145713087276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d603ade42c8a8a17d9553a5a9f51bf6541707fbe9af3c8a790f166c9c745316
Date: Sun, 30 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743304793
