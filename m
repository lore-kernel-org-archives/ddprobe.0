Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E52285CB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763566314; cv=none; b=QNibJPNdynYoYge9uPdzk5XKfbgtFE8hO4VkPs4nDq/QwFA5H93aDeXtfwTIEK9rRL3NnoEGrH/n6b0w8VztDlmMLhfplRhJN7C1P29OLxyRVcxS2dqb9NYvlcXshWugStJEWYURlOUDwa0HA8/NnaIUmrJaI4XCf4tZneskD0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763566314; c=relaxed/simple;
	bh=pjrfiQLZe4HF2vcy7ZP/IjS31Yi1f/OGdQ6FWZdX7jM=;
	h=To:Subject:From:Message-Id:Date; b=htLOyk/Zo1VgT/vTHzJDR2tcopc9iZCeDJKewUfmUNtZzleoNZiNUmZ6GF79BKJMyWbMhv/Zn3zsfQkAxR4qf4u/gzhvd/0akVX0k3HCuApEDI5CF9MoVvyCnt4GBq4Ah8V3gGFRgKI4BmXtzMIj2ZsoPu4spa46NuSuqZEHYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=us8YB5Kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="us8YB5Kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7456C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763566313;
	bh=pjrfiQLZe4HF2vcy7ZP/IjS31Yi1f/OGdQ6FWZdX7jM=;
	h=To:Subject:From:Date:From;
	b=us8YB5KdppKoNbyqCZBDUFu5EznSqu1lXDdg1OJJv+aZMRboqpXOR+kht+eacB0+h
	 R2xbRG1Qw2m/89aRTEhshjD3BWzeZPc4jjymWNruQ5MgYKcEL54Evt948l9UECwxkU
	 2TeXmZfvvsdzzLJvte58ytujdbQauDaLv3yojhizobm23U64y0rR/vfAWOj5uBaG/H
	 1JjECMCjm1JVmaL23jR2nMsgaSRoK0AXCjyRqxPbugEcwQzIo2OxMYOnS47fn5qucN
	 ezkF4AouWindkp3fAh7xuZYylHRpfeIWw3RXWAmjSPp4RR2DutdYcZhlq7OkFsXj+J
	 kuMs+7vCQplHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2CCF34DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356631358.19103.8495908694370727824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3aa97df0542443f79fe78edadd321c429001f068dfa49e87fba815c7b0465a
Date: Wed, 19 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763566313
