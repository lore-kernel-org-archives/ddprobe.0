Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132DF37206B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786656636; cv=none; b=mqVJxbXhYlt/vr+gJaJ+RU9lNGUOvrLkZwWENwAwRujNxZ2PdRprs5eVVy6mXp7/o7VJrgc4B+fKmCj3E9SgN9SbvyPMXbKlAFTznANt9sMSrHdsJ9JnmFS3CIOModCE1O1FhK90aRps2gBkMAPkQLTY3/eDiVo7rOpMqyG9bAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786656636; c=relaxed/simple;
	bh=bH8G46ycTX8mVQjwpWzWPs+JzxztcPY0sMrM+8p9lBY=;
	h=To:Subject:From:Message-Id:Date; b=YitfIOyiOhSMWIHxEVhS3/aQ4Qsxw4/8VTIFueTFAkTsnCC21vqsHVxXdoei5iF29OwVn1C9nh03xLK0RRuAi7JyN3uQHQmDBha5qfxXFUN7NTTbK7vvZX7qvG+zTTere/wKzZc9npauOQCHM+wdg3k32uNbpw+fJqNEGHo86Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUi3kRbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUi3kRbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96EBC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786656633;
	bh=bH8G46ycTX8mVQjwpWzWPs+JzxztcPY0sMrM+8p9lBY=;
	h=To:Subject:From:Date:From;
	b=TUi3kRbYMpAjadYWT+uXuUhe0nc3hlat5T5ilYDMvKe2m2DeiBuL5pK785mizYk6L
	 qcEGi1UYQ6JyI7/EFO3UvfEvpGSuzzopDu/pOKJTAOMHRzim7IohAIl5I3/MILBP3b
	 aX6cCdDAU+hUxHt+0zPSkp0viBFEi4jCTSEgJWsWnKzrBdijowX7o/eHGDILnExwD2
	 bv0qn+HdGwkxZiBBGWtpx0kjUF9c9DRiEh1/ZO2KDrH0jg1qR9qCc+uhR8ngHYkCNC
	 qIDK1dWjEwzZOUB1xfPbVAOy+GN0xXgUzRR2pW5I3RuLuormF/Bc+3XjHY6Hr7C8ft
	 7Y5LUILTnBCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A2C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665663368.6441.8045703993354846157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0323e85259ea6f963dd4d2fae1783c479432b0b6c97a6e2f1d90173775293c57
Date: Thu, 13 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786656633
