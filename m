Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28AC8E6
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765765974; cv=none; b=NM5GjAV/9Wz55aSQovb54aVoJS9x5nfu8JN8s7wMhj7NcxyrpCNF9SuI/hzg9hzfhFlB50RRww+r3RMBNne/ei128vFNl7RQvUE2WuZkQ3xm+DMTRS2fX+qjR4org/AoT6eCiedH0v8QYlt0SAJlyUoQK+8+QGPdxVDEv2ZaAMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765765974; c=relaxed/simple;
	bh=gI/GKTub1BMwmH0nKIAJPAKtW5weHU7A0Tor0eKMvkA=;
	h=To:Subject:From:Message-Id:Date; b=jlv4pJTdDoJliGE1Eg41WNYdu4Zw6NmniW6RTzjDgzMSASONDcfb8+LyElqojzdXIHfdGG0FCLxQv3opap3AWI/hHIn6Y/cZ1sL+XbhJ7a+W+Bx5GHjAu53mLJ7XPOAKXGIJbUCumjBjExX2v/oWEezV3Ykmo6Y2Je18s6i26y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfERIgWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfERIgWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765765973;
	bh=gI/GKTub1BMwmH0nKIAJPAKtW5weHU7A0Tor0eKMvkA=;
	h=To:Subject:From:Date:From;
	b=gfERIgWrk+PSG6/gol5xWFrMMOVDQx5m7hQmNtAVoMcdl/0Pj5Dwko2APbICYV4FL
	 bAFm/tKGqR0kAkvncTr+VOu5lL1XFIN/UQMIEyZDxROu3mOggjhz+0a8ygqykb+13R
	 Yah/eWTmnCinBLKavbjvqnNNbWkLCWO11H0jQlzUrk7LUichfOGsL2faK5im60Y62D
	 c0khjNWyx/CwCm/RqtEmL8dc/KaaLZ6HCAEpaxwrPw45718eHDAR0zLPYlA6yHEKQ7
	 arGyTQcf+GTkHYA7Hf8BhQDJP5mPWSkogpBQ+rZzZXHk6A7ARGscdFhOawOXPZSh5u
	 M/A7GWp1oWoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90299D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576597358.16647.4423692722294169240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134ae2ca688fea3e2744bf88d05445d9598cf0ec8bbe770b62957e8f73a54c80
Date: Mon, 15 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765765973
