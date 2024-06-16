Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4976D4C80
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718498903; cv=none; b=MWtOf3mGZUOuMy3kKG2c0g9LHgs0Cwi27cCpZLuCyR94GIg4EiZybrnEn0uHAOdAoNzxELVSmUSFCSOU91gdq1wyxlz6P+NpH6ELjxyyk1213zn6en2hUNdi0f5qVn79JSz6IBGRouE9Eo/rG2voKgdGTztFpuwLmevXtN5aMbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718498903; c=relaxed/simple;
	bh=GIAlYGlGBDF3lxFadJtStZ/mccMxXfTalZJB5JvMtSE=;
	h=To:Subject:From:Message-Id:Date; b=AX4RR3W2TXwLGii/x26loIUTlh/AL3AhTX9en25Dzai5iywo+Km6uFvR7JffSqY4DerdDwdJWWnbZqYjgMsqI7nODGIDLR+6xuZf7kk0CN7V7Vk/I8baVRhRz0GKL6OBGV5+O1oJbReXmsr+L3Y9cxye84vD4koeQF8VEQWPXjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcqJ+AMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcqJ+AMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA645C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718498902;
	bh=GIAlYGlGBDF3lxFadJtStZ/mccMxXfTalZJB5JvMtSE=;
	h=To:Subject:From:Date:From;
	b=kcqJ+AMoQO1UQxtKdSwTBwC6SVrvzg8g41c5PGbKqGwuhTpJ7qPqZqz4pHjnchAON
	 LTfNTknBJ3b8dqJSImRtfw/PQVWB97REHoSw7Rb6I/3Yw59R434XencNtS6hn7Z158
	 vaTVB2wQR1FeI+xrX9V/nIPraCUmNscS5ETISdZygqSWtB50fBBy9qL4/hmJG9149k
	 oC+dI8JPMhJsjmDQLQE1gVb+uVg73mDUaYQyScJNeyP1zq0Qz1M5bzwl34To9u//5T
	 6gCydcedezRR+c51uBn5YweTSSnkh9SPYfUEF4SxMbEPFs2s+XCfYm8Zn4SOgGX8AH
	 EzGmL2XEKkf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1989C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849890277.2163.1085298966981054331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1243d2b82e66a13a598d32820b80769343271b278340650bf2eab44ffcb09b
Date: Sun, 16 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718498902
