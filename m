Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2932E8E0A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755761994; cv=none; b=mOaQhYiqQaD1eLn9PnEA1oOETURZTgGCMHLIkAOekBcK2FROluRfuYIp78yY0ykz3ZMLQuzBz+oBivlKvs7512z0FviGkv36LGQ/M7yM12o9jQejTkw0VxCFBH5p5oLisL0Eg2clbbhIgCOviy1SxpBsuWeTwD3ifm7jZrCpAME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755761994; c=relaxed/simple;
	bh=qzGwLOIyVVBkE51Lab07wLcnLscEiieh1QO7mftb35w=;
	h=To:Subject:From:Message-Id:Date; b=fo34a4pmdHgpw7V8LKd6hYeD9dF8limcGUk5HfVYMWkU8VBhNarifOP46oiDzOFxxmLPwNVRWaE+YXbK1i0CdJZ3RmqK6PjTLTLFVEajYgVJapSnQdV0T7vnOspOQ9g4wWLHXnjZc0ivlNRCL9RwpF8atdvEKODjjmO5pTdreyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbiCCGM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbiCCGM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9936FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755761993;
	bh=qzGwLOIyVVBkE51Lab07wLcnLscEiieh1QO7mftb35w=;
	h=To:Subject:From:Date:From;
	b=FbiCCGM+SY7nsJVVQIFQDKVFoArA8zCjECxTePWLNaO4JaZdf5g6+v6m3EVeZGUSx
	 5XF0pSb6fJbTQYulyriNQgeZAmEcEmYg9u6ws5kXd536qdLaaKLUbmKAgVWYIaU4Y1
	 Z9x0sxcv1onKnrXUkeEUNeZxTjYHzMQmc44oU6LgOlY6Qh/RyUrcfhLXQNp1dOmRiQ
	 iKz23Mwk4HddVNToor322+nq4Kywk6R45o8FWqA9BYy2gq42WWYm4ckbs12n2zXm+I
	 R4aSkObXmDch0SIvSl76d/u0YGKDK90sytw81xpheVTkZBYoeBjf2mS7jkkN/ubpwa
	 qGHdQWAGBhiaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E220CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576199357.26918.15003538083762020624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b787993c0df8ef3c189906fa0c3f305802c28ebc520bea79a31ad10964894eeb
Date: Thu, 21 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755761993
