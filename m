Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E37393DF4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755961194; cv=none; b=Pkf71tHOsQNxZc6Nxn7Raeey0/l9F4fJYX9K38DS87eHYvBVJrPcubU+gPTijoTmODwZbHYCQCoa/kU0sVK1o1cyI7DX3obV002XtxiJfqpEGP/OAATueZFDI3szPUS+fgik8abPMs0kcQQZZldH0LXbXzEL5GjoCq16tWIOgW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755961194; c=relaxed/simple;
	bh=Slr8cEurBZrdVYW8b2cY82f2zsKkq7YqbAMuX0a5nnQ=;
	h=To:Subject:From:Message-Id:Date; b=ZCbLRYrSs/OlKfxakRndUD2lJbOsmZ9PiHyOyz/bRJVNEggcAwiFih/fSohJ5oIZGipANlrABaQbXGYJwap7KvOMu6VB3RIb03zC8NNkq6yqhBChy5ouNeamJvzhq0sWD8ui3C6mv9iEg0lYXcIiw2oRnUwMx3NrOqPKwsc0Ytk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBylatfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBylatfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10AEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755961193;
	bh=Slr8cEurBZrdVYW8b2cY82f2zsKkq7YqbAMuX0a5nnQ=;
	h=To:Subject:From:Date:From;
	b=fBylatfBlwpH7MDSZvQHvCRZJQoQdq3buhij2e8soXhMeExEwLPhZLbR7Owi+5Fuf
	 uiI6q6z/qgLhvsKl8mVXTgvYziByePB//bIRXmsb0obQs+MkGb705ITV1sCkVTvLNQ
	 JI3goJMlvD4ArBVwtMcrgpxlFqaOw3qw/QSbcBMk84FR96kmGq3kgYfZY7QsPF6Cfy
	 xB7T0sC42EbewsuxyAxTBrMiw+M9Xf+N0ZwNo9RdeEQIZIOYER4uAQFg0YetY4sGvm
	 ILmTearu+mUpYvKaBjlI0+i2oMQz9EjmJtbi1YZlyeWvaaxKiZNEyzCLFskxQn+xpl
	 ImG+DZ3NXrq1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB39CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596119357.28434.6620882450195242674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28682dbf49cbab29b0df6cb17a3300a401ecac367852cae3cb6c2aa198479ab
Date: Sat, 23 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755961193
