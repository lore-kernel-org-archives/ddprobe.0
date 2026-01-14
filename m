Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01512264AD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768356233; cv=none; b=oShBN7n354v9ue+Q4IWbDAge1Ny10tnKKbMslVgX9/VqJEVzIudiVJwdo/UCVpvK6XPtScqtwI8iQzNsu8gX9nl7irczJMsfMqhTpTCAQ7FmX/CSSADUqMihi9OmwOrkB/dHX3k1JGNuoTylgKBruOkD6zMD4IiIRj1Rb1Awg34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768356233; c=relaxed/simple;
	bh=EBoXvp5T7PezF6KwR0zb/l5w1rK+2T0lvsWttdu+KRQ=;
	h=To:Subject:From:Message-Id:Date; b=Jtr+VEZ3f2OtS5GW0HHG4nXSDHdqLl6zE6JBr/t2/hm0UMaAz6hQTOjtYteH91lQQ5FX+PkWliVRta5mJKf3y9ygcccQ2pO0JnPuqcD+8hqmoBrfoLBqgcbIgF4yRomE/sPv4hxIo1VjZk6Lw7gjs9mZtlhoeWM4p+yRqbNc/tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs/GJ7V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs/GJ7V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5660C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768356233;
	bh=EBoXvp5T7PezF6KwR0zb/l5w1rK+2T0lvsWttdu+KRQ=;
	h=To:Subject:From:Date:From;
	b=fs/GJ7V9DeHosLTF6veFQn5m6bZdIDE9WwXRctywbZSji2bHMcyiiUNShWyAEaqTu
	 BVyoEDvLc6MqFWOH4ciKFm5p8eLQPTCm74LmyzdyMYaaWi/GOToltGap0aabE/KTMO
	 AVTl0Y7JfXnAIXJzUb+8ExxX86pHH8D/IkeTGSxj5s9mrhkPoKw6ybSV/I5zK9NazN
	 hIRSr6eareVRdC7UeKo0LimD4BMGHd91u89XpRhzFTP4j+LCMTC9uPEtcYMUWo78Iw
	 Z6XGyisPTEo3XLt+Y/r2KSVIDjpET4BM6dIEKBR/KqsmIT3/+SbLv/1PPGYx61PBFi
	 lDRtHfxnpW6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96258D31A01
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835623360.12074.9972639790318830070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b7d38a7f6afabd0d8bca2f7531a382fd5d8541071e4037c1b1de25812b860e
Date: Wed, 14 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768356233
