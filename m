Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286932517AA
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739394; cv=none; b=FqEw75yTUVtpiDyR6N3i19e4pin0q+XzEcOYCwEWzbYT1IdZlFk6w/Ertav3OZh+ZzUmNQoeSWxImvREgdZRB5HxLpdwyaDeTcMbgNNjQ4/PI1YXxcziBWr6Je5pl1HWovRQPgq9x3a2P5FOWxd44YDjUpUH9NpHcog83NSpfxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739394; c=relaxed/simple;
	bh=9kiY3Svuc9kaWfAN2NpOMhqoo239MZpENpRDefdeCpk=;
	h=To:Subject:From:Message-Id:Date; b=F8irklML/BsKHnx8O1mpSpdDnIMWEFE+MYFLaFvHkp4N/iGiRLsik6dij5+87wfouvcHnRVTp0HQM18iRwL8SssA9adZuryCwAFrxumsjBIa27dRfmiWHu3F+zOt0YQWQDC9t3H2whfHdboaXEQe9YUZMrK42UzA3IeT4ZB3Tm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOM1uLqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOM1uLqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3086C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759739393;
	bh=9kiY3Svuc9kaWfAN2NpOMhqoo239MZpENpRDefdeCpk=;
	h=To:Subject:From:Date:From;
	b=GOM1uLqACpXrn3quJ64Rkp+MLLdoxvcz69A4vVA2JG2j2SIePP7n+tcSYVFUYW4Hb
	 9GKPovW2RV5E/PHO08tLhQPuPrBNW0MfJIt2nhNqCoC1TGhFJIPxDEmUYGxB2Ob4eh
	 Uk/ITrAz1VZ7PzTHsD7CTJycjxVNux9QurBtD7aMjcpaabrPkBmLQya0TJBS0Wz6yT
	 Uxe1tmD4D8bHZpQbrlHEwsZLJzTpkMUNiCqptXOWiMufXGu6hPC4ba+Ff43YtPTexo
	 zVVBrOLGS3DmZ0JPgaZt7jNJZb5McuhbjHoGoxDal7LBJ56JOO/96xMUmj/hrPuZOy
	 SSlzNveLbOiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91030CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973939358.6306.6831989937035566592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fd3ce106d996a1265a611d0b35d1265d075fae6a6babaefc42dc7ab25f2549
Date: Mon, 06 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759739393
