Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE0E346E5A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777360054; cv=none; b=RY2XSlrLPa0l3nHyzEN9jAWAGAO5m0bC+D+VuDqQ0hKR8Ck1y5wId4caxC5sT0SuSq9JmJ56AaAXbad+72jRTcQNVC51/1hyHj8aWg82ODTsfxowAiFCLNOg4q35DtBTBpTYsw6EKoF2Y5hb0DZe3OiF6k3suR+eIddBQLwguIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777360054; c=relaxed/simple;
	bh=MtQmMqs3vPRE9rPjYBACneU3nWLYrWe3ifLfp5LfutU=;
	h=To:Subject:From:Message-Id:Date; b=QDejjn46GENs7MAsBEC4SOW2ONUok96X2czheQZoJY5D9dV4BUVRzwwpWFYFVnvzyoKfCrCBcHFMrSbRimYBXxKWRkqm53vpMD7yHWe7lk0CWWE8mrP7zRT0E5VrLtREgja6S6//4zMcIF4feyusrDApKbkINt2VI5vE3W7ULIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgQcMrjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgQcMrjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9141C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777360053;
	bh=MtQmMqs3vPRE9rPjYBACneU3nWLYrWe3ifLfp5LfutU=;
	h=To:Subject:From:Date:From;
	b=fgQcMrjkD0ssA1bwgzxbBwNcw7MHNmDC2qPO2uWP9+9nKm8TM/wcKl1E3FkgKUL/n
	 aXYkfLNXAwe51wFvxfqGcvFDSj7e2ryNqf/Wzab4EhTcSvp6zo5TefW44ztB6YZcOJ
	 viSr9uCxWcZ6v8l/ubi4H0o4Zzn6ic8wl/UMqcKE+av/WGd8f8n6Wl1LNZTV32wHsY
	 3RzvcM+DbqQGfsORO7yTxRp1ZsotwlRjkV6QE/KF2pJve3mmE0PA7KvRJm1g7kPlvh
	 8gzy+w6AFZLpFkrrG2LRa6q4OWqN6jyoRTKhtVnyHPTb+R9uqh000dNyAFSMlESI8t
	 duU8DP8k8rWCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B1FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736005368.19089.4759590132205012229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc3cf967be70d5ece1ccfd01634f389334bfc93fedf9efe4200d8cfdc29a25a
Date: Tue, 28 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777360053
