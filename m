Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BBC126C02
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751659194; cv=none; b=IsIXrDMIKeaq1NHSEAP0yGzVZd4G3XupFXBjihSARCsRqvQEbffyXE6zR5JTjiJGS6nsmbw49jyIp1FS2Y8PKkoDPYVBZCy8DQ40tYbeOvtJuJzlIfDYfihwDIZhWuoBpGnrtjm+0zRe86xODZNouLm16OEwweOB9yJ0OiXwvfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751659194; c=relaxed/simple;
	bh=ETLIWVYqcwPpHreHNVKFVJyT841LrB08+Mow/ZZsOto=;
	h=To:Subject:From:Message-Id:Date; b=TC94/nMqM++HaE4tqDPWEpg53/uhRt3lWRKJ8vQoqf6wqqGfBqTlUXVeNwRqbYp3Yd3/P0YeYUgLSwWjM4n0dl7ns9QtplF02THB52LQkU3FwZszGdlcISijRR2ruvLGdbhk8IW1ucw6FNsyaiYeQW0cBA6byABsrXzZVjLVqfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRpf4Q6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRpf4Q6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06ADC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751659193;
	bh=ETLIWVYqcwPpHreHNVKFVJyT841LrB08+Mow/ZZsOto=;
	h=To:Subject:From:Date:From;
	b=jRpf4Q6MpCS+vLN3xmx9r9U/bqxoq+nOzX/U4wmwfdtomNNCktKULumgEir0OV7CO
	 4M0aGLo+mRN75SmbkAnCpOsKSGcs0sqhSp68kYr/th9Eey3RteMlLP5aHu+H4AtEkt
	 q5pCq2LFYDlicTfGdEknBewTlW6s8V5GHctYZIFEWTOBZspJPqznPBgyb2RepReDVY
	 TB2PQrZP3VDCpPhVI9T6U2Hh9RTXeyvuPuIXpLSBmM3XbznuJmMgWX272r05gSxeiP
	 3J5nElS004W23FBYouSxOYgfBX6NySrP6rKLq/JcY5WF5mowFoqAZL0k4oh+XVANMO
	 7+cSTvQYcBYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DEC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165919358.30745.9770100469943037316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e499c26d03febd662a5f7ae05fc201935f09f523471be245543f88328ed37567
Date: Fri, 04 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751659193
