Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327F3BB48
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762060794; cv=none; b=kIx8vpomV4yxmjZnTGaxnt8rstMvcFJKe4oDzGiFc3vg45kmcj1lazwJR+AA+HXYfs2U/xYlXnPUYiOy7IxM/vNjRZsaO2A1B3f/Uj5f/J18g3DRzGCLrAUeoDb3jx/KvggvxyRJqvS1/h5r8+gyGi6TKAy6Unk69lQlvcd9gso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762060794; c=relaxed/simple;
	bh=oEV5mFqX6rM0GsSFfpXotxSEGe0zvU738I/CtkboNjc=;
	h=To:Subject:From:Message-Id:Date; b=RkhwlMfWFriWHVrrAe0vni6e9RutOj7HabSwi+DceSGogvIG9bVqKqw0rJMcSBx6cKG7ObNilqqDZzHO4ZqcwrpK6TkPQ+bLaxk2V754+gRdZ6MfiexFXvWXv6Zenb/N29HCsxLzEVAQL2JuEecYV86PY+nAGuJd13ADJ2ErkiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjmQNK2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjmQNK2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE180C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762060793;
	bh=oEV5mFqX6rM0GsSFfpXotxSEGe0zvU738I/CtkboNjc=;
	h=To:Subject:From:Date:From;
	b=TjmQNK2iffEmV2n2duMSW+9TX/G+rPagpUdyyyfb9HV2/1DnU1PeBcUC9cMyxrD5K
	 GutpJUMh7Frv6tISbD0Idtul2HaMQeRQFXZKtbtEobcuo7wtlATI0ey5ko8Ii9m4mr
	 l6SoHTx1L3BMjuDDo2MLUnQcLzCJuhZxBGHuvaokfuwXvROK/oVDhZllRJSDBWmuVr
	 qXN1W/oSRlMp6PxdAxj1/vkDJwUa6NjiMUT527P5CtAuonvoqjD5rsZCiufhbBXaPR
	 qOSgExL53wzerBkqXA24Yn259XgIIGR7NszYC+z9IBRp2PLjqntkjX7c7+rDvBna+p
	 fz9c6OdW1k2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A18CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206079360.1927.1941803685062523174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc69763799556ccf725ed758a0e894cfad4710a7d80e68ca9f1a8e7aae3ddb7
Date: Sun, 02 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762060793
