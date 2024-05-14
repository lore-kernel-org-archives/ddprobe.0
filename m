Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420FE224C9
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715676143; cv=none; b=oLwRTVnLrDWcNLtUqR2PdC4Io8trbDkYDSFgWuuSrPezxDjGcNBSYmdMr8GIp4ylF2HnbDzl7WEttDvNyCuPzoG/ypiPXNv9uNMvOs/2FclyV3kU6AZm/OsT5v138KkThNf7pJUYoj2iEuPswk58jArmoFg9gxbMv+nSNCeQtGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715676143; c=relaxed/simple;
	bh=03/NWDIb1FGlHTeX5Ggp5rvdVYRfSgy0Mxxa6RJb6Xk=;
	h=To:Subject:From:Message-Id:Date; b=UoCZ469bqiZUNieh0AMPU95GvBxY2vPYzAc+7O2xYcIiaS+MH7MsOTeeDI4dzHqQI12nio1ep4bHVBgbhBv5CVf/uFCCipDDY11AvRMCsoRx+HtS5FTy7WPhCc0Ru6Ngq/WOwsFu80G+IMdl6z3io3U6LW3dkYg0DgPqcoCx704=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiPSWh2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiPSWh2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A80C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715676142;
	bh=03/NWDIb1FGlHTeX5Ggp5rvdVYRfSgy0Mxxa6RJb6Xk=;
	h=To:Subject:From:Date:From;
	b=aiPSWh2m4z0Sv3OhLoSOphNGNk9G+YaNJrZ6/8lv4g5KH8ch7lH3rGoFuNijQ2Zfl
	 jFvwLLH6D+WE/zHMlxtRuhpNOXbNZs5apk3RLI/q7sTCWU1CLa19k2DFP8ha+usQmn
	 LWytEB/omd4kQd1KPdIN50wLDDSCtiJKKsRj13C8BMV9qvhkbngpdmsEcYOrvQsjj6
	 y+Ipjrukd70vHdiywB9/cVu6XNqAlCFKLXOuSwfEQR90ocM08iI/W9As1K43f67EOu
	 RO5Z5mlq1/1jEbx3mCDflo3xGnxTolPsyKl9V6dNgvOCWu5uiX6tuKHWFYq0zmc2u1
	 t+GZ/ZxefnTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28D0C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567614278.26271.5688745258912958776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e18a0405b0590cd0f9a97f22ea4751fbce9c0ff6c10cd150a7cba872f812cae
Date: Tue, 14 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715676142
