Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C0383339
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779357635; cv=none; b=bwb2N/TxYX51fQ6Hj6TOWYQM6v+S787q1jjrhtJmpsQNh0t3Z09PAlfQJ9UTEVyYn8AdcS4qfBtncANGQJwl31KKn0X9HcVzyJdC4RXCur6eLSJnS30oxrPpvaUiKIPcyHobHkjSZUXeqTsFhcE3mLMx7vBBYKVsCWjIFwXy9ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779357635; c=relaxed/simple;
	bh=heG1lOkDj/ABiv5GXr/qKM64r1cilp0diWOZKR41GTE=;
	h=To:Subject:From:Message-Id:Date; b=WtPhMQbDqjwKmphpEOuo7bAjR9XqsZBhpWJQBUMsuoOrVeqOXVi6NnhzuTKFbj2SVDhF+scA9bt6IS9v5vWjc1zSczPIV+D3R8Avt42iA1Er+8G7ePOMWD09enNYc/gEZt9GGWP+3Mt++pcMW68+bn/94p4cUKnqai+rBcHYlhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slorFWHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slorFWHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA83C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779357633;
	bh=heG1lOkDj/ABiv5GXr/qKM64r1cilp0diWOZKR41GTE=;
	h=To:Subject:From:Date:From;
	b=slorFWHM3ekdD6gyK9iyR+1qxrrooI192aAdRxqPNkY5296/fYZmxjpgf9jN0F+Zb
	 PF/M8u0YxwFIo+4lCa8rjdlL86iGmVIEny6qdn74wb5fd65EMcjFsHb5T6VxQgoDkl
	 +yhwhG300yO/9t5RJvFnpaz1mnQ2FgaoC9n23eYyCRvR2IIbWt3fv2Eq9W30WZIIye
	 o5iSbCXw7/hTrBqcpCST2Lrz6UonpbMpj4BExj4azvrkbO0h57Jnwr02LWSt0nzGlw
	 qaZ85f2e0qEEBxy5ajBooaszYUKWoi/mjowhUJEFfKzrnKnrOOxSVTecSgjf3aVOCV
	 ktvVa1z7qNmvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF96CD4F5E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935763375.30601.4550303918578967415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8604ded11ee21fb30bd217efd674dcf7b165c65b5c16611de4cb99de2b605d6
Date: Thu, 21 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779357633
