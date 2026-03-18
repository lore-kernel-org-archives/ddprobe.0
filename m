Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02D21771C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773795294; cv=none; b=kkl1bqtko9TAU30Dkxixrl2BTaexeLrcLMj7/j7JsWIcb03a2wOMlUoD7J8k1I26pCTkYYpOvqLS7y8kG1FrmrpWMJYigbUbqE8ntTILSOd3GKhRJ49E6ZHEZwIyj7munLdD3fJbacid4PgEQP7nAcr6bsZAFXxupZ68+OyjKgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773795294; c=relaxed/simple;
	bh=sfYcl3SMSh7pukchhd7xp/FExjg2BzOubwAM6Y61yJ4=;
	h=To:Subject:From:Message-Id:Date; b=Eao6Zhyl0k3od6MYOctxO+tq/50IxETZQwCcWHKW5v4E4cXzEO74GH+JBLSLQPFOxqryCQWtgCuL3twErMnsWB73cc/5SfPW7GnFUOHj6VmD7kwxnUmlvVoAxRNrQffN8Qlj9Oav/ENBAYDsS6mPXQsOOd5ycZdIYZrlxvoYkNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7g6GAFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7g6GAFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCEC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773795293;
	bh=sfYcl3SMSh7pukchhd7xp/FExjg2BzOubwAM6Y61yJ4=;
	h=To:Subject:From:Date:From;
	b=c7g6GAFViWEQu/6d32RPWnNdL40pAdmF/0PkaGboz/9KkDE87UHTpJOEL9kSqfFLb
	 MSpRsUx/WKrTuQSMcqG5GmGy3Byk0v/MoeFSswz07u51MOhqTYuwOOa59QEHeo7dJr
	 yO8nnH4djTK3Wq0geeBU2mk/2emHmXCpQbRey6HIbXXY/RTf/omnAJiGMziaPmDrT0
	 tHNso1E2CboALpDsyHTRQHNpcTwbb+RdpZOd8OUbSdEuIHm/4nvXhYdFx52DN38JP5
	 NDDgD6SSjTcaYnkE02KoG1uy8cJj8+HJ5f/5o3Yp0vAOcdalvmjl1OegzYXze0hxsN
	 Jp34rOke79g7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A95FED9E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379529357.24010.8108221949463249127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6165936f21cc7ce71b673b878865682bbebbd819f05978ad480d9e38e48d62fd
Date: Wed, 18 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773795293
