Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7AA2AEE0
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735233954; cv=none; b=PvVEIngK+r5GQs7EslBacavQX+s7oyGDkkkFUUAD1a82HYuL/5toA47m9DRz29OD9jcS7avSkdtSmkWcM1pt7QayRp5rDIJGLMWaxR/rGffeCVKNr+Zu+06ftzyeWoym6fnAcxH/prZ5VazPaUoE8TvOsbGEQVoIrootV++Co8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735233954; c=relaxed/simple;
	bh=NEwSz0VQmiiBuOPSjpJF6deZxhRkVvUjc3GqQv1cdQs=;
	h=To:Subject:From:Message-Id:Date; b=ZA56yPGq6i+PKY/Z+o3jaxdzwUvhu/usAastA30lvQfE7ERr5hJaEhAYpkk8k2f8tXHnEhPmmkzgCmo77sy/9hPEjkeIqke7R2lpxFIGJDly+409G7kG8QgkMlHBqMEeq1RnOVZX0qesIbqs7ClcfGxuoKMldu9TMc2Apw7UOQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTx+FZKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTx+FZKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9C0C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735233953;
	bh=NEwSz0VQmiiBuOPSjpJF6deZxhRkVvUjc3GqQv1cdQs=;
	h=To:Subject:From:Date:From;
	b=kTx+FZKvehLpDyMvvwXmPvs119RTOStT1OWYQYrxS3fw5UNpzCb/zYYGhTn3LbKS4
	 7D3TyEi1kcc5C8AHzciAavIjXRTp3dXOy/QUEs/DOqjlshqLC/5y6vWpj92xZwEc/Y
	 HKlAw4wydEw3nI75Z2AbTnuUxRRh+6Z9LNO/TX0H6oUP7B25JdQfvcbUMHw7T1dZqa
	 Vi/KkeEWoHnJPnR7JKpH5DQBZ8sfi/HsWicwQpSwDVIA99QzqVltj/AjwGqzReO1pf
	 9WvteWYeJqCyLc8vPhhMn6hpwEofLB7gjy60NP+RfxhSADs5epH5ra1uz/BO2SbxI6
	 MHDJ4fWokV/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94999E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523395359.6087.9356569978673349828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12139f9a04dbb81e263df3324ce81e486aeb3af2332d9c4d293b8898ee214a4e
Date: Thu, 26 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735233953
