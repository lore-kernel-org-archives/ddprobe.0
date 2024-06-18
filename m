Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7917528DD0
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718750963; cv=none; b=fLaLXm7AiMF9tQCTGk9ydd4WIFgGxNK89a+mWDi5597/4RIWfkPzFPlm7yyOnmx0q7dpilzHBqYJEUAr9qheQ9ZtCDU7PNDhNksdYHsi+cTeZbAMPmTbMFuJgf671HWkEUtgzbr7ImxtPEElg6ZZ26lXISisvAC7reysug4vjns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718750963; c=relaxed/simple;
	bh=PfU6q3iB8AuWJ2tSY7ad4RqPuo9eMwJt8ULVWXSYGTk=;
	h=To:Subject:From:Message-Id:Date; b=vA1md7XT4PUIPCR35hjZd+1FlWQ0IOnOYssEhJNQaX4Ws7X6T+B2kKbnG4/nYLsHOfLEAEB1V24KnjhNxwBjZ8CC81SN1bp+VByNLqN3+V5tmUth7qzh0Lva5BDW6RVtv6Sz0gp7GmF9NIB6KT30cXxLg5m8idYLjssMp2Qld+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnoBrwsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnoBrwsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76C4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718750962;
	bh=PfU6q3iB8AuWJ2tSY7ad4RqPuo9eMwJt8ULVWXSYGTk=;
	h=To:Subject:From:Date:From;
	b=XnoBrwsqz+8jpjRGYx5VobDLk++Dt/cxqNe5NQIBTLhSj9DyhsWKJhDkVp/44JIC1
	 rVH5hIrmKntLy+p5O1VhXZh/kuPoI6qSNbGQ53RcT1GridWcJH1wHzvzsSyA/ansaa
	 R/awoCs4CIotslDjGKAodf8qbxqGLJqMFjS/ibpNM11NXrAgVYiT9szS/cm0gz5+fL
	 jpLlGF+AXQsfZU5YffTi2y1OPN0NDgswZuxb4lvowjOzsTgMWim+VJra0iy+ZQaYQT
	 D1JmNtC8xcOlMdfin6+8mrgjX7Wx3tfs1nazXzp89C28I9fB2Eix6WBDZ7dj50G554
	 rj8R6XkNRABig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7E1C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875096283.17880.12111596525939587832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28760c672d34bf9f877248cdeebf48732019ab302c5015af2ae2f3913053043a
Date: Tue, 18 Jun 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718750962
