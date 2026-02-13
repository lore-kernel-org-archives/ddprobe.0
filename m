Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700C26299
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770946494; cv=none; b=ECRFAqbJz/VHpLpGwizNAwTAva5MpThvyEKQaHuiFd/WxbrZ0dGhgXvT6Ntr27CO9mtkMLwMZDFM5uT3D2ABUto9W5aazqZ9CFt5msyHh05rLX9jaPFXLpjFzIk6+a2ZzPwQ/mZHo3bfbEmrL5qWy4iFNNCHgBxBVMPe6OcYJWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770946494; c=relaxed/simple;
	bh=zf72jgXEQgi/DHWItD0Ugw2zz9Awz1zv56FQjEyh90U=;
	h=To:Subject:From:Message-Id:Date; b=PgHziBJgdxHizEvjw8WATcCG+ZD7EAdmQbe0LdxDHtPwkW7zRqmtjAIvv7H4W90NP3HFoFtQD2nuSNWm/bEheDyDAeALNa1v9BMG9/J452FLtL5q5dRj3S2yLLRCDeXFqN+uNF0JI8taM3G8kq0RXkNO4mqa9NSI5LLvwh8fqso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx1Me75I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx1Me75I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770946493;
	bh=zf72jgXEQgi/DHWItD0Ugw2zz9Awz1zv56FQjEyh90U=;
	h=To:Subject:From:Date:From;
	b=Bx1Me75I6j8E3GSn9d9wBPymbWej7V5iGDpgExCcDVIMWnvksWUn5gBXpBIsyjO7I
	 Vgwv/YO56BmFYCSWs8/mO0ihKLDCkRfWAW5gQ7VtYTqSluvn9/pPepeaLv9kQyZSPH
	 168Aqn8oUoG4ahi5Hr7WyTact28byIIfGeQmH1n+H7b665xe7nWIZE8CCWcSljn4Fi
	 3xOjxLqDUcZ78sqhcSkiPneo1tRwZNqX77N6Rf2N3v7eWrGMOVKnpTFScRkOcVkg4y
	 cJeER9wE8iUdgPouGdzcmrnpuh9XjJL5w93gHPTNzPSwR351crXfzm2oN7qVD00kuY
	 u9RElccZXQx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94221EEA853
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094649359.6472.16512691748096025754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af025e25a30be62500ba7c47a0f66641ec0ad5047d0c42e78a2902ef36523aaf
Date: Fri, 13 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770946493
