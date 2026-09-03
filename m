Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDC544AB77
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788434434; cv=none; b=PQKocDfNVR+VHDhj3LzakjjxiyO4WW4iIBdt5PVyfbKxWlr/FJh5E29mIVCjWGns85Y0GHGAZbKNrgYwTw/BmftZ6JqVpyuBpXPh9mFbXBygFeS5KxFbBRvt9a39qN0j86xAFvs9lBkltJJgvwT5ZeIGdJx1Q5ztorxxYZLTHzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788434434; c=relaxed/simple;
	bh=CQaFx6zYfS+0WCvk0n8N2zdGGIWF4LjeRc5yEBw1CgM=;
	h=To:Subject:From:Message-Id:Date; b=CXsisyQINalagfj90Pjp9hyblwLMtcG+ZyjTBZDzz0UQG9zvFeSVjf72aSCNlwd10G2xMHuXrmheAv4uc2qQ6rBOxxycH0Z7nB1Ny1gEBlh4kNrvPKXIHqQisO6ylrG0XfpAg7SEuIdwukom5u4PpkJw8DQ3G9f4BK9vY2cSIoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAPnoekO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAPnoekO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69BBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788434433;
	bh=CQaFx6zYfS+0WCvk0n8N2zdGGIWF4LjeRc5yEBw1CgM=;
	h=To:Subject:From:Date:From;
	b=KAPnoekOfqEyf4N9mODb8FfB0jTAS1R8JqhBRuhWd4Jlm1vLRbmpDacaXAqEDYybO
	 VTnjW4PDMsSsHGfGMKLwQ7OPGx7HK+tTz+gAbQWRWfhcOfmSPxSgke6Mw2Q0Tjt5Ai
	 /LOaxyfhYQBwd5K9T6oEV9L4PTkDAREgqBcVIiosSII1ooj8sMngWaw67iS0ZRjRwq
	 IDLf7rAhQvh09b3q2f7V3hROB60ZZQ+hh7HUr1EpKVuniXa2zl5X4ME0dIyR9kFezw
	 PUhjLgjnIKXG42/fyBxqPR1cYcBj/qcbFo0nHTZNWaZfUo67uQkvjfF10wuiCMW+qo
	 eItMeCobSuTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9A6C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843443369.18593.2907929494659867713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b852431dd966ca22a3984c3b7294292b34e93b135eacc1cfd40cdbfc014f24dc
Date: Thu, 03 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788434433
