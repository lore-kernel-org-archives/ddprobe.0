Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178DF2D6E54
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757977194; cv=none; b=XgC/tpecpYHWTeXy4jZuGpqOVZpRqt2KDCdPodY+Inc3+TP912nkkqoq68AiDm4dAuL48KCJuPkClCMVzyKJ2XrCN1SXOwPq/9f+2hzKvXhtjmkQnHmEoSWWg5OG1fq5BwdmUHVoo3Bj3jfAzd+yqFqqzkscyHC2IfdFb6CgAJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757977194; c=relaxed/simple;
	bh=xn915hCEEiChB50ebQLGdrjQ5dFGOm0jYRlxODsdG74=;
	h=To:Subject:From:Message-Id:Date; b=aJkWmbhECttqopWstdDmY8g88eJu0MopSj7zcmcCrPRvMEvasm6dT7ccwCyZjyoSs2tfX4RDvsgcs2RF8WqESriPmgKVAVrx5FZ85k/eIJaX6FB7uvPTimbJfLnGJVZ3GE/vUurq8B8TSF2LMsg+bqXylgDiKCiYVrx+YOeyFKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+gVrVbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+gVrVbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757977193;
	bh=xn915hCEEiChB50ebQLGdrjQ5dFGOm0jYRlxODsdG74=;
	h=To:Subject:From:Date:From;
	b=u+gVrVbPF35pEUC1ujGnZWE/dx8jgYt0Jd8RTb0+jkjE+tPFOo1fdsKe0caqC52Yx
	 gZoB2dOANbGSGTYglxNYfsY92iOov15v4jLvePjbc0l1VExMRnR2NX5wunKr874T0D
	 BXT6zzHg97dXO1B+7BCbtZvDTe9VwXyJQOX7kGI4IQL5s2h9GS4BSMriQ3JVRJHaNY
	 MGjUCg6YImXjR/cxY/z4TZjzDzNN9lI1KNxaPecWMtYUhJIRJ+4db7CeWpZAvGGOjF
	 ei6OjA/3298UEcEs/MyXu1RaCj2wb7N8xCBpXq8c0AM6HlKTFQBwaXz8CtmZZ350NJ
	 fxmOrc6kKBVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A1CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797719358.27568.17785683619363331424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50fb947ec59ebd0ce8d9c066c70d597fe7b68fa48a1a31b7ecf05e2a4c017af
Date: Mon, 15 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757977193
