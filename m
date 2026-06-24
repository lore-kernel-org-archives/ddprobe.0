Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD626159E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782342454; cv=none; b=EFoNQDicOIFG2/pX1SYarVPGNBTMTToonGxfLc4DayWERWf1I1ZD3uAXVfH8ZHi5ldfnLbk9N5bz7PsGIT/7CLWOk48GiWvkRU+UDLmo/Y24aUfrU4r5yMQJ/xxwAand1NUkf7Di7f3637TzMe9SpMeSmR/rxicOn8CIWaqco6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782342454; c=relaxed/simple;
	bh=l8MPrf2nJLpaFKMHC5tr3gN9n3dpPXakDY6C06WWXUY=;
	h=To:Subject:From:Message-Id:Date; b=Rv1V1uWeUZavG/ffaiImPS87nJSYNF3pwZdXhJfIw7N/X9miMC2Jb2qebg2o4itILVt/wS+XfPGSKraACHtAna0GantiJ6VYbwEqqQVivxU6PsSxjYcy1D7x9q1QEWHc9wqGKbG3v5aTpdpCW7levEmEZO6AmpPZJVmoIWzIRAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzCAPJvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzCAPJvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC217C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782342453;
	bh=l8MPrf2nJLpaFKMHC5tr3gN9n3dpPXakDY6C06WWXUY=;
	h=To:Subject:From:Date:From;
	b=FzCAPJvxeXPxFqyQzQ/V+0EHRRzbAXqQwmWbVv97NSKNtarIY+x0dUebzas5aeP7f
	 wy2osPBbszRo7OTC7iIZTDcRttdBLe7+2FuRz9na7oI4+iYiFS927nUmvcWNk8FFJi
	 clkRd9AAfnyA3cBqsWIWbJgeQN02NdiRGYfnzIaJFdOjay3mCpPuWeP6OLigtWG7QV
	 IU43mDZPbo5nDP/jsT3YCEZ1CKuBvB5oabeP2mg331l07PzkPPjGSBXVjU8Qhw85eu
	 Nh5dSh+AL5w1WQ/3c/nTpHsvfF00JV75vsnVHFOjdiFsM/JBXf3crGj0uBCZXe9oHU
	 P74cYWckZSRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8FCCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234245370.23517.7119634605855435099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbfdd887d71eeba241abd40eecf5a47b2d5c48a5e6e336fa49025497453f3c6
Date: Wed, 24 Jun 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782342453
