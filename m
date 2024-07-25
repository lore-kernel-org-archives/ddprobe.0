Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F93612B7F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721923554; cv=none; b=Vrv0W9XZF3trR5NQZ66/raVcot4+/XIhj0l83Xi5MHcxD+sEFSDrsRhV0SDAPUQfWOB2iooEKx+HuAfImfgnEoo198fKi3+K4S82nQdb5S7R4oYWNWBWq7uH9dKcx7F+7M0KrYYq/1X41OEwfw+4NyEKvH8px2p6lZk2w4EKKCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721923554; c=relaxed/simple;
	bh=Xg5X3HufqxbmOK5FplhqrQQ/Pk3IKvo3WDdefUY4l48=;
	h=To:Subject:From:Message-Id:Date; b=avFgrusUuE87kMPdHnocpG01B+AV/1R9LLb8wXspNdxgf1M/b5QNcnxkTL2lAbBVzPJnBJEYNF/UMXqP4VWf3a5v9RPtBUvJ1dn0gjs335lGuBrw7Q5YTqf+CcggZCweKZUGKQyjfqz/OBv+enmtXRT3pl08J40xJ116YEi/0GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdzZSw0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdzZSw0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB042C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721923553;
	bh=Xg5X3HufqxbmOK5FplhqrQQ/Pk3IKvo3WDdefUY4l48=;
	h=To:Subject:From:Date:From;
	b=tdzZSw0NFvTXDH9Hz2KxcvFiPzFOZA+OnQRxqFSnZ5IQfR6dRI9+NtbTn6WqD3IZ3
	 IShozi1yKhjkuOsnUgsPAlTOuMVufQlRvTvT7rHto2FyS04rPb7q40KBc+wLI1z1PJ
	 /eMo1mjA9vBHmJAjFlN9ztQqj5jAIqnGGfMLgBvSXfaozB2NZUA73xaANevmlGGewS
	 xid9g8jje2DJRpz6cYuDS0M5Ot8E/6bdVDoJs2cd8Y1D4xPnBi0cWiJLjjmLH2JYp0
	 FCzJxe2jFDElTdQuXfQdghV4o0kQKsR45j646sZQ9cGZBMncpJLv12XUz7EhBBtLN1
	 j5O9D/0mWwQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61ABC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192355373.31562.11392389995295240254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf6395c68062c2ee645bfcbc641b96efdc6e390eb7a7fabd4664c96391a6c0a
Date: Thu, 25 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721923553
