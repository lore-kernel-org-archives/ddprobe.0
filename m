Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB003EBF22
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771742094; cv=none; b=EesHULB7MlZ9xJct1uhZg0b+ocuTA/oXmk6+2bJsPu/kCwOGe2wnp5zz+/+OTpOiTPYxB2Z5ljzTDlCZD/QKy2L6wVIn8kiWuL7b+IzU7Bwz7cUwofF2dBBoCGX2ArqGRixn/uyOyBj34Qg3Oov/Z1XtHdDb5XU0dKcHSNbztwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771742094; c=relaxed/simple;
	bh=n1tSbppONQTpAwJECP2BoLfGNUwtoe+YuUDcRJKiPJ0=;
	h=To:Subject:From:Message-Id:Date; b=KgwEHU+74nCCOC+rLw6xETBPgjIFjoVfqNIPnx3wqe9yo3+Q1FqUA6l1jRQ3HmfP5eUJVWNXBr5tB1WCFR99WfmOHCpbZktze3IQQIXmX5QNL7Zadhc+TVehRzqqDp0GgnLBHwmd1PVFSfik66QlHJ2aSMi5s8z5wPExAsrgpEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPDHc0Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPDHc0Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B480CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771742093;
	bh=n1tSbppONQTpAwJECP2BoLfGNUwtoe+YuUDcRJKiPJ0=;
	h=To:Subject:From:Date:From;
	b=GPDHc0AoDn+5+C4NEzAwL0fbciiwVXDxWmSCH0gg+oyP7Q1YSC4O+LaNRVWGUvd0m
	 JDu851+NSYL6sMCD0290vT/JsRzM1OOFn2L57jw8ajpqJA92gPIFVKvadY4JASSOzx
	 akqf4uXTkh6gSyRd+7cSQ8AtjlPIiz2TDbx+BhRhl8q+P1wB08XsjSwz1Bbva9sCh/
	 dte0FPzWng9JOt2Ohd/6NYa6BTwebGQ65/yo6nqjQFg4XbRrsbKP80yA9CPW+bjU5I
	 VIZqEiulChtr+ypJ6BPc9VBXFwsPKT8eOcCnLUHDP8ry90a1xReIhDWR0qSEz+FOHy
	 yS7tpbqSZ9qUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA7C624A5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174209359.24324.10889782211770915931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08540d0019d284dfbefcaf7b4fc65a1d9f36038d802cfd53dbb5b92f7384536f
Date: Sun, 22 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771742093
