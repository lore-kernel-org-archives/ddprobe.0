Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5303C13E9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777981654; cv=none; b=HNZYX3T/yVBfEuHWuHAORWLTRU+FtHSsw9jCc4Cd0s39D2S8oluj2Vqrx2lbv2NKycUtoKfdzGgB8AgwuS7Olxr3BoACGaXXgJsQXUH9eQDIFKgURuNARYcHHTsX4QgS6rlEqjNjUtNydI6hUbV7whuaIOOshgGr3vNEL7TH+8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777981654; c=relaxed/simple;
	bh=2LXbO95nT+GagoxXO+22dzVgwoRbNyK66kVqF/BbKok=;
	h=To:Subject:From:Message-Id:Date; b=GzcLozapR4m9q3ZVkhbD0UkowL9Fn8RHbmOB/ES8cO/8tP+2qskmpEnG03zho1k2L4/LPnL/o320UQ4HGIPCObIQ2KMQ/mgW/fxanBYdpNrtbKeOzOEmhtHvMzEKGF4JdeOneNV+1mjgXkCXnIpJm/skOE6L3z4wbt0Um+tkVUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIcJnAOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIcJnAOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B176BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777981653;
	bh=2LXbO95nT+GagoxXO+22dzVgwoRbNyK66kVqF/BbKok=;
	h=To:Subject:From:Date:From;
	b=cIcJnAOD1FJY4E2FR2UHPtStdGCxUFtlaiTpguab3nmy5izcWEaloHo9uSeWSc/Fx
	 fxZbrtrav8r+B/EIDtBjNVcuSIXQSC5pPrPr2fWdJGycpg03Z1WDfe9hS/6flTOx5v
	 S3K3lmCZMSBofksQv8U1RbjMsLeXf3PhFzaPQ9bS1YtEqu0XPhX7TaWWFyT/z0Oymw
	 Usi9NV5+4r+oDqrypd5f9XIC/GlHQVaDopXAngykaxILDTwrdanByve++CCVyIXQP6
	 h6RtJwfIjfTjwsFW5Sw8dKJqJLVvvI9YZaVgbjDgBtU6gdWuNs1yH8sTFZczqR1Mu+
	 gFQ+1E/cLak3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD21FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798165369.1431.10643942050537482271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ba379771d5a3003434d13d47e41f4f934848e7a16bda3c6adf5959cf1c66ba
Date: Tue, 05 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777981653
