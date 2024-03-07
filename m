Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7C137C5F
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709843897; cv=none; b=t+N0y16zFKNFZLC/IsFwDfJet442DTyT6jj4okDgVgDjnj89S4FDoJd6moyEcwy8C+pdaY20lOw4WlfbpVHh43aragkDJ/5ogMTUiCTkgMIyxkRHzC5tyXzo5zaO4fiJ7KVSUJJwG/APmTZQ9Y1aF6WjgEzyQdmKrb709wze7cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709843897; c=relaxed/simple;
	bh=m1wNE69654eRwnsrMoub0vhYFd5fB3emkmOWpWdlB7g=;
	h=To:Subject:From:Message-Id:Date; b=AzjbkhwjTOA5NQ1BvTWjZhIO3AfpjJsmC6wD+ia7YBa4OyDvtrOEwwd9naXfdGTIqtHaLwdkZP839AAB+dgcEO3xR1XQofVVPfMVn9h0yMZojHJzxD+A6mz2pCMif76s3gluffmcunqSgyfyRiShiFUZm1pmYRu9QM4CnU8NTnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcbZQxEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcbZQxEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B1FBC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709843896;
	bh=m1wNE69654eRwnsrMoub0vhYFd5fB3emkmOWpWdlB7g=;
	h=To:Subject:From:Date:From;
	b=lcbZQxEpC6seC/ZmHCxAqTMIVOqkZDwXv4xj9KBcSGYWdJBxeZ2oF3tDyeEa2xX8/
	 GIHVgL7d8VFHvEt6h1QCDiAgooElKl+A+MVk8rWywc6J9rDOdfDyEjnKU226iWcdkg
	 kuREqKAPkgtqEIbj4EGZG04Q3wf2pebXQNUi5fYh0TQ9unnxitDnack7f8hsCVvBKP
	 +rw5fR7hGdP5KvWXC+JwAJpxFW3Res5iPAMZH5s7jpGOMlWhJ67cPyi8bHGnVEAwkr
	 GtL3lOug/LHA4Y7DSTEVgQvQQcLuQgKsFVe6AIoUBWhstJLIcrkdm8otQ28NEqH6al
	 2XJkGIllAa0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65069C54E4A
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170984389640.15766.10410240875880646707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9f20f9fb3b97cabcc0843eab159e8cdd6dba692597ee8220c739b6fea4f1e4
Date: Thu, 07 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709843896
