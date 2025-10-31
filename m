Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315BB2D320E
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761944994; cv=none; b=Mlhz11veXjXNKxRfk3jYc0thNuR+pfl3Xy7NxQg95mXw50qzE33GA5aIvCm/4NszsvUd0PpGjEMaP4U7YR0oqZMpEFm39OzdgRsGrqA1Zxt8Vnl6pir0nZgbg0W2YzkuMKPcefpYnt/Fl27aVDmDA0cqEjJW5Zh7NKvEfFsLR3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761944994; c=relaxed/simple;
	bh=u9UIBlVUbPU4nRpmlTmEt5y+CW7/PK7ptnKazQxKiwM=;
	h=To:Subject:From:Message-Id:Date; b=piw0PH6qIgP836uD9Ph7yg2Uo4ytyJSO8XxSIekosVKWBR+SP7Mph3nFST32BAB9BohST8S7E4QFuEj3JxxjBFfOZB8qgA6Zz6K8Fik9CCxPcqx6MCnFMl3cOiOf0bOtnuqHJIq7inpaIWEsfzunBtXDHAhmihX4oHwnFIEPWGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B51KEIk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B51KEIk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761944993;
	bh=u9UIBlVUbPU4nRpmlTmEt5y+CW7/PK7ptnKazQxKiwM=;
	h=To:Subject:From:Date:From;
	b=B51KEIk9jWxXIH5oloAEClX0+fQAGCufnmFvUAhUWYMc+1vwozGM7XJHQ6B+9t51m
	 +Gkis9o53tFEViC9K/g4Mhi6OJPlFS2WD4L8DUSjgqGeAfwNJQ3sMwHKJ+ezQHiKLA
	 CDwop1edfdbpGBfkeYT6egIIbu2cgH+P9Rep/U6tGh2Vlk6cLii/ebOpJUUHVGB74G
	 7yxWQD/MsAlNRvN8USpHsCcWQ4cm9qiZam9Pyq4VTqLOKexUYuSEZgOdD95r/M9oCA
	 Tn+YIZ+0/kp3QGtBafRINMc04dTjRcA8od2ywaXhMF7PD3F1oKzJkGHtu/KjxFZQuD
	 Ag0baDLSqiyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93242CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194499358.5516.17991088123453613728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f9b3ac2e07fcd99816133365ee16a33386468a4962a6a747c1c39c5d3959c0
Date: Fri, 31 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761944993
