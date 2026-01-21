Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBBB396B8C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768993434; cv=none; b=rABpK0iRj/8tEerWbUoL207tjpwmxL0Iu4LRUtJ0RUeETGM+tIGMwbRVEnOFbYhf+5lt/csOcH9ybi7qqybzp2s+t+QU1+OGreYWn6dBbQQBhrxv+82t3NFepYAMsyKMGk9Dji9VmwGwr2bK6dLL8Q9Z5QNLVdHm7OBMV+n2bhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768993434; c=relaxed/simple;
	bh=Zh/S48RMQmrDMwNfWgD5Q01HnHFDc/ThIxPxUX1RoOk=;
	h=To:Subject:From:Message-Id:Date; b=n3P+GuDLmETxcKPiHkhHvaF8CHQwxja0T1richxsKxmyw1MVsCEPC7E18ji5fDeJFvmWKn72r9KDWuQ4xMrqXoRPTzoV2nB4Mg13jRtymasuYaeLB/IyN30j7ubu76cleK/W39m8L0j+Ni/5CekiRaVWr4t2hh72+10A6P7lCWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGtRk8WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGtRk8WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F854C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768993433;
	bh=Zh/S48RMQmrDMwNfWgD5Q01HnHFDc/ThIxPxUX1RoOk=;
	h=To:Subject:From:Date:From;
	b=IGtRk8WFO2X5Go7pKLgtc9XNjgI3EYu3UFbJKf6QSGjIu3CeA4bMpBXMWG2dSIP8d
	 GY0DlSmn4lv7jFKDoTwFaJTBwNqUOJs8lyYUOjZJMmUJkq+gqpKoilytDThUB3qZix
	 6U9IwTNAg/Oza7Au9MD/lmE+Yk/2euhkKwnl+h5KAFYxjeCtXF42HYq4V6/BKj3scf
	 DGetdgBoLlwegMJ2vjBi82mLzumkYbperViz5+cWCIBvzwwc37h4xWRg3a4YGpIt7R
	 QnW51YKhE1Rin7a26xJbRQlQHRXbbce8P9wjq34tWjvAg5cVjiwp4DLUNmgIve7VE9
	 G1ETLLaiWZ1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FAC44503
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899343358.13425.9291724715302544889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294ea5cb7da142d3c7ace1f9290e880670d7ec736d1d2410d2749502872324cb
Date: Wed, 21 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768993433
