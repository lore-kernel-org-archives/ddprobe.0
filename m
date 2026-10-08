Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D204339365
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791480634; cv=none; b=rI44D7DOdm9YoQPs3TfzmIXwwD9fWGQcm4ZEhgWte0eJVuu3Fpysn6jLo7KaFm9vkktAnNouFKO5yGY/5j5V0BwoRijJ/vsgfW5NOoG43mdLEmOj89mZpQmAudfLRvHdWcGC8ac1EBtqFc8hJ3/ixActN65L9nn5yoN9u9ZqJk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791480634; c=relaxed/simple;
	bh=ba+uV+p9r6PS2lWqVQmrjRvTeOTgjbFT/Fo4fjdR6kM=;
	h=To:Subject:From:Message-Id:Date; b=qglWjfwNB3Iv6BMhy+SfSMjpJF3gCToV1mkyNIdAQSAW2/mujyyGHILWbL1YFvHHE3O5zsgFZe1N42wBTx09FdX/5D7oaGvi4IKnnP3A0ky6tZFdwPPsQG86Rld7J40WgoB41d5Cj5TF17BG1XvvbNTZzDRguxBPo74pstZgKXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b91wGeor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b91wGeor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2394C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791480633;
	bh=ba+uV+p9r6PS2lWqVQmrjRvTeOTgjbFT/Fo4fjdR6kM=;
	h=To:Subject:From:Date:From;
	b=b91wGeorteQThrhufvnw0KPkgFDrfRK1ZBfxTVRl5vejbrIlzuYmbL5T/8tzYz0y0
	 MnYDZh5cH4fOAoLgZfevj0GbyxS1daHG+gtQZDrlnfRwDyFuCFcXQzC2tantQVqiiG
	 jyccntQHwpTWjauCrIhIhXcc/1bYhb0M7A9EdDuny7XY/Dps5fPL4IK09l9+Bq0Dh1
	 mPEgSxC/JnxBXHIZs1o/nHH5kFlbC308QYyi+p80muc+SNWtMqjmW3r2knfswyLMt2
	 UhAxbQzYM0II/hCZf2G0XmPgbEeHugyEeJoeAb8bjGM4xcLQsqAiQdBzvpN4YSZNmD
	 h7higDensmfTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56BBCA6011
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148063370.11218.4680747735504859543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f91211fd03d7f077378fe83562130288ec7a9cc0957d44fa2d0fe3b8b3758a9
Date: Thu, 08 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791480633
