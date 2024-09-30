Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE3185B74
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727735154; cv=none; b=NGmQmMtlkCCwRKJGjuDx4s3U31XLJSXexSIcOF1rJVFrwUx2PVB1mCDkVkO4kf93bU8cA228eD7puCp03oIw7FJDvAXMaWEVQPtxazpWq9KPLnBJtmWTqcThbBdq4vwNsdDlvPji4X33kU2ue1X7GfGs14XmxjstgH/LTdvB8U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727735154; c=relaxed/simple;
	bh=7hftVmxGxG8vKF5Mq/xhSlT4lMeLhLxyGzDAoH/FX9Q=;
	h=To:Subject:From:Message-Id:Date; b=LNDv/lwJPYAubTJS/4vbM1LwTfpXPjmuSu9bv5Top5d9L2sA9ckI6Ksg+7mpXE0JMpPfE+Q2h7jrxqx4EJq40uVKauHzV6vE90mz+Dnl7PW/UZ/Q8PySNr7cpaLMM5uog4RsuPXK2xIHrBocJejpzJrPVrgoQGIBbg5wiPMp4Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obSRdNBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obSRdNBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF20C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727735153;
	bh=7hftVmxGxG8vKF5Mq/xhSlT4lMeLhLxyGzDAoH/FX9Q=;
	h=To:Subject:From:Date:From;
	b=obSRdNBMJe93OQjiumVgLF9fFaacyQ2frQDqGQaa8wQmqGd6T/SfMbMqvuzmX8VoS
	 gVsJKL1MgYZtjvoTck/stfMSGJFsQGLJ29cbRtQl1ADjraUayLy06d3Qj+0OQ63uar
	 +gVIvl8mH8+4hxHtQJzjsxp4XP4I295SeldEY6zQWNoCiI1p59f77KOCdBame2i1rM
	 by3zF1RDsbIrqDa0KYHZSShURJ/6ciNE1R+T8JdgCQ1VFVnZXzwBRXo2UkGhhX9PUV
	 qQFZjpAFE6LDMKsb9C5lNTXKD0a4z7OasPSMm7V9yhH4mtfMGQ1GnFreMGnajOafH1
	 XUJFogkwkC3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D43DCEB2C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773515360.13829.11825255670111960073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5bad53b10dbf43f19dbc02c9e6fa73ecf18df3e3e5c1e90a820511eebccf3a
Date: Mon, 30 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727735153
