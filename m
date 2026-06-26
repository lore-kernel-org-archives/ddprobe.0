Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DFA36C5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782509314; cv=none; b=O7Tih77S/8LEx+aW3sN36AmMfwu1BONaOjAmIZh1801x2qx/H2bbvb7w25PfpcZALmNbCGZdXGHnOTK9gxS6NfaeM2hx9v1a7frpZFmqhE3frkMqKu0mh5R0zE6eouMpZPr6c7hY8vc2cceBrcZkuGfIPOwG47So2QdPjotRu6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782509314; c=relaxed/simple;
	bh=IzEeuMPzPNEraKdKiKvOqjtDtUbhQmI1keATShpuIhA=;
	h=To:Subject:From:Message-Id:Date; b=sqzzAwkHnmxQQotN81LWQ6jAdolJKlI4HivCo7c8eSB4SqflurMXnDQGhPaRNWeYg8gQTch53hXNQCt17c4IEjuZ3Hb+bUC5490STocZ+2TukygZNdrUhAjbrt2BUnZfPT8DOrRPvHWCJC6dhcPjTIXgdmlyNmITuNEJZkLLqeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnadeLRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnadeLRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30BDC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782509313;
	bh=IzEeuMPzPNEraKdKiKvOqjtDtUbhQmI1keATShpuIhA=;
	h=To:Subject:From:Date:From;
	b=LnadeLRif/Pa5bKpIdIA1DaaaSNTQ0eLbbJdIh417UF9Z3eiDm842Lpk22B2k7YeD
	 KzLNSVU9G6iQXIrbv46lg6UFhC72maWz6dcIFd4F3/1Lu4ftyi3I82cC6QOCHdSuQt
	 FcQFsnSVyrOhY11xMiwXUe9O+jMVSw6RO2EasrzbPXbXEn8gHb83JLjKMm6qSOFrdI
	 LCdXc62vuIJrf7CUjUws8drWz7QUxKUasetk5/hovuYF2EWJSpu8yKxrAQyZAu5w0v
	 8CITKTdQsTfiihjsIJ0VvOW8aGlnOfzMV5ii3406B3Tz1hYnn5pl1FBHrtTQMjA3g0
	 fZq7AgQFUCn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B415FC43602
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250931372.27455.17050778190450696168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f575e65542daeb258fc1d61b16d44c7cdb9f1d38e373bb8f2c9fefb77fb1b94a
Date: Fri, 26 Jun 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782509313
