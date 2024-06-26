Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6455E181317
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719410003; cv=none; b=rKQ1wvTcdQwla6efobhxvXJISuMLgZlCX8gyHsEKTc3y6lnvDKNFTCwlbwIZIgHdeowIRISmS7cd9aB4n67ivmNlwhG7RHP3Dl6FzSrSuKrklpy2iHDGw8EjFaZ4qqIWvjGZFFNm9Ugai+1FzM7G6jn/4IOpq/fXVBivlZWa4sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719410003; c=relaxed/simple;
	bh=R4qawWYacBl88AdvstihcrOPx6vX1ePGQMJOyOsYzfw=;
	h=To:Subject:From:Message-Id:Date; b=aQR44V6t2Uz0EmErltOWTXZDaARcEAiQLkedRJOhCd38zG3Vvk/dx7/uydTunBtM9PrqU6kXjlxQ9RmAhzcfqTHAOaX/Z7aReJCLCuAH3WNkMYSAD5UViP4Rl9uLYlI+haxr66Dff7JK98XvD5tTG96/vfzp4aS/8HJEUT5mswE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPKuoXkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPKuoXkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D300EC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719410002;
	bh=R4qawWYacBl88AdvstihcrOPx6vX1ePGQMJOyOsYzfw=;
	h=To:Subject:From:Date:From;
	b=CPKuoXkO08/ONKpZ2B6bVz7DyFE5z11264iCJw/2nbj0kVJ2KBaUqtYTHz8Cm3DvX
	 9US85AERkcgq1hEozJZOjGXsjFnx1e4cAu5ccBadXm3pRYzVuEXhc/wTWjd63xKkE+
	 WrW2s+itjLRrjaHqqJgScZgHbaNBw/JoPTHe/WhD0TQGBPy0l0ycoJ6kJWzQ15gNyR
	 QyTn7sMbwDmlQGJX9NFUZJEZyck5hpEz8bkM+Wd365a6KUGUFz2d8Y7z4nWe1XQdr8
	 0JT2fLmEhnRsARYbYW9uiwP2fYbhPlagPXvbaQ5d1QDJyXFR1byKDfQhuXIEGA/uBq
	 h0bKyvnRHTbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CCAC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941000278.31947.15679201487256927193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62658132f10cfaf1e586cb27f043e02db281560dfca6dde184abbd474759d16d
Date: Wed, 26 Jun 2024 13:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719410002
