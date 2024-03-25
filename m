Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFD6282B59
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711328297; cv=none; b=V8lYmULQNLql3a4aSbnffgQIqNJaHWvXZdQHTyVQvu8IcjAvSxH+U75X3vLH6CmuX7BFdOl6IfhIuOVHtrSorg5STJEqBz5T/uxF0xMJaZATQa3xypO0M/iz5XfKGfyNmT0qLXgTktPTvCPGow0Rag6areaXd8YoEN6MZNm+JeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711328297; c=relaxed/simple;
	bh=hds+afvcGP+RBAXwSGacjFuIa6DVaq9QAG9eKXwQgJY=;
	h=To:Subject:From:Message-Id:Date; b=QYsUnC4CQDeqKKl2Nel48AJKxC5dwW0DExf851dh75aIfWTz8m5AZNtUAhr/o+ewjNUS00ot9ifrLZ8gEv/rCrA5enQ0pdErV54I59f2mP/SKegxN7QeY+tnO/9JYpdmMnPEjVKWiYBX+hNFqtz0zbIiKfzZVfGK48TYQO99DHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioLWjizt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioLWjizt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A69EC43394
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711328296;
	bh=hds+afvcGP+RBAXwSGacjFuIa6DVaq9QAG9eKXwQgJY=;
	h=To:Subject:From:Date:From;
	b=ioLWjiztfUkFSV+ZVIecvsjGpy5LPBJ0n4c9roe74WZmUWpfE8LljeqvmrDqBCUMW
	 tQz26g6Cjy6J8ci6DaiHEA5CnVx06z90H8Uf1KjTuqVMzScDXr+EnnjHPAJfzQs9d1
	 LLr30/mraRj63fj8FCTzr0356pfyeUI+gx9EvPHHDChaZmZV4U4M0Q196NGrDIdVBo
	 6JVNqEXMxQMuxOPM7IPlWzDD7gigO282u0FawD7bU3bNzpICWt2dNe6b0qHLk7ahZ+
	 UtYpVtOStHefzWO3o11qBOXrFYvU3EQ4aKIKUhok2RMD9DXmLGspg7b8oTeB6dJ384
	 9HK7Ta/o8bcLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77272C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171132829645.32678.9740073493014362173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fb144bed2f476f3e48892a4e8395ee16c6e9029cb575232fff35bd75a31645
Date: Mon, 25 Mar 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711328296
