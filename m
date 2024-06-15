Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDAB171A7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718480303; cv=none; b=jwDg6WnQqlYSrH41mAapKpEyCX6rJqCc4MlPWnbNuYnpgBkYnv4NtZBOZme26Ns/PV0kJCOKT9gVV+X17pkNnMbLAdQ8bgLkKrHGtQIy0nvNYON/vgxVlkEj3z89sefwSM/2tCt3dvWhcL0pQhQwJqgCrPuXL5y+TagnW2Fm2Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718480303; c=relaxed/simple;
	bh=0TiIAa/NiSV9MkBSnjXQNl6M1Z3m27Y8eak45wqC3Ik=;
	h=To:Subject:From:Message-Id:Date; b=FpnmUil+xRRq5+cczou6KHMtarlHYuarvtlzc8WfZ1zHQ469BpSLgptGMhWQ7I9qKcuBo7eTQ8vVevF2pZfXF8zXYomf1ad6EfvqskkI6urh42aW31YPgBTNnc1TNblqGeob2d4OvzLSobo2LJ/dSMAig+G/HQyBV7BQxysH0kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0hRiq/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0hRiq/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71C5C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718480302;
	bh=0TiIAa/NiSV9MkBSnjXQNl6M1Z3m27Y8eak45wqC3Ik=;
	h=To:Subject:From:Date:From;
	b=g0hRiq/kaBk87z3oTNXtjuWji0L7536kwqPc/CeAYON8/fpShvYWaFeUz2upgROrO
	 /9vmEKCITywA3vWIw5WixySdihDPDVmEYxBvCOFyUwOMtikADk14QYxTm1vPAnooOi
	 tdXgFYjcqQ53X9FYzeRrHbo1Cacnkl0vtq9SWs1EJUoXgXpRcRyeJgOfrxhzdBhCYV
	 jjd0yvBjgqJgjZpj25IAunBReFKelHVX3BA4O0ql9T8JzFxgYbQkW15sJzcnAkRus4
	 +2/r5+5yBzsQ/BGJFxO/K0qSdBgymRzc9wS0Hx7wU+pMaloWUR0gtdHM3KACqhYENX
	 nR9SnP2XF6HWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE16C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848030276.17574.10756941345992680570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ee576f0273e05506dd66ba2ba33ec640695063ce1e73d9f0bbb0efee6e83ef
Date: Sat, 15 Jun 2024 19:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718480302
