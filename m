Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210711B425C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753743594; cv=none; b=pgH2BK/TduGY+ZMesq3uyACGkbGuFl6f1gclJ55PCkVMR657hXi8lAGeaC8IwmPL42I4ls2VQkWl/Cx/wMDpEjyG777VYiX2jz/lUFHFAgGmKd/VdGbwhAs6nKI1sUAomSzIqruwLKm7V4j/riK5PnR/JKEdlTF+LWmlvvgZckg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753743594; c=relaxed/simple;
	bh=pFcoOOp4/fFUtN6Foud8vCtS98uJ1P7ss0cvhhbCEXQ=;
	h=To:Subject:From:Message-Id:Date; b=Vy+uCpXBufCP2RoV0vS5YPihssgsL1JaE/uNMpCi00TM57xjH+b2oT2PglTSr68qNR9OsdgYnsZ6BOVx8WhXc3WcgkPr0tg74fsUyHd/UJszh4yl7Z2xKNpvVgQfP3pTeSSgXZf2+Hx6awMkyf3P5eJM/6GyN1+xccCA+J/OEmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8lZoaqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8lZoaqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19AAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753743593;
	bh=pFcoOOp4/fFUtN6Foud8vCtS98uJ1P7ss0cvhhbCEXQ=;
	h=To:Subject:From:Date:From;
	b=N8lZoaqOfVPtGgs7z93myMPkzNrdVSjv4DFeejdoj+m3HoTo1+CeMhzSjIoVKy2mH
	 MhXemhUOcPe4QuYgdDWjd5yPsnrMkRN8PBH43ZSUzamlOe/Ie4tapovGyBTZtTNogu
	 kWgFwv4U2hYnVEx3EByk37AE3ayJWVTVBcJWHjop2L8zmXlr+AqqN0rXscwZidg1s4
	 dhL7jqgq7RiV+AWy19X/MhbdRz1erU0gWlERrTq0Beq1LUFqd+whhY23Bdbckv3Mao
	 9KqAydmp2Nb6QY5MoChFL0yOiwnq3VOW8AZOqjEsPGT6a6dZxOOAJM+N40KA4QxPJh
	 S9858sNHMTucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE5C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374359357.30690.9230436819051737580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54cd7b6d259a3c333041f83a716a67318102852ccb81db0c7aa11d5ab3df7d4
Date: Mon, 28 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753743593
