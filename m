Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A78D135A63
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715338943; cv=none; b=B5weI/RPZzIX1vD0OpwTsogpRp1myI9GGw55MJ79oFRvusv3qHBzmFry4y0PXDFYphvwgmX/CVaPrVjka/IpLepDfY2EE0mpMRgFou250ASR5Uod4Q7PpPQMIgArFeJoUObkf0YlBhZTrydsSK0/5ZpU/NWHSM9FwD3qv8FoV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715338943; c=relaxed/simple;
	bh=qwbkmKT0p6UPBjgzOwnqfZA+vO/wov8JjDZ06y7m9Oo=;
	h=To:Subject:From:Message-Id:Date; b=HuT5+sPM85ZRTviw+xBkjdqDGkDZTObntVwExXyRUcSngg/l86pMMmG5tdzpzMma/ySsEvitr/MsCOYeBd64L3hj/Fhe/aKxsrGUicA6XplrXjaEjThxPtm1zvMTQvTFoxscjSQns1r+F634acI0cDbf8WMcXV4iZKSwwDjrqjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqZ644Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqZ644Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B1CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715338942;
	bh=qwbkmKT0p6UPBjgzOwnqfZA+vO/wov8JjDZ06y7m9Oo=;
	h=To:Subject:From:Date:From;
	b=rqZ644OaHsXwRNTjcO9V7bYaJcBVGGL2bmc48YEY23pkQAIm9vUObUHHFPnOQmfas
	 Wz7AQY9dXYU1vD1p+zd6mEehJpWog5D00m7r/fbP/p5eRl6p6MDnfIIs1pbhYs4mb2
	 eaVc10ZJt9XJhBhmFBp3aN+ahy52rAjiqgiqWerMkwOPnuDQx5W2H+ORqW1b6H6ujL
	 hkSPc5QYL2Etpz1IQbje4+hjTB8PeTTcpgnLGwOp2WQGNxvnVpmUNPezRyTVhIVHIb
	 LN5Ryj4E0yH4efmwr76lfLJ44YAPZ5/uovtlfGNPifN1d/hUwzJrxSNtiRSGoajE5w
	 zyDka1sluAJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CB7C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533894278.14019.6378591496966333694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bce56846f32729bbd97596d14728bb6fc0087326d5f282de85726b9b5612aa2
Date: Fri, 10 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715338942
