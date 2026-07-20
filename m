Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19752571B8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784511514; cv=none; b=ajCRwHzU3RuPEuSBvj6FsBiGMOw6PvACjMe60yYf9n4K6+6KBeo/tWS/1Ep8SwcS/qPT2cpDRWdg+iqklR+Ml9DU8cNq0fmMvtStJpzZydojBTCMg5ZezktFv0f4eAXQbYLnAENxCyUFxp1OXe+gziI5twNKAnyvRVlBDw5YPTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784511514; c=relaxed/simple;
	bh=0iO8DduNsMjypZy2aHYykgKqkkDtE5mJP3AIoXspcy4=;
	h=To:Subject:From:Message-Id:Date; b=pKSfB7CKJGkzSmdzJ1nwCP0aqU3Xy4ZXLTsBO4iP+foFQZ4gn9q4tKVfiptGh7pDb+fFhILtq5rI6vLlevYRIvjxcjOmFnnBrp7/EM05sic02loYZTV/qhZRkKN+W5YVowN6FWgxn3t85EScwZxwuU1DlnNn991K5+2Mceq/iSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7FYtX97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7FYtX97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34DBFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784511514;
	bh=0iO8DduNsMjypZy2aHYykgKqkkDtE5mJP3AIoXspcy4=;
	h=To:Subject:From:Date:From;
	b=R7FYtX97aRyPmMQA9aQDaJHkzWtfek88X+1UHkcXvIz3CdgEmKAzgn1LUrrl/52av
	 mT7TMuIxeiJviXWiRbdBUbD5pBhValPb3yj2VdsGeS1wlfer731f2PononwWHj31pn
	 WBNZrFM1RLFTMY30qrZDVjtZ+kS7bdjYiqfFPJDAC/tDhDME91Miou+5XxhDKF58+i
	 H78kShFyv9E9uJOHvkSxrElX0s6FCgZ3AI6ryjQzBanzE3cEKSL0FyZAzJCCDp3wWX
	 y8pak7F5J7E1OrV+uG3WAwRosauxS555hT7yzceS1dn+M0cK4851fatlsxTsJzV2fG
	 EHCFcTcTGMlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3A08C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451151392.11702.15243358503464384207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a7bd1fe026339b9dba589621d675d9547a2043423cbffb5483f1e919979f33
Date: Mon, 20 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784511513
