Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338871A4F2F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777082854; cv=none; b=IwmIUnGTPsvZDmfDFfaL4PRuxx0lOdBUoCcowz24bDuHxoqgxIwpz5Cw4jOP6VRtjvLTShZX39Bq493IEOcvoKG/Q/WTyNrIeplTPYiKqOpV+Mcs9m1WtG9TjZ67UnQsD0SjkRfNx7jwytoYQhhkY4+VytpkEdVc4FH3u0UkM8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777082854; c=relaxed/simple;
	bh=pJf7c95MoTTIONuzqxFmy/y6uk7uotlE0ttarNRSrCo=;
	h=To:Subject:From:Message-Id:Date; b=qvYaxFYizboML72QoEx3msla5liyhPiKOko33omgzjzzQ1JAIxfEd8WySxTE1JovWc5Cqoo39Gh371wn2g7wUW44utrXt2tRsE/C1PU1C4nLpjG5qSxTi+8BoEdLHU//uJ3yzfQHKLWS5O6bcImk7om/kqL2kLVAnU5TM3omyTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orQKM7VN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orQKM7VN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2633C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777082853;
	bh=pJf7c95MoTTIONuzqxFmy/y6uk7uotlE0ttarNRSrCo=;
	h=To:Subject:From:Date:From;
	b=orQKM7VNlrcJASg214/lIKM9pRrv6bviRRLaDjsKP2yW3jRIJytKpusmMW1UaBtvy
	 a3m+rCU2TzHLqqbptfGlVBZes+Nh/LmrxwVMpRF4k0YBh0/PWc0FOaJO9VLtCFlkyB
	 nSHlxvOoMBNPYNxwnclF08PtiKKQYmyBcV671Wyn7l+P8DUfjZ9VeU1tfl5jJ7w39j
	 mTilC3VNSi4aapv01RoeX/i80iSFvv9AmsZlOUrW6Xp1w8XElyb32/hNape800zmp0
	 er2BJA6GSRfr6RFU3oHkylW+Ail1UBdXAj5CS0L7YwRYlnoQpmsM02IhNWH8LZfjAT
	 y1Jr3vAYUHGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3117FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708285368.16253.14448710337740555963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0021e54f3deea8d3ab843e6202e35d98335576567996e4227bdd6c4485327681
Date: Sat, 25 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777082853
