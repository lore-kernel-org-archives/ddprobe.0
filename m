Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F0128313D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765644174; cv=none; b=Bg33Pt1tdjguv7P06wc9A7vyBeMwRXuQ9Dmu3aQQ5bqtpLswWMAAf1Kjg9XE9Hftfq47JWGFezZAtF/pPzowV9jzUAsLx5HVHjnx5tN5OOVbYQ14RnxgChPcUV745Q/+UT4hNnCgQfrP5R8ul/KXegCCPrTyogdn7YLwZQPfrG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765644174; c=relaxed/simple;
	bh=mtJmrH2r50o6UxLWnqgzuHKo/0xQrQX5o03mWrSMW+c=;
	h=To:Subject:From:Message-Id:Date; b=omdzkjv8fUizeIpLhu+ur8o2Cws9R+QANMC3RnM2UeWfkziLWf1QHXMt6gd80rIougk/M1nKbNaZ6luAuk7h7WqghflAWEVPUNpHW54TH/8oshAtsyz5YLO1RexvXtoQBjVcls0m5uk8w3TbZI2aGt/6zH3SxN+1U8yQJs2Kixg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cx0eS71N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx0eS71N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765644173;
	bh=mtJmrH2r50o6UxLWnqgzuHKo/0xQrQX5o03mWrSMW+c=;
	h=To:Subject:From:Date:From;
	b=Cx0eS71NjtV4xW+jxdOq2zPWyZjq+prnMHy4AJiK1DStu2s0qV10ZQEdlf/hBZUIQ
	 n9qOB7wIwG4wv3wzoiT1EQKbUYAgkHSniD6Z9p0ceyVnMfoV4eOGhomRUMo8jLFmbU
	 u0n8lMi3kYLBYHjDbJ73aK595r4+KzbpF/hMQC963v2Yb0ah7jEFH0IhHdsjJm8LS4
	 N86g5vQ90GFYAt7eQmuxBRC/5JSniWEvcB+2kIVfH0BPLCnPTR4ODRSdV/jePYWv7f
	 0cmtw9hEg6iCQtYCx4B8fhPmsVUUOLMgZQIurO/P3USRb4GyVJF30HPwLn5i2QzGRa
	 ds+OOpmqivzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD5D5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564417358.30881.17644792308826877847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6c4d8fa6210ca8959757e13f1df541a677d126d50f351dd8dbc00217d460aa
Date: Sat, 13 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765644173
