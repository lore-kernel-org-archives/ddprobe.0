Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86227FD6D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781201794; cv=none; b=FPDkr1WyvTDuN74D9KAae2FyxnMVZuUYTi9y0TaHeigRARL2Gz5raCZbuq5ikVFi5t88pEV8JDF8MLWRHtJFRJfvqjHCHBcQP2J0PxKBmD7SjPYX4s9YblAzCnYTvc7mBqn5stvgGkYvh42WhIM4n3q+pgluwCcV7ik8BvMcUC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781201794; c=relaxed/simple;
	bh=Siq1a5ERx0jP/l+vB6+MFyC2XPEVoAP7FEW7aPNrcEw=;
	h=To:Subject:From:Message-Id:Date; b=hBiHP4LHtXgtvhDRf0DNm9jQNgovtekepZqVoLdjEQgJl5lUm0QVFgjqkvbFsO11VzzuZo1pPsbedgLx49zZ1inqcQIjCYMiqQGPHf5NFGapIJwFiHlDaiJa8C7RiJQ2UyYCzkaDllcpd9VLKlzZqPqZC2f3q8gqf/vXpLqsfiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIZOJr1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIZOJr1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781201793;
	bh=Siq1a5ERx0jP/l+vB6+MFyC2XPEVoAP7FEW7aPNrcEw=;
	h=To:Subject:From:Date:From;
	b=dIZOJr1Av+8Q36CeKv58JOMVhRYGaqhUbopXV8FTq4ABmFtEm+vm6eyR+sjEsGWAL
	 UQScWpL5l2Crgz+Ii3tNI8IfFIlB3CDnlMZPyc/vBlY89YkYY/SpHYzEHxQp+lBw5V
	 GniUcXPc1ep1sUuluql6jCEcvRcKoo8lzOs3kAntYZC/74jo/VIiX68/izO2OZ66rv
	 g1uMkYvnNoyOVWTJuh5/XRB5eB/UECOjAWoaVjqW9TL/qKvga/1MR6sNKqf8/orMpt
	 9Xwb+/umCfMVsoAlkwcYrZVyJ6dBilK4S7G7kFBgXs7aF9FolGhRijlbO9EJbhiPgg
	 b//Qe5MWHq1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2648CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120179371.15644.3755560027400355049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82a82ab3c1c3f9c67ba81e47667ec3b6e6e6e6458f5b0971c3d619d7e8020ec
Date: Thu, 11 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781201793
