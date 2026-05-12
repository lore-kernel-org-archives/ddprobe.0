Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECB41A6824
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778593234; cv=none; b=oFvCLoh3qtgD7qFaiu2UuQGpHtrLiEeg2Qm9KuikDRff0Xw22kPukrjmNqsR2z24rESPrMZMPdhWnT9siZWRtbEDMJTNhXCwrPi4VcNm2cD0Xz3Yr0moE/ZtVkdrC/ABbIbrZfmTRGFxcvST0xm7TkGC/+++lzbFFzH+Jccmgbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778593234; c=relaxed/simple;
	bh=R4eDEgrHvA7Qdh5PjWR0qtrAnFiuL1RDZwU3jx7YL/Y=;
	h=To:Subject:From:Message-Id:Date; b=F0WEfwphuuJFX5sp0XbCtMRVY/jcf0QHUtLyvBsteQAZsXKvDhNaJm91ASxdibzxT7Wn7Rdn/H1yvJg4hmIbBBTXJIr+XWdL/1kYwNJFOTJCGxD4oea+0b0P4pWv0zLAK0rdUvF4goQ9BeYEmULkgY81+LhULilJQv8+A6v7MdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/eC0pdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/eC0pdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9291C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778593233;
	bh=R4eDEgrHvA7Qdh5PjWR0qtrAnFiuL1RDZwU3jx7YL/Y=;
	h=To:Subject:From:Date:From;
	b=X/eC0pdk8m2hB0abX92qHKOJc/b42TpfaN4mMMmr41yVmSdiG6BcBjUxZ6H4w+1uj
	 nIxKUkp6EMQs8j9MbhyuP4lVTUi1iw8ITq3Tmq1ACRbgXcvc+f2Bapkkk/vxHDEwMs
	 t5kQ262/OAC0ND8g+of7pDUFSpu4Nm9EdkCOKuz+jqyxmrPevUs1V7o/Hsrwkqhfbf
	 bj1AOzLKS1tMcFcwl9ryRyZqLAWLWyUqVun5UteOTwTqz7FFJmtDrylhz07ZfAIQkJ
	 HbwczZOI/+fCmV2lLQCRZGRCL+p2U4YkQNOMnXD4wOyjPkLpYETCiEEM8xrPFGL9u/
	 IRIErMqUDqjTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADEFCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859323369.11412.3477885430081929955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa51017c92cf1b3347bd1fd8370bd032a58f738976e4615ad8a6ae01a5a826f2
Date: Tue, 12 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778593233
