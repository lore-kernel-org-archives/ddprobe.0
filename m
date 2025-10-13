Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555622D9EDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760384994; cv=none; b=uwXM4+RCojQtBK/C5jrs1dpl70r27eyELcGjxqv3gFDMYRtDZLYU1qsE8G/pJvIjMEbvpYZDnaQ8cKEua/6jYohUOUGEg7IEo93QI0Xnun4Il01W1nfsrEiFYmejE4vEU7+kvqNUE/+2d3eXHadrueE90SPS9+D0fM6NKvrGeco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760384994; c=relaxed/simple;
	bh=9IT2YajjDQyaREittUTPc9cf6t+pCNR3rs3gqbrsrsY=;
	h=To:Subject:From:Message-Id:Date; b=nt6YtmOWjDcvw06y9Dq3R3HJEHR4KgVPWgri1dZ+WY4kUwc2K9ofLjoyHziombk9fk+TZp59xyjEWd0BXFvhBUfIwy/ids5qaJNLLmMcsAAtuLTzrCUVUgldhUJgD3NRZSVmgFfOJMUwYQ/P8HEpJ0QhFejzTaF2bXS/bVjTBsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMP5HdvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMP5HdvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A34C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760384993;
	bh=9IT2YajjDQyaREittUTPc9cf6t+pCNR3rs3gqbrsrsY=;
	h=To:Subject:From:Date:From;
	b=dMP5HdvE5FOZ/Qv/e9g3riXBrbwVQwimnbU1Akko81jUNKaPvjdiFk0WcJp1QXwxS
	 zypY7qi79su5Gmrtx+zsWMUnuZOf7RK5fjqNIgxJyE48o+wuTWQ4epeaBVq9C+4Aau
	 Wgwjh8jdbLRmSPIvNPh5x3UHGc/Vmbb+saUDlGJ4WHf09J74pyNWnVx3qdTK914A+3
	 QcIxCn7zZde+9T11Rhy1firXMQhTwM2T8aCpOc+lhHI2LTlPAsAJouJnjhBlmmPUTK
	 1Pksqa2rTSuK+5ZssFBcZ6O067sV0ee08omRwG4l/fPWl32a8ZWwMYDwkc1HceIdoT
	 f5vt9Wj//SqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A01CCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038499362.29592.12834169392460604261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ab5d41e22b04b0751fe19ce0d3c4885bcdf10b90f05d29f9dc2586c83286fb
Date: Mon, 13 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760384993
