Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2F61591FC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719921323; cv=none; b=WGGpj6xMayJ2bbWza2oz8KK6Q7h17Y3EkfB9DdEEchmUdqv3r7/QhCMkt6mVLdmMlohfRJJ+ZhYk2SvFxS1BHOlW/mkINQCKM7x/B7vu6BGl7ron6jWPpvacE3aqPkK28SJxVedDld9Y+0fWgeJDwxHk+h8LO0LsQEAVnfcRxms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719921323; c=relaxed/simple;
	bh=JgO9mx1nrn0oRc7jkUviVUgnphRf4V1DAx+hTNspu/s=;
	h=To:Subject:From:Message-Id:Date; b=EoswO78lrS7dc3s11lxrvNOgzX3rvaZIovlzAmK/wW2NHLq6sefd5csMfTzku1uzH2pW3gpClOEur31mUSDh9Vd7Yy+XBUMkuk/geUoR5mOJ1biwwGJ3QfobiPSBgoqsYlaeFNUQsDHKDhnSb4m61Zumc5WxnVgyNQC+G9FwiMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3qFVl2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3qFVl2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB83FC32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719921322;
	bh=JgO9mx1nrn0oRc7jkUviVUgnphRf4V1DAx+hTNspu/s=;
	h=To:Subject:From:Date:From;
	b=f3qFVl2JmUN6mHqzs17SQzRWSxgt8C9m5zpXKpGYQSPY1ZjzEcHwKivWg/pBwTJrO
	 KtrzPtl2i+ETPyVsPa+YjfAs1+DLZUNktsAKq5kxg6DGz4N8urXu5gOhKoD/JBJ6S5
	 x1BOajm2aA4rrGw4TAa8cvFp45cMtaisEqxiRBDp1VsfPodehDlhfKP6RBgBiGEa81
	 YFEz/5UoFGg8qeTdt0Lg72+7cWXOrCGNmBk0/WA9A82f/EX9davqQyStGpk/7OZ39G
	 jB5IkL/FzMasdJtaAO7VJ8DbeJsM1kT8/hJxfh2C/NF9C5wxGe1w7+t8pWH20t5fft
	 u4pBDfPERQmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC01CC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992132276.31359.8088880055262015196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f11d6bc3ff9aff77e68ee54e909a395c54f946c4658dfe20ec47343777d7f1
Date: Tue, 02 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719921322
