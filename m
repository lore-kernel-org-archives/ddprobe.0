Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A56233941
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781141794; cv=none; b=bOLfmfWmVOjLRubXNz1kd7iVBad8GLpUuFz6eZ2X474Kk8O8e1E3A5q9aUh5uqUoHP66kQrtIs8WrMwlHOoa1bdgHNx2LRWEjS9W1d5SqyIwhvvWW71IHKzfWUP1vCqxNLPAaV1Oyl82HKHJAfCi+e5EU/hlnvh32JMboIuMZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781141794; c=relaxed/simple;
	bh=Zjouwc2cFeHEDkrMfNHW3oDoCv9715McgbXNj/zibkk=;
	h=To:Subject:From:Message-Id:Date; b=tg9Z5BiB683CKRUc59BMbWrM01OPhOfUtNqjg/nAb1GDo8Ncovh0W6AItjVySSQd5V33VWvnEOtHACzfo/OCM30CQytbvixW4Nyc29V1oLyuB3qESOAd3JwDmKp9KqDixi8L+3lwN0kpx6o+aGjH7Czr0elvZCZa9JKlirDAOsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqe02nHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqe02nHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D145DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781141793;
	bh=Zjouwc2cFeHEDkrMfNHW3oDoCv9715McgbXNj/zibkk=;
	h=To:Subject:From:Date:From;
	b=Uqe02nHuR06eplyT2gSddGTPa7IfHvBJ070d5WktuQKgIsHMSj4OcKeORovp/oGyz
	 1C+atpnUNQw1kojjWGlSGaP0WBPNh5e4mWTBoySKp0i8R9j+dtzengk9WSUDrNrVYT
	 i/e9FagQCKjqJ/gIL+pvTpTP3LDY3W2dy6ppjV3PyXaR6xYWVXRJMhJ+mbXBHMtCeT
	 jPtmcEehytrwx8mxJsWHKRZc3KixqN24hTjKnl58rKo+855bI3++lpf4wskVLnTfwZ
	 fnkRWf6RqvqSojynGjMHeXasxcw+iplCyhdzafUcq402ebwD6NuhGT0TWoe8aVBpkM
	 kT5++nJZJTo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D65CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114179371.30464.15553912590403404274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdd05bd4ae298a00425eb6de0a0e4bfd920cd70fc14bd2358465cd6f4f71ee0
Date: Thu, 11 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781141793
