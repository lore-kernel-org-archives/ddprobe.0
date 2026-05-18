Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A7E278156
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779070234; cv=none; b=rkz2VhXs+q6X79ltbCsR0pf5gprBzCizelWsPTWyiD898kKrirxO0zG5e/bnx+10Knh/rEcWipDNo1ATMNef36XCdKnJrp6PCvgLU30bOGePvqliC+T+WQynG3UieUbtEDS5EXl+0uqKSae7UNolKqW81Pozs3OcNDFMkImeoOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779070234; c=relaxed/simple;
	bh=yw+rFIZ93Ijj/wqZ7+E79G2gpvzdQKkt/FC3lADpsik=;
	h=To:Subject:From:Message-Id:Date; b=oOIDXmcCG6lnhSLyIwCPJUHoLxMEP7Hhe5fJLmDB4FaP1//ZM/Z9hNZ0OZ5ffOcfabrdimd5y+jR50NzaQvuGZZ7CP+F0FbFg1zLjwArjkrM8Ogi6hqkVfuwaTGqLfX/3Fl8AOwwlbkDB8eGH42fvna02o1yUiGZyX0wHIqRZBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg15QeCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg15QeCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0685C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779070233;
	bh=yw+rFIZ93Ijj/wqZ7+E79G2gpvzdQKkt/FC3lADpsik=;
	h=To:Subject:From:Date:From;
	b=Jg15QeCuOf8YPtJKkZflUsNpPbqWcxB6jZs5VLrGIQzwRnLxlbgt/45vkxWSB1WhN
	 IT07lkk2BiKFuooU/Tu3j+DTh6ShymL/NBCPp+1FRa+tuFr2+ijstVbWQ+E42veo4s
	 itphvpscJo4KylAqtHP+38U+El2sjZv5wUO9vPGzffU0IC60nJTodjKrXnx5SsPRAt
	 fDQiKzb1dDPIhHXXkiosR8WA/Qj61x+IGAPgCnns1b/PTKqXYfHfHjgqEqFP4B0v/1
	 sKVAd47W6nB7QAzEncYFPdxOC/1mtyqLeZOqlKGkgOdFzZ5cCLz0XN3+l2A+BwBEhE
	 /mJr42SpgmA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE060CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907023369.7179.16751682110669272698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703bc3d43ac9a5454776bcbdbe256c9dd43c9c3543c465b3509a1238139042e1
Date: Mon, 18 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779070233
