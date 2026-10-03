Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D53C2F87B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791008434; cv=none; b=cLicbw7UFwrIcCCvdEHqQlscwreVxOLoLBUDBB27hlOUdnWoiLSv067xlMH5gHNO1Zeq3Fy3M7uE8DICg0woakBVLJjZbthVPorNWN801D7sJyvLffAO/cQmtl6riLRpLaXeB3hfPc+RTV7B//Fu4Ep6bszcNhxpBtQ5OgWcXKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791008434; c=relaxed/simple;
	bh=fFcsKpsRO+ckhZ5Gvj2pQMje3W7R/K1U86W/DJbvRco=;
	h=To:Subject:From:Message-Id:Date; b=TbUmqPsfEJFls4f0j4x9vr4okR8ZhTQyHaglYbGyyMu7ek0pyB4/RALpKba9Cx83t6/o8OkNnAPYMOT98wkVqsPlVOFBxuYkGM9yQQhRXEOiZTK8Q1cLMHkiJZuygxT+X9uTXP+1ohOJyNnGgfGpHD15WAZHfgdWhC0xtoaLNJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsTphTOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsTphTOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D184BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791008433;
	bh=fFcsKpsRO+ckhZ5Gvj2pQMje3W7R/K1U86W/DJbvRco=;
	h=To:Subject:From:Date:From;
	b=dsTphTOfiE6TULBeFaQo/kypfI9qYQwWz2hwyv5czbyCqCclyhTIrbqGBCZ6dUlHM
	 Py3JLFxQ5ZriLbANeskMyxfHom8v1s9Sf1dCmFFAO9o+rKnU2tuNwaqklJM+XjQnEv
	 ZHJ4JNpX1SLDgtlJIpiQKWj9nA624fmeI6MB42vwXhCx1dOszhrEyEaujLkDdJ7Re1
	 T0ugPcaH004qDaLeTcJASHLMu09YajRdMMkyQGeDf1KZq+dB0Qvcl1yJijLh0TyxGQ
	 HhqWGEQpXh3D1t9vVmByXBWzq8EXBi8lJw61Nsl//krwhzzoqGktlps8B/P5SluQbv
	 3cgkRi3eRFMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF2CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100843368.17219.950955607684380909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5bc7a8a3254156ab35a30c901d21ea01e87fe96c1b5c22664436abd207debe
Date: Sat, 03 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791008433
