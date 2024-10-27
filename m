Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79C728399
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730024153; cv=none; b=M2clLzGsUa4HnAiZtnGHKwiw+p9ItCEsm+RAEuwkwp/iWEjcmcA2z1zhs9OToa86dXgxbDNu/Idx3IhCsRpvzzSQehv0ZVzln7ORdDkE3Ru5Pi6wdiIXEAjhevPhnj0mcK9r94fpCB045OdETBOugATGka+F4ZRk8/Ng8OwFyhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730024153; c=relaxed/simple;
	bh=zIwGKPLQSdq5t9pDc/GuSUVPbBIKILeyEsMR5zHGd3I=;
	h=To:Subject:From:Message-Id:Date; b=LhfHU72MVpaNZ8itmPhqNYoKbDAHQK09z08I7M3lCcO7hGeLMhIAHRBf63XvgzpQK2rBPbt2/lRkP87tlOHJUaG7gYNZ82y2T+nsnN/SS6/nixCRVHNKYw5aPbXq56YJknAi1KUiA3SHG1MVUIm6fzvNX8Y7aH7qf3r5pcmn2G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmmwWBcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmmwWBcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18FDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730024153;
	bh=zIwGKPLQSdq5t9pDc/GuSUVPbBIKILeyEsMR5zHGd3I=;
	h=To:Subject:From:Date:From;
	b=rmmwWBcGnaGMsgg4qysRIp03+YLnhLyqifzmhTV8ChkXp2OCuBJI7puq9mCOLVV26
	 SXx7Leb1XZZeNx3zuYeogZm+nuIFyLkIBzGP4/wVHY4ahuR6q3ucm1fZSP1Bm5vMU0
	 bIfiadXPxwYeH47rYeopj9LYVapDu8GvAyf6FC8+t63MQu0x0uk5eCSClsbABMdn8r
	 +rUiQ5/bEplrmpF3/dNzfn5kYzJyDzBlmyrain0WCzaSn0iuaHTlX6Y33fe2RDlUXv
	 qd/pD58/dpOxNQM62JaYPeE2XmMf2KuETv+ihJ6GM1152z6A8ZeXHfxEd4W9JwEF0o
	 /Y8bcgA/HGnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E8D10C16
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002415361.18964.7398208374578089857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8928693bd098e10e3846f1086484be2b905c34a01aa82e77499b5257a74d4d8a
Date: Sun, 27 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730024153
