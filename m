Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB3F18C332
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769327034; cv=none; b=AYQ/31BJQfAluvNrJWCPgjXcyARqqTmwrXWppzC9U1gKsDLqDSUZuKCb80rtbEIKD5IL0CsgUQc5iMfX8dUSr1OuZlw4WDMS4L7rl+K9GmHqOD4sCwVEbJCcr2kRzGpgmQVNjcNa7Tt31Pna0v062oGlgrValH5FAm98UjRoquY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769327034; c=relaxed/simple;
	bh=F930Ys84J6rMJtfRRJ1CcQrMn6w2tKUo30ioFKcYdUo=;
	h=To:Subject:From:Message-Id:Date; b=aiAQjJmegB+JFBZz/93Dj/jI/J32+3I0Um9d4t4sbenSXwJPdHWlDtnvKVUvRsgadAacXQTEijEegIFnLCCFjz9+jdN8lwmeRmsnJbdIG5fJ5atSzZdvHX0ANj1v/fi3DCldnEi9/d5D7rWUmEzZ9aEQNDtfaIvaTK4KPliLwzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHxhsXOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHxhsXOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A693EC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769327033;
	bh=F930Ys84J6rMJtfRRJ1CcQrMn6w2tKUo30ioFKcYdUo=;
	h=To:Subject:From:Date:From;
	b=LHxhsXOJCWMN3WhWPcUlL1ODWx6Zl5WGJOyfVjs17cOI1zXgZPd/TPzFmVO9X/a23
	 laSJvNgtDLJ9NnaVlfeiwO7QX9j0QAN4iOT1HkwO/Z4+yFDXoRP1In8Rm8ZUVTJEs+
	 C6D/XnAkmr+nwZOJuMLRTAgHyb/RnqGV63UiAPwtf/Bn0JueiCLGUh6z99CRljOMKO
	 r145euMJB6+hL8mN9mII+htw9dxnW1i24lhD+PDJpVwzhDrWyM9xQKKDkYHEpNThjM
	 D0qMOB6xI5pJMzGmK4EpMOE+15LUL3xlQNWIf6bJ2l3caC2ELwQvytIGn6xZKNncdH
	 4L88OMst7tNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B72E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932703357.15533.16665154671394063989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efe2adb1c5d76e048de101bda3f8706d23e1a4ede4030ff3ea9aae19bfbf338
Date: Sun, 25 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769327033
