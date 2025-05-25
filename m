Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ABC4A35
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748132994; cv=none; b=kSDi8OTtBC44IZfUGDmAuPjdmeDvTNUdFIfOlEDy0Hny+zdseAhwUxhgkD0rNThWjPubuXHiw7iDeC2lfv5mweFDcAXvCG/YsIyqoZWmfkpUK5/M/jBllQMvX7PF24G8bVROE+RV/tCxQKj7aCG7cTQdy98nbkmP0tymOkwZ/jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748132994; c=relaxed/simple;
	bh=oH6lNINwX5ifTYNK2I91CKwOjnznmRAIZ9fnSpqRA/o=;
	h=To:Subject:From:Message-Id:Date; b=JR9cfCuQcFSv0tX6h7fAckzW1kjmEFIylSDm7yCCGzskshwEgJ5/JgpMweoBFSsWXHbvNlRsHdYjDe8qfnRQbWMbKmdyxQKFLw6mlXMqb6uym6QJsF7lVsjP2GaJyrWtBkl0jvJV8R9a/JWOXlotZBp3JcnqYfNUJculxSYKD2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1ALsXAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1ALsXAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B7C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748132993;
	bh=oH6lNINwX5ifTYNK2I91CKwOjnznmRAIZ9fnSpqRA/o=;
	h=To:Subject:From:Date:From;
	b=T1ALsXAbcz1cq9oomrQ1XQ9wEatP//+ZjgLxeC/VNbmnLQdmTTwqQFIspuy9lv+eZ
	 gArrCzqEHJoHxAL0dkppaNz8jT1qKe81EtzNIUMdSbRopDxDvNbSsnqp1wGjsF882C
	 zIXMPtd7h5iMsZUM7MqyQMgKBYd5SzXsgfWbTcDJLxg/jbmz2tF0pJs1COKo4WebEQ
	 8zkN7589kt8zOSPb8Y8BQuFyiYeGXlPermT2YRSSVprgV5Uf3uXl30iTrKAzBlWkl8
	 tT30Qg9kP42/6PyqM5zVoRGvFf9kmcBCT2aCsDMtkqe6YgPXHh/Kxqh16McTOBnzaR
	 d2FXIF2AGau9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F6C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813299357.23964.6468856904468854268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec14972ff0996359a0b20593e3bd8f14681f1781be8907a3f4d76f6c185c81d
Date: Sun, 25 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748132993
