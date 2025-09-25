Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD7B286422
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758810594; cv=none; b=UlT9surNVTQCJ1jxMjphAQ/GjJxs+AeF95kCfqDaf+JppBhCSmRX8YZjMnuGCSf92mDoioz2wNwM7Jde3HzMuuzo3T1xkagovxiTpHoa67BH2yrS60iWg3xHWJImKaiV//3v5qQq+XNPgYrbLVgkCtL64ZA6vd+BKAONnmMszIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758810594; c=relaxed/simple;
	bh=jJS94ZrE34/mXEmWEsYrOfjSfI0EP7BifOMt5LULZIQ=;
	h=To:Subject:From:Message-Id:Date; b=M/TS62uRqoKnkTT59/YH8igJhfiezfwUcPSM/hTjDokzwP4f6lTdppdVJK2eMdyLp3Ba34bWDWEtgS/O4Z8iSDdpDZBZlzM/Qb79S27WCIiA8m8IwJGYe8eXC2w9n/i7AT7XfGUMr0HqTeQ5oUYfFbgVNsSs/WuWEeE6qGgODaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjur48bQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjur48bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758810593;
	bh=jJS94ZrE34/mXEmWEsYrOfjSfI0EP7BifOMt5LULZIQ=;
	h=To:Subject:From:Date:From;
	b=gjur48bQv39Euc38wid2b7IOYTf3eMqX/399ckP2i93RWu5WBG1hcOQ3QBtX/HmRp
	 b2Kl2Rq984+7n72qqBabNMEuQ3DVFyEU0Nda4S1OyFNVNHIeKiQFBCGHNTm6CDqfwa
	 K2dxD2142l8sKHvDs7TrBWMdqHQdYQ+E+bt35aJ/nLHIgOuV1gNWCt0X1SQ95XngmI
	 NlzZhJBB+fn4OZz8dJFH/wm/QGCqauYJLi5kohHCENXtcuZpe54k/rbjtqiibMnOXn
	 3PhAdUYwVAoQZPW2WzgPFtr07amT4L9uUusCIESYLDaugJiladxkGhvWxVONF0OyfA
	 3SHymboFtx4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A07CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881059359.26408.12178325304689135654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33492d9c8e46a9d0ec07b66cb55b656a3b4491a6736095b6b4df6fd35e520f1
Date: Thu, 25 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758810593
