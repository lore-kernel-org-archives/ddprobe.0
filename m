Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6EC1A2392
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768321433; cv=none; b=cGzwIktVyWJtFF3mMyTInP+w2/QP1b154EvGai2UcD5gkC+4+9fvygBVhYQaF8SJUiaubTx/uECD4dZh/PD0mLY8kJkln/7zG78bS5PkndTEQmKRi97CQaY5IrR80zU9w716BixhfuigUR1y0rOGXycmMgydY1CCtWWvQwYRfl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768321433; c=relaxed/simple;
	bh=x5H0bE3UsQrh5W8l8//QloUdpSoKB3kHB4MQrXS2AUg=;
	h=To:Subject:From:Message-Id:Date; b=C8ecXguaSrBktfK4GYxxO85aQUsFGKE2bhZYa8wnIJYYFvh6Tg5xi7/KJnIS97sFhbpUNCqQnveg876aH/EDqwbgq8tqaVTRwH19wMsD5n/W093Q483n126GD5wxMdXB/xGtsoNeZ88gGS5lZQk+MZOkI9cegos8l0ur/yayDX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux7sk6KO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux7sk6KO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E822C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768321433;
	bh=x5H0bE3UsQrh5W8l8//QloUdpSoKB3kHB4MQrXS2AUg=;
	h=To:Subject:From:Date:From;
	b=Ux7sk6KOBQTWFnMqgF+BMSFmemtceQtvKOFpsbkdoXZou4CEfnQKrmHYBhEOgaetJ
	 givpXBVJwLiGn1gHYHYCttpqjGxqEq0BhdoIveZZBAf1224Uo24TUfQ5VxEakuD1Og
	 GzCMQ/uRKx/Anvzu+uT1OliyTk/mqlKH/QCmEQcAak0iH20hGBIuvcJn3FKZOog3PI
	 QJnd5uQGHW5mv8KxTUA71S4cgO5FRs0yGMEqy342Mn3KZFHa0H/Fux1Cffxg10SBE+
	 IVq24+PbPlEEkTY/tmqmg4w3W5boqmx8y+109lKgcIZArFjzRJ06lbrSjTXfEcSnao
	 tY6Ie6AS6xrsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEDD2F33E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832143358.13332.8046687296633992127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb6f0e34b4210d31690309a55d9c27f62c1103dee65325c7a25ea303d1680aa
Date: Tue, 13 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768321433
