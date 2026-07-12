Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB82701B6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783891714; cv=none; b=k7oXZjXwOiO2+46iu3DZSCy7qZv9Wu4D3bWjEIMOYRmLDILxjlw/mO3nT2H/jPfXze0C0ZiYyGkeFINevubNug3I3BKD+SfxlRYntM5yEomiOQr046xnnZA4PrchoBp1r49MUXoXAWd4AcWrP/JJugFGBR/PTGLUb97SR9UU/8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783891714; c=relaxed/simple;
	bh=yKiQpHfMZbtDdIW9N3xYQA9FIfM2pXS7TUCl59nXoCQ=;
	h=To:Subject:From:Message-Id:Date; b=JikNioZma0roX0GG2d4ulTQgZwXoo+sjnl3MQyQ6JhAIYhJ8YJmw3ErmPzviG6xNM8rnDDLMU0Ap6QPmu2LmiHUewffUwTQSeSa/9pBjujeel134QydVEkIr1bE4p06ox0BqAyNVL74hMdwzhaOZcaIboyGxJOZKxWcTORdJmi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUGZg/fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUGZg/fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE05C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783891713;
	bh=yKiQpHfMZbtDdIW9N3xYQA9FIfM2pXS7TUCl59nXoCQ=;
	h=To:Subject:From:Date:From;
	b=UUGZg/fw8C1Sre8fweYIdyvTSfZqY1ODohJIbHd9ISkXUEvAebZYusnMcTlMlc+dR
	 zG5OLnAK24LIXLLzzMpwiOtgmu7xvLHOBHLq0xlWVRQ7TQM54HdrgejTOUmNSw9ICX
	 MFyaHg6suIE7a2D7QO8mg9fTWe/seSJ9FaX5kaS+rOLoyEZu43URL406teTIeIq+K1
	 PttZa+QX/2jrNzB5FWW6U2QjLI0gKAMCwUilVQnHBnrOL1ADln4eqsdFJfLTUGvYoq
	 zvBwfbCfslsoEPOuxC0Y3kxW+efdARJRP+uriv6Uc87FvSf7zC0EmuD8Y7dc7pKFq8
	 miYoDWu291isw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86AAC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389171368.20970.15311688871571621954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945556c199d8a3273ebb1d37a7d975d7b342fd34857e386c6a2d6fb44bfc50ee
Date: Sun, 12 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783891713
