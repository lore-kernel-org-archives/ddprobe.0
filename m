Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333F194C76
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726742754; cv=none; b=tL4eAYcbQEgGWmXEiC4QpK9636sRpzyF2FQL2gQ92dglVJq4e4dpjqdgXQAxdaPhm15nEfflAzFHF/JvjxG18l8zze6GzlNdS7Pwvvm3UI1TE/nHmw+ttIdKRKtYicMuFIWuG3Q2RqaVg39NBjvV9wnyx2tIc3spqqISrDlDKM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726742754; c=relaxed/simple;
	bh=36c76bIqEG0k8FBazJwDZsUosY+YhsEuIalm/NyxZ0E=;
	h=To:Subject:From:Message-Id:Date; b=czEEIrhNnwCKkPJVa0fGGGUVtWlzETbvpC0vAg2Uv/vaCZki6uvpJAk53hZtj7H58CTTGxtIR5rlqFISQagH7LxAKSad0lF7oa3dkoR3mUHUsIwEP0rIEulICM+tgRLOtLxqCxHl20BbM9TPYtieKO8T7P5JBN5+ZlMocYs9k9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDuX0ASG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDuX0ASG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B71C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726742753;
	bh=36c76bIqEG0k8FBazJwDZsUosY+YhsEuIalm/NyxZ0E=;
	h=To:Subject:From:Date:From;
	b=bDuX0ASGDTXYWXS4OFmnNe3Fux8EnBM9uLyQtYWLTixxfNuNC79pwOKDEy/837yDf
	 P+9hk7tU8ADXwD7dnTG7bPYmxOweKlaKIsSooPTC32Zf44SdNoFqLE/1DYGT3m07/M
	 uPyVt5wuNEyHYVmsb8XShGml6n0Rrt9cmfl2SwurFOA0npHqNK4pNY8rjY7FVfSya4
	 EyYxFG/wAFcUTjb//uGJHeewxxrX2nTtw0Pqt7soBdmTHD/dJeT8tn66g4BqKzUjYU
	 BEbrBtg17W2MLuQhcYd3O2u87IAZm6u/ToHcF19GzoXNF5GrsQytBHyE8b3YwiAU/x
	 bo4UXh2OejJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD6CE8D78
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674275359.5666.11832409978618320910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a582d5c7c109ee3645cd30ecd9b5adba11390bd78e927d7ad52dbfd9b7792323
Date: Thu, 19 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726742753
