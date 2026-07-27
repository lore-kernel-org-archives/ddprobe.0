Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E99317715
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785122434; cv=none; b=VPECzwMSgaHmQrJhRR/5uGx1savkIVDOIzz0zF9V7fAOylnb2FZaDGN9BOIZvoATo9LGOT/FZa3wJz7cGWInY8mEZp4WcCjiXfLgsc6Svhxw2vXszf1Wj6wox/iDfQXUpLDKbKTZZbkrnZGiuWkqLQAN5167uFru1SoJBPLT33o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785122434; c=relaxed/simple;
	bh=QKyI4QamQB2VDmvkd0M6GYSSTUw4DVeCggU9ts/xnNw=;
	h=To:Subject:From:Message-Id:Date; b=rxQPZmpTzgYGcC5ST0K9Bd7n19s+4o2biQfzOzStdNSRmmcxW+Y+ukKMm1HoxQwCgyb/XObXuBG9Z9jxoTuplDlJmWCLuefHwSTIcH3dMjZkzhtuu3QD3HIK2nabH7IfMsGVQjiRxESg9thWdzwbD4l60jz1Re+rPFIqccKhdHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcgkUZgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcgkUZgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53B0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785122433;
	bh=QKyI4QamQB2VDmvkd0M6GYSSTUw4DVeCggU9ts/xnNw=;
	h=To:Subject:From:Date:From;
	b=DcgkUZgJD3zUaD9FQYWLzyYqGhvhXwYIJN9D+3P1Gs1QGqU3lTQ0efi4ODrkWw4JC
	 zlu5RRwTztUSuVT8OOuasMKH2O5gascn7nKpK0yTQIgg9cnp/mQDRloJnvy/6Q5W1n
	 6coJoMGTGhr2zzUH8CGzVrf1oD85fl+gnOkED1V+9MFoO0tnIv7+rX+r8bsU1Ml144
	 w8FDoaODLf9y5AfdPOVD+epOaPB1f5DpodwXTzczW2Ukyh+a1wZoajZ5Ux+WV6Lu5b
	 KFlQ2Pu3qONh4sT0oRAA8E+0/wOKRh3ACtmq2BHzQPKqunCMqdCLnufAHOrZWQ9sP3
	 CT0hDx+YUuIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FEC53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512243372.22320.2447719564929787973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2548549ccb35baca9205b74af01b383d4b1518e8d0b32ae95cf0627414f4674
Date: Mon, 27 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785122433
