Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A96329C66
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777478254; cv=none; b=e5rviXka/t+doMeunZJ9VF89oPPnlbWeF7Oea1/CzGOWQo78hY89cuI3oaDKH9wyG0Owk/8Wwds7mnnC1B+nz2dek24qPlzoacRP/ki7Bly2LHAVKz8mo1xiYBkn17uWtTdZE5tBkQCz/ZkmoNLxJy7Qu8taik8f4033QGhQ/KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777478254; c=relaxed/simple;
	bh=6vfaiuiUYhJJlcXkAnkJ9XphkyAUvPEHCOgj2HIdYSk=;
	h=To:Subject:From:Message-Id:Date; b=DpW/IhuwhrfVENvT9LblLXSBI+u1gtAXcnhJu2cFCKhT2ZTCKoNE9lDiTdmmLma3mAy2EjNo0iJ4liClcJsTtJMb8SIc5WIsrNuubcckezdfpYq1rL1hWeFrYANQZ2wtx4lrfHQCK/8yhgTX8blV5lg04sqamBKSixlT8GjPozE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY9yTcoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY9yTcoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F96C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777478253;
	bh=6vfaiuiUYhJJlcXkAnkJ9XphkyAUvPEHCOgj2HIdYSk=;
	h=To:Subject:From:Date:From;
	b=sY9yTcoVU4YgTQaxOOWMPi0W/C76MAr5157KS7DWhEIHKtSm4xk5855Nm5h+mbX9t
	 XP1d9fTQQ/6rO5gCMZFkRN6RXsIjTbfJ7nq0tcrLdxONGqtsbGdt+FAg9YFbHFKSar
	 METKai26jDCoC0zLIzPwqCQ1JdUheM/Kicg7oq0LmPzq7INTxIvgznpddrahQL29BE
	 sdAN+iBxV7ZvNFedCFUpMTm5NkeIau7dpbMnP/Sd6sciw4CzY7ifiAlLjHl7XBflBd
	 u5DeQM67iczE1qBvnK9Jm7h35eI4z50pct+Clzzz4tk9olG+dWqzwGQvTCDhFrjOij
	 zcDmVUxtbM1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA165CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747825368.28633.10272671158530589622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f943d6df9ebadabaf26502081a9c8c0ca9172be0e3df092a06f0a601e4df1e
Date: Wed, 29 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777478253
