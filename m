Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2213E0749
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790290234; cv=none; b=c564JrXqaM7O0NTePv25XpVwxZMYfOQwsdXJVZljz7xkoHXImlW4TplqncRQDO+UDi4CLsYDvwRIX8+au5uKb8zoXchBJCFzh3Bym63A3v1s5dhhJIoePziG1jpNI4ZH2YiO8SQSKrQqEz8CW/DKTiI6XzUoV8rueCATJfIqocY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790290234; c=relaxed/simple;
	bh=dyRwayLo6ldKu7ZhoKAWJUkwIwYMiYj/bA/BI9Yx994=;
	h=To:Subject:From:Message-Id:Date; b=SWc1wMTDf4ceLmRsUULKRHZK37tMKpRYoBP6XKnmgh2TaUU4JIi/AdNb2z6xzvodZYhXYEcBYYT4mWrdtNeBBAWjRE1+l8+G8ZVGabFPh0EBmWLRaikvE2unKQd87vo0rVBDmtgmYCctKm9xY8R6mhsXiYf1weXlTZ3EYJuXVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKQLlPic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKQLlPic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAC5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790290233;
	bh=dyRwayLo6ldKu7ZhoKAWJUkwIwYMiYj/bA/BI9Yx994=;
	h=To:Subject:From:Date:From;
	b=gKQLlPicQOKPyF/ekEFK5dZOP4klFSBqPJxK8MsDGG16TLDOP0TqnsX+yuDLpZ88U
	 gMQV9PJ6VWB52Y5G68/3RKTnOH24ocKaXSqclzAjTmi0okPXEkpZ/wAnDTuJVllob2
	 PcAD85pOlYTJ4QcJ6LIrl9X+gzJPkh9L7yCKBF9PPRWg7UC6ZSdukLLr7d8t9i6oF9
	 9cvQRp1Q5o/xS29wk+GeC+vGjv5yUcJRixFlIvvRaEyLN+8gYxKvDyT4EO/KB2luoh
	 WTDAiS7XVpKybVRNZd3Rf9LhfvVQbbvsr9UHUqQypZZj6Q14mbdZSi6gA5ZOs9WWwD
	 3+URMKRUG2wxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B509DC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029023372.16975.18303173776863174645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a230ea75a7a5ba7e20b4613b6cc32d1ce5d9798a473ea7fba20ca26d35a45ff1
Date: Thu, 24 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790290233
