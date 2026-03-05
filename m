Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B8037B3F6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772733894; cv=none; b=Z30dR+ukeEpCnXfGJf9CLMKXNIf1giXfZYXCRWvsTU0YOIGACYQjidggu7NN5mR+vQ+whIgKKboIfOl172sFLlh6Qyio8IiBwOpkwuXpXsTnupSpa5lW+kixVMGKdRbCsySgNY/c+ZF3aCwCTTBPlADmUNds3TcViBQmKLJTz90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772733894; c=relaxed/simple;
	bh=WvEj9mqZF3lNkjeIHoH6Mq+AV10EN/Jkg6HpQyG9ghg=;
	h=To:Subject:From:Message-Id:Date; b=G9YSb/TlRmBQlb3qzFU4TKSbSfXUrcIGQetyy9bFUK1zzBSmyTtIyXHkhRTai4137jxGoDfoivVJF6jWOe5LPWXiy4fZMJrwZO3mKZGSwIsU4PDbd46EVWGA0AUJzQ5zFv+Nj5zLvm3wM3uAYz4r+AVdzVIuiAF49lKQ4A+s7tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9QP4oKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9QP4oKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA92EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772733893;
	bh=WvEj9mqZF3lNkjeIHoH6Mq+AV10EN/Jkg6HpQyG9ghg=;
	h=To:Subject:From:Date:From;
	b=n9QP4oKOWnmIKuBlMZMT4Doma3TWiumkImRlCllQd3Lo3bIwE8j5/k3TAQ0hAYxvU
	 betciZqBIp2EUNHOsg8j9BNivQSViE4+aFv3l4UCPUY5yQ/5byQHqkZ3dg7LcdCjir
	 rSrIr5iRnJYoI3sMh5ZY7Y3IBAtvVQqIFSWDKgFdaUfxmIl4+DL7fWWs/Vrpl80fKg
	 FtJ05se6NkwagPluOl2hpm2bsSKbIS+3vEFak2MotndLAguLozlbHWw2v+ykZ70WCS
	 Hqo8+eilDAbOf0OctyYkDPwGnnRThshZxJPSeB0O8k/3oCAhf/x6QtQBuoqxc1LgtY
	 yG+3i6L4McjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510FF47CA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273389360.20619.8315032683993539673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8badc25ed9dfb3abd8cf9ffdcba08e137f44645536263ce28721fb2d10fefb30
Date: Thu, 05 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772733893
