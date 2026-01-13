Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B6E18BC3D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768271634; cv=none; b=V6mVqmpeuYGZ1XGE03N0fPKl6AyHElRbhtih3bHQ8AnWr5G8cCo82IzGrfUK1QKHwv+zNbMa9aXR5CTkc7bChsB54QQ9Bx/WNwRM6Lnc2tm6Ie5/Tr6Uv+9SXWtNTslMlJ+dWsobo2rbQGg2bBPrjJe3MiYyV6fm4cUXwNwsrf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768271634; c=relaxed/simple;
	bh=hSFFF273pDRP4JZTI4RAB/1NxA2B9JYtQu4kFqukxBE=;
	h=To:Subject:From:Message-Id:Date; b=TLM4AmvZH20USr8wvhihfQuDmaYUOiK/kDCDhoMgYqEl69jJBDvFxUWELS4yxm0bFBDPCeC6FIZhkzxWryvx9q9dWPRfkzEWPUn/PTUFz9H6VtxrGZmTbxEzJRPtcP1+I5DXUNLrUjQhWHtExWFKUjh8RtUeLFoxGHWLNIlv5/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSZ6Gz7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSZ6Gz7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1587C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768271633;
	bh=hSFFF273pDRP4JZTI4RAB/1NxA2B9JYtQu4kFqukxBE=;
	h=To:Subject:From:Date:From;
	b=NSZ6Gz7x1gbo0nCAHA2d+yUHXlEsLR+FOVtEefpZM+jk3SEGDmeFXAPc99iazCdxn
	 KstweUPVEwAg9B0A/pRDXQXukkN5lgL6RIcDUsoNFmiXxEsDFXqkFyDw5h84whWZu0
	 JxbcRNYx03E9z0RiagNJws/2JTtc82+hZycp4OZx11WuFbiWg4g7Nxcyg4jYoTVs/z
	 7z3+kFGI7RKmUxy9J13UennsUP/098iMmw0okjft+24EFaKXG9nISSY/48IehmYt3X
	 1xjKdGgYcBUWS0qioHdi6iwk7aHeDoug01BICSuQcwF6sV+eru1EdlSWHKjmhAg56h
	 Db00Gusj6FjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F265CF45D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827163357.16764.4516503280857378331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0a18e97995ce7af4163f29fb1b15e315c5e441645cf3d896b875dfde04ea08
Date: Tue, 13 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768271633
