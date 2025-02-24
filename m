Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C8B1A08B8
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740379734; cv=none; b=DPwkOAmj5LMKx4eDfSqLlslsWYrjfd6ry++rKPAwhl1ycyCYq/WLLdSwe8ptWeWY4uA2vAoXoSqLgQUQh2CAPaa6pCCWaQ+99dMfud/29TTXYxKo/SaIIei78m8BXIsYWZ0FkF2Kh/rTpwv2Sqjm5H7E7kwYyvW5xevSMbFsFn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740379734; c=relaxed/simple;
	bh=kvysiJoGlAkA0abp3fuVhmdh6Sz4HLL6jn4Vtyjq058=;
	h=To:Subject:From:Message-Id:Date; b=WQo5PBK6T4/u6FbwzwyEBdgOmsTnuKPoZGxks63glLDxdNQE95mOC2zDLWaJ1rRbEpuZ4a+624UE78I8GLAQnVh46+YQ3k4LeDNM1ARZqfKya6tiD6pPm0+pNEhpGF/7HgjRGrIB0BYz1wOq7aDBH/funDb/kMrzhyNkRjboyz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDPOuSeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDPOuSeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9712C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740379733;
	bh=kvysiJoGlAkA0abp3fuVhmdh6Sz4HLL6jn4Vtyjq058=;
	h=To:Subject:From:Date:From;
	b=QDPOuSeGHTyt4Mm8kAK8Ks1GYFNfrYYkqb42AMrunO4GMTqIMBaulbDWP/K76/FRc
	 zxl1D0JtMIrV8KbWhssFj/xu7Eu96iZmN9Lf5oyoIx8DAPSh3ssd6bUya9bOOgHOIU
	 RL6r2StRpCXJDDwIFCJqzQwW9IfweBB++FELQeL7P2TnUXO8BRzfGaXIUFcC9bh4o9
	 bknJw/e6UH4tjUBCEKGIbG9FQR3XCl5p1dEXlZssaVxArDf1AscAI21FKqsKkCw3Lm
	 1mR3FS+Vr08XBXlgiPbYJLC5Jq/zPlxkWi4wXrzYqYYwrBuRewI5d8QjKBnyA0TqcH
	 lpqH5IQJEMDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B19C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174037973360.31959.1201526031593532609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc4f38604615176f9016caae7ef9ee2403b60419b1c7434ce74a92f19554fbe
Date: Mon, 24 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740379733
