Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333CE1C32
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729948554; cv=none; b=PC6B71REzZt1dVYbS70UcNfWF5gqR2fsS/s94hs49AHy0YRxbLsn/VEdvI20DPy0VDQwmhbgufXga73hNhUcsufFWjt2oScvNSSz5PJT0nuITz/gL9rG2dQeGSOEt/q0ky1YQ0OeER5+rCKZZgJOfI5P+3ftCo/6JEhACQNBDbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729948554; c=relaxed/simple;
	bh=rWZeoPRzAkgeZwCTyKzYx8UXURxggyO+CMUsBsXmuDo=;
	h=To:Subject:From:Message-Id:Date; b=arJxjrfOnuZGO3rGA+1uZB68r2VToWduvr6wEn10tmPx0BBueCvzxqptnL24fwW1WdJv3euDdXt6yxFwtQ0Vi+8bxFS+xL0IQq86yIdUBsNCBfTX90RcAz1PpDQNsbQUF9B5BEWkLjwtnszU/yyQYmH59LzV3UPIKV3P/uWbmHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyblkVNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyblkVNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01F1C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729948553;
	bh=rWZeoPRzAkgeZwCTyKzYx8UXURxggyO+CMUsBsXmuDo=;
	h=To:Subject:From:Date:From;
	b=tyblkVNedyXden2lhktpxjsBu0svCthSvBeH52GHiD2IMAOcdkbJTkT4gAhmmdm7f
	 Sq793vwCxI2V8Cjg0nlJ7TwZE2n5sLvngq3zixdcxqUobKgfD74u1gSgVlwH1qUHUw
	 Wg5brTlBIduJ+nP7jwuLC1OWyT4pUOhpuciUMPFNnrEcuUZVXOZ7COWFES7oDGYxZ/
	 yB5lyazpVyR4y/Li98GA+hTI9sjUaL9s2PD14ykAbqnApfUKUtHjcCpGQPQAMKkeef
	 H5nBD7UYG1Owt/GY6TV2XQMnDNttOn7iIF5KE3m/lnVtKIjven6aEpwpwQgmCp207B
	 hnAkJNDvc6iQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A1ED10BF9
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994855362.31176.15859977546897333067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a6cfee2bfa8a555b34559f7fd7380307f30cf4689cdd1f70cb4cf19d1aacbe
Date: Sat, 26 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729948553
